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
import os, shutil
from datetime import date
from ariane_reltreelib.dao import modelAndServices
from ariane_relsrv.server.config import Config
# from ariane_relsrv.server.__main__ import ariane, project_path
from ariane_relsrv.server.releaseTools import ReleaseTools, InitReleaseTools, DatabaseManager
import logging

relmgr_path = __file__
relmgr_path = relmgr_path[:-len("/tests/relmgr_ui_ut.py")]
project_path = relmgr_path[:-len("/ariane.community.relmgr")]
config_path = "/etc/ariane_relmgr/confsrv.json"
RELMGR_CONFIG = Config()
RELMGR_CONFIG.parse(config_path)
# Init variables:
ariane = modelAndServices.DeliveryTree({"login": RELMGR_CONFIG.neo4j_login,
                                       "password": RELMGR_CONFIG.neo4j_password,
                                       "host": RELMGR_CONFIG.neo4j_host,
                                       "port": RELMGR_CONFIG.neo4j_port,
                                       "type": "neo4j"})
Config.setup_logging(RELMGR_CONFIG.log_file)
LOGGER = logging.getLogger(__name__)
myglobals = {"conf": RELMGR_CONFIG, "delivery_tree": ariane, "logger": LOGGER, "project_path": project_path,
             "relmgr_path": relmgr_path}
InitReleaseTools.set_globals(myglobals)


class TestREST(unittest.TestCase):

    def import_all_cypher(self):
        ariane.delete_all()
        os.system("/home/ikito/ECHINOPSII/srenia/neo4j-community-2.2.6/bin/neo4j-shell -file "
                  "/home/ikito/ECHINOPSII/srenia/ariane.community.relmgr/bootstrap/dependency_db/all.cypher")

    def test_export_new_distrib(self):
        todaydate = date.today().strftime("%d%m%y")
        path = os.path.join(project_path, "ariane.community.relmgr", "bootstrap", "dependency_db")
        backp = os.getcwd()
        if os.path.exists(path):
            os.chdir(path)
            fname = "all_"+todaydate+".cypher"
            if os.path.isfile(fname):
                same_files = []
                for (dp, dn, fn) in os.walk("."):
                    same_files = [f for f in fn if todaydate in f]
                    same_files = sorted(same_files, reverse=True)
                    break
                if len(same_files) == 1:
                    fname = same_files[0].split('.')
                    fname = fname[0] + '_1.cypher'
                else:
                    tmp = same_files[0].split('_')
                    tmp = tmp[-1].split('.')
                    tmp = str(int(tmp[0])+1)
                    fname = "all_"+todaydate+"_"+tmp+".cypher"
            shutil.copy("all.cypher", fname)
            os.system("/home/ikito/ECHINOPSII/srenia/neo4j-community-2.2.6/bin/neo4j-shell -c dump > "
                  "/home/ikito/ECHINOPSII/srenia/ariane.community.relmgr/bootstrap/dependency_db/all.cypher")
            os.chdir(backp)

    def test_checkout_files(self):
        version = "0.7.0"
        mode = "tags"
        r = requests.post("http://localhost:5000/rest/checkout", params={"version": version, "mode": mode})
        print(r.status_code, r.reason, r.text)

    def test_tag_clean_cmd(self):
        tagANDmaster = True
        mcore = ["directory", "mapping", "portal", "injector", "idm"]
        mods = ["installer", "environment"]
        mlist = ["directory", "mapping", "portal", "injector", "idm"]
        mlist.extend(mods)
        for m in mlist:
            typ = ""
            if m in mcore:
                typ = "core"
            mod = modelAndServices.Component(m, "0.7.1", typ)
            versions = ["0.7.1", "0.4.3"] #, "0.7.1", "0.7.2", "0.7.3"]
            path = os.path.join(project_path, mod.get_directory_name())
            if not os.path.exists(path):
                return
            for v in versions:
                mod.version = v
                if subprocess.call("git tag -d " + mod.version, shell=True, cwd=path) == 0:
                    if subprocess.call("git push origin :refs/tags/" + mod.version, shell=True, cwd=path) == 0:
                        subprocess.call("git reset --hard HEAD~1", shell=True, cwd=path)
                        subprocess.call("git push --force origin master", shell=True, cwd=path)
            if tagANDmaster:
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
        for m in d.list_component:
            m.git_repos = "https://stash.echinopsii.net/scm/~srenia/"
            m.save()

    def test_show_tags(self):
        dist = ariane.distribution_service.get_unique({"version": "0.7.1"})
        dpath = ReleaseTools.get_distrib_path(dist)
        tags = subprocess.check_output("git tag", shell=True, cwd=os.path.join(project_path, dpath))
        tags = tags.decode()
        print("*** List of tags: ***")
        print("distrib: " + tags.replace("\n", ", "))

        mylist = ariane.component_service.get_all(dist)
        mylist.extend(ariane.plugin_service.get_all(dist))
        for m in mylist:
            tags = subprocess.check_output("git tag", shell=True, cwd=os.path.join(project_path, m.get_directory_name()))
            tags = tags.decode()
            print("component/plugin: " + m.name + " " + tags.replace("\n", ", "))

    def test_create_dev_distrib(self):
        mdist = ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
        if not isinstance(mdist, modelAndServices.Distribution):
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
        p = modelAndServices.Plugin("procos", "0.1.0")
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
        p = modelAndServices.Plugin("procos", "0.1.1-b01")
        d2.add_plugin(p)
        d2.save()

    def test_update_components(self):
        dist = ariane.distribution_service.get_dev_distrib()
        components = ariane.component_service.get_all(dist)
        version1 = "0.7.2"
        version2 = "0.4.2"
        version3 = "0.1.0"
        mod_dict = {"directory": version1, "mapping": version1, "portal": version1, "injector": version1,
                    "installer": version1, "environment": version1, "idm": version2, "messaging": version3}
        for m in components:
            m.version = mod_dict[m.name]
            m.save()
