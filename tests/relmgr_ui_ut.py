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

class TestREST(unittest.TestCase):

    def test_checkout_files(self):
        version = "0.7.0"
        mode = "tags"
        r = requests.post("http://localhost:5000/rest/checkout", params={"version": version, "mode": mode})
        print(r.status_code, r.reason, r.text)

    def test_tag_clean_cmd(self):
        mcore = ["directory", "mapping", "portal", "injector"]
        mods = ["installer", "distrib", "environment"]
        for m in mods:
            mod = ariane_delivery.Module(m, "0.7.0", "")
            versions = ["0.7.0"] #, "0.7.1", "0.7.2", "0.7.3"]
            path = os.path.join(project_path, mod.get_directory_name())
            if not os.path.exists(path):
                return
            for v in versions:
                mod.version = v
                if subprocess.call("git tag -d " + mod.version, shell=True, cwd=path) == 0:
                    if subprocess.call("git push origin :refs/tags/" + mod.version, shell=True, cwd=path) == 0:
                        subprocess.call("git reset --hard HEAD~1", shell=True, cwd=path)

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

    def test_env(self):
        os.system("env")