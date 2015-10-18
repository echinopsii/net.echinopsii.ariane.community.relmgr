# Ariane Release Manager
# REST server test
#
# Copyright (C) 2015 echinopsii
# Author: Stan Renia
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

__author__ = 'stanrenia'

import unittest
import requests
import subprocess
import os
from ariane_reltreelib.dao import ariane_delivery
from ariane_relsrv.server.restful import project_path
from ariane_relsrv.server.restful import ariane, ReleaseTools

class TestREST(unittest.TestCase):

    def test_import_all_cypher(self):
        ariane.delete_all()
        os.system("/home/ikito/ECHINOPSII/srenia/neo4j-community-2.2.6/bin/neo4j-shell -file "
                  "/home/ikito/ECHINOPSII/srenia/ariane.community.relmgr/bootstrap/dependency_db/all.cypher")

    def test_export_new_distrib(self):
        os.system("/home/ikito/ECHINOPSII/srenia/neo4j-community-2.2.6/bin/neo4j-shell -c dump > "
                  "/home/ikito/ECHINOPSII/srenia/ariane.community.relmgr/bootstrap/dependency_db/all.cypher")

    def test_checkout_files(self):
        version = "0.7.0"
        mode = "tags"
        r = requests.post("http://localhost:5000/rest/checkout", params={"version": version, "mode": mode})
        print(r.status_code, r.reason, r.text)

    def test_tag_clean_cmd(self):
        mcore = ["directory", "mapping", "portal", "injector"]
        mods = ["installer", "environment"]
        mlist = ["directory", "mapping", "portal", "injector"]
        mlist.extend(mods)
        for m in mlist:
            typ = ""
            if m in mcore:
                typ = "core"
            mod = ariane_delivery.Module(m, "0.7.0", typ)
            versions = ["0.7.0"] #, "0.7.1", "0.7.2", "0.7.3"]
            path = os.path.join(project_path, mod.get_directory_name())
            if not os.path.exists(path):
                return
            for v in versions:
                mod.version = v
                if subprocess.call("git tag -d " + mod.version, shell=True, cwd=path) == 0:
                    if subprocess.call("git push origin :refs/tags/" + mod.version, shell=True, cwd=path) == 0:
                        subprocess.call("git reset --hard HEAD~1", shell=True, cwd=path)
                        subprocess.call("git push --force origin master", shell=True, cwd=path)

    def test_maven_build(self):
        # subprocess.Popen("./distribManager.py distpkgr " + "0.7.0.SNAPSHOT" + " "
        #                  "> "+project_path+"/ariane.community.relmgr/ariane_relsrv/server/"+"infobuildDistpkgr.txt", shell=True,
        #                  cwd=project_path + "/ariane.community.distrib")
        file = "infobuildDistpkgr.txt"
        filepath = project_path+"/ariane.community.relmgr/ariane_relsrv/server/"+file
        if os.path.isfile(filepath):
            os.remove(filepath)
        os.system("touch " + filepath)
        mod_path = project_path + "/ariane.community.core.mapping"
        backpath = os.getcwd()
        if os.path.exists(mod_path):
            os.chdir(mod_path)
            os.system("mvn clean install > " + filepath)
            # subprocess.Popen("mvn clean install "
              #                "> "+ filepath, shell=True)
            os.chdir(backpath)

    def test_update_gitrepos_url(self):
        d = ariane.distribution_service.get_dev_distrib()
        ariane.distribution_service.update_arianenode_lists(d)
        for m in d.list_module:
            m.git_repos = "https://stash.echinopsii.net/scm/~srenia/"
            m.save()

    def test_show_tags(self):
        dist = ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
        dpath = ReleaseTools.get_distrib_path(dist)
        tags = subprocess.check_output("git tag", shell=True, cwd=os.path.join(project_path, dpath))
        tags = tags.decode()
        print("*** List of tags: ***")
        print("distrib: " + tags.replace("\n", ", "))

        mylist = ariane.module_service.get_all(dist)
        mylist.extend(ariane.plugin_service.get_all(dist))
        for m in mylist:
            tags = subprocess.check_output("git tag", shell=True, cwd=os.path.join(project_path, m.get_directory_name()))
            tags = tags.decode()
            print("module/plugin: " + m.name + " " + tags.replace("\n", ", "))

    def test_create_dev_distrib(self):
        mdist = ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
        if not isinstance(mdist, ariane_delivery.Distribution):
            print("ERROR: mdist is not distribution")
            return
        ReleaseTools.create_distrib_copy(mdist)
        print("copy created")

    def test_remove_genuine_copy(self):
        ReleaseTools.remove_genuine_distrib()

    def test_modif_plugins_after_release(self):
        d = ariane.distribution_service.get_unique({"version": "0.7.0"})
        ariane.distribution_service.update_arianenode_lists(d)
        rabit = None
        for pl in d.list_plugin:
            if pl["Plugin"].name == "rabbitmq":
                rabit = pl["Plugin"]
        rabit.version = "0.2.4"
        rabit.save()
        p = ariane_delivery.Plugin("procos", "0.1.0")
        d.add_plugin(p)
        d.save()

        d2 = ariane.distribution_service.get_unique({"version": "0.7.1-SNAPSHOT"})
        ariane.distribution_service.update_arianenode_lists(d2)
        rabit2 = None
        for pl in d2.list_plugin:
            if pl["Plugin"].name == "rabbitmq":
                rabit2 = pl["Plugin"]
        rabit2.version = "0.2.5-SNAPSHOT"
        rabit2.save()
        p = ariane_delivery.Plugin("procos", "0.1.1-b01")
        d2.add_plugin(p)
        d2.save()
