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

import unittest
import json
import os
import requests

from tests.create_db_from_file import create_db_file
from ariane_reltreelib.dao import modelAndServices
from ariane_relsrv.server.config import Config
from ariane_relsrv.server import restful
import logging

__author__ = 'stanrenia'

relmgr_path = __file__
relmgr_path = relmgr_path[:-len("/tests/call_rest_ut.py")]
project_path = relmgr_path[:-len("/ariane.community.relmgr")]


class TestREST(unittest.TestCase):

    # @classmethod
    # def setUpClass(cls):
    #     config_path = "/etc/ariane_relmgr/confsrv.json"
    #     RELMGR_CONFIG = Config()
    #     RELMGR_CONFIG.parse(config_path)
    #     # Init variables:
    #     ariane = ariane_delivery.DeliveryTree({"login": RELMGR_CONFIG.neo4j_login,
    #                                                 "password": RELMGR_CONFIG.neo4j_password,
    #                                                 "host": RELMGR_CONFIG.neo4j_host,
    #                                                 "port": RELMGR_CONFIG.neo4j_port,
    #                                                 "type": "neo4j"})
    #
    #     Config.setup_logging()
    #     LOGGER = logging.getLogger(__name__)
    #     myglobals = {"conf": RELMGR_CONFIG, "delivery_tree": ariane, "logger": LOGGER,
    #                  "project_path": project_path, "relmgr_path": relmgr_path}
    #     restful.start_relmgr(myglobals)

    def setUp(self):
        config_path = "/etc/ariane_relmgr/confsrv.json"
        RELMGR_CONFIG = Config()
        RELMGR_CONFIG.parse(config_path)
        # Init variables:
        ariane = modelAndServices.DeliveryTree({"login": RELMGR_CONFIG.neo4j_login,
                                                    "password": RELMGR_CONFIG.neo4j_password,
                                                    "host": RELMGR_CONFIG.neo4j_host,
                                                    "port": RELMGR_CONFIG.neo4j_port,
                                                    "type": "neo4j"})
        modelAndServices.DeliveryTree.graph_dao.delete_all()
        # create_db_file('/Users/stanrenia/py_neo4j_db/tests/inputs/create_0.6.4-SNAPSHOT.txt')
        create_db_file(os.path.join(relmgr_path, "tests/inputs/create_0.6.3.txt"))

    def test_post_distrib(self):
        count = modelAndServices.DeliveryTree.graph_dao.count("nID")
        r = requests.post("http://localhost:5000/rest/distrib", params={"version": "0.6.8"})
        print(r.status_code, r.reason, r.text)
        self.assertEqual(r.status_code, 400)
        r = requests.post("http://localhost:5000/rest/distrib", params={"name": "community", "version": "0.6.5"})
        print(r.status_code, r.reason, 'data: ', r.json())
        countafter = modelAndServices.DeliveryTree.graph_dao.count("nID")
        self.assertEqual(count+1, countafter)
        dist = r.json()
        dist = dist['distrib']
        self.assertEqual(dist["name"], "community")
        self.assertEqual(dist["version"], "0.6.5")
        r = requests.post("http://localhost:5000/rest/distrib", params={"name": "com", "version": "nomatch", "nID": 20})
        print(r.status_code, r.reason, r.text)
        self.assertEqual(r.status_code, 400)
        r = requests.post("http://localhost:5000/rest/distrib", params={"name": "community", "version": "0.6.5", "nID": dist["nID"]})
        print(r.status_code, r.reason, r.text)
        self.assertEqual(r.status_code, 200)
        r = requests.post("http://localhost:5000/rest/distrib", params={"name": "com", "version": "0.6.8", "nID": dist["nID"]})
        print(r.status_code, r.reason, r.json())
        self.assertEqual(r.status_code, 200)
        d = modelAndServices.DeliveryTree.distribution_service.get_unique({"version": "0.6.8"})
        self.assertIsInstance(d, modelAndServices.Distribution)
        dist['name'] = "yolo"
        r = requests.post("http://localhost:5000/rest/distrib", params=dist)
        print(r.status_code, r.reason, r.json())
        dist = r.json()
        dist = dist['distrib']
        self.assertEqual(dist["name"], "yolo")

    def test_get_distrib(self):
        distrib = modelAndServices.DeliveryTree.distribution_service.get_unique({"version": "0.6.3"})
        r = requests.get("http://localhost:5000/rest/distrib/0.6.3")
        print(r.json())
        mr = r.json()
        dist = distrib.from_json(r.json())
        self.assertEqual(dist, distrib)
        r = requests.get("http://localhost:5000/rest/distrib/"+str(dist.id))
        print(r.json())
        self.assertEqual(dist, distrib)
        r = requests.get("http://localhost:5000/rest/distrib/0.6.3/community")
        self.assertEqual(r.status_code, 404)
        r = requests.get("http://localhost:5000/rest/distrib/blabla")
        self.assertEqual(r.status_code, 404)
        r = requests.get("http://localhost:5000/rest/distrib")
        print(r.json())

    def test_get_component(self):
        component = modelAndServices.Component("", "", "")
        directory = modelAndServices.DeliveryTree.component_service.get_unique({"name": 'directory'})
        r = requests.get("http://localhost:5000/rest/component", params={"version": "0.6.3"})
        print(r.json())
        r = requests.get('http://localhost:5000/rest/component/directory/0.6.3')
        mr = r.json()
        mod = component.from_json(r.json())
        self.assertEqual(directory, mod)
        r = requests.get("http://localhost:5000/rest/component/"+str(mod.id))
        print(r.json())
        mod = component.from_json(r.json())
        self.assertEqual(directory, mod)
        r = requests.get("http://localhost:5000/rest/component/idm/0.6.4")
        print(r.json())
        self.assertEqual(r.status_code, 400)
        r = requests.get("http://localhost:5000/rest/component/mama/0.6.3")
        print(r.json())
        self.assertEqual(r.status_code, 400)

    def test_post_component(self):
        component = modelAndServices.Component("", "", "")
        count = modelAndServices.DeliveryTree.graph_dao.count("nID")
        mymod = modelAndServices.Component("tango", "0.6.0", "core")
        mymod =mymod.get_properties()
        mymod["dist_version"] = "0.6.3"
        r = requests.post("http://localhost:5000/rest/component", params=mymod)
        # print(r.status_code, r.reason, r.json())
        count_after = modelAndServices.DeliveryTree.graph_dao.count("nID")
        self.assertEqual(count+1, count_after)
        tango = modelAndServices.DeliveryTree.component_service.get_unique({"name": 'tango'})
        mod_res = component.from_json(r.json())
        self.assertEqual(tango, mod_res)

        mod2 = modelAndServices.DeliveryTree.component_service.get_unique({"name": 'injector', "version": "0.6.3"})
        mod2.version = "0.6.0"
        r = requests.post("http://localhost:5000/rest/component", params={"component": json.dumps(mod2.get_properties())})
        print(r.status_code, r.reason, r.json())
        self.assertEqual(mod2, component.from_json(r.json()))
        # mod2 = ariane_delivery.DeliveryTree.component_service.get_unique({"name": "injector", "version": "0.6.0"})
        # self.assertEqual(mod2, component.from_json(r.json()))
        r = requests.post("http://localhost:5000/rest/component", params={"name": "Kazuwa", "nID": mod_res.id})
        print(r.status_code, r.reason, r.json())
        mod_res = component.from_json(r.json())
        # mod2 = ariane_delivery.DeliveryTree.component_service.get_unique({"name": 'Kazuwa'})
        self.assertEqual(mod_res.name, "Kazuwa")
        mod_res.version = "0.6.1"
        mod_res.order = 19
        r = requests.post("http://localhost:5000/rest/component", params=mod_res.get_properties())
        print(r.status_code, r.reason, r.json())
        self.assertEqual(mod_res, component.from_json(r.json()))
        # mod2 = ariane_delivery.DeliveryTree.component_service.get_unique({"name": 'Kazuwa', "version": "0.6.1"})

    def test_get_plugin(self):
        plug_model = modelAndServices.Plugin("model", "model")
        r = requests.get("http://localhost:5000/rest/plugin", params={"version": "0.6.3"})
        print(r.status_code, r.reason, r.json())
        plist = r.json()
        self.assertIsInstance(plist["plugins"], list)
        r = requests.get('http://localhost:5000/rest/plugin/rabbitmq/0.2.3')
        print(r.status_code, r.reason, r.json())
        plug = plug_model.from_json(r.json())
        self.assertIsInstance(plug, modelAndServices.Plugin)
        self.assertEqual(plug.version, "0.2.3")
        r = requests.get("http://localhost:5000/rest/plugin/"+str(plug.id))
        print(r.status_code, r.reason, r.json())
        plug2 = plug_model.from_json(r.json())
        self.assertEqual(plug, plug2)
        r = requests.get("http://localhost:5000/rest/plugin/0.6.4/rabbitmq")
        print(r.status_code, r.reason, r.json())
        self.assertEqual(r.status_code, 400)
        r = requests.get("http://localhost:5000/rest/plugin/0.2.3/mama")
        print(r.status_code, r.reason, r.json())
        self.assertEqual(r.status_code, 400)

    def test_post_plugin(self):
        myplug = modelAndServices.Plugin("Plying", "0.3.0")
        myplug =myplug.get_properties()
        myplug["dist_version"] = "0.6.3"
        count = modelAndServices.DeliveryTree.graph_dao.count("nID")
        r = requests.post("http://localhost:5000/rest/plugin", params=myplug)
        print(r.status_code, r.reason, r.json())
        count_after = modelAndServices.DeliveryTree.graph_dao.count("nID")
        self.assertEqual(count+1, count_after)
        plug_res = r.json()
        plug2 = modelAndServices.DeliveryTree.plugin_service.get_unique({"name": 'rabbitmq'})
        plug2.version = "0.4.0"
        r = requests.post("http://localhost:5000/rest/plugin", params={"plugin": json.dumps(plug2.get_properties())})
        print(r.status_code, r.reason, 'data: ', r.json())
        rplug = plug2.from_json(r.json())
        self.assertIsInstance(rplug, modelAndServices.Plugin)
        self.assertEqual(plug2, rplug)
        plug_res = plug_res["plugin"]
        r = requests.post("http://localhost:5000/rest/plugin", params={"name": "Bouyaka", "nID": plug_res["nID"]})
        print(r.status_code, r.reason, r.json())
        plug_res = r.json()
        plug_res = plug_res["plugin"]
        self.assertEqual(plug_res["name"], "Bouyaka")
        plug2 = modelAndServices.DeliveryTree.plugin_service.find({"name": "Plying"})
        self.assertIsNone(plug2)
        plug_res["version"] = "0.0.7"
        r = requests.post("http://localhost:5000/rest/plugin", params=plug_res)
        print(r.status_code, r.reason, r.json())
        rplug = rplug.from_json(r.json())
        self.assertIsInstance(rplug, modelAndServices.Plugin)
        self.assertEqual(rplug.version, "0.0.7")

    def test_get_module(self):
        mod_model = modelAndServices.Module("model", "model")
        parent = modelAndServices.DeliveryTree.component_service.get_unique({"name": 'directory'})
        r = requests.get("http://localhost:5000/rest/module", params={"parent": json.dumps(parent.get_properties())})
        print(r.status_code, r.reason, r.json())
        sublist = r.json()
        sublist = sublist["modules"]
        dirsubs = modelAndServices.DeliveryTree.module_service.get_all(parent)
        cpt = 0
        for sub in sublist:
            rsub = mod_model.create_subclass(mod_model.node_type, sub)
            self.assertIsInstance(rsub, modelAndServices.Module)
            self.assertEqual(len(sublist), len(dirsubs))
            for ds in dirsubs:
                if rsub == ds:
                    cpt += 1
        self.assertEqual(cpt, len(sublist))
        r = requests.get("http://localhost:5000/rest/module", params={"parent": json.dumps({"name": 'idm'})})
        print(r.status_code, r.reason, r.json())
        sublist = r.json()
        sublist = sublist["modules"]
        sublist = [mod_model.create_subclass(mod_model.node_type, s) for s in sublist]
        for s in sublist:
            self.assertIsInstance(s, modelAndServices.Module)
        sublist = modelAndServices.DeliveryTree.module_service.get_all(parent)
        r = requests.get("http://localhost:5000/rest/module/"+str(sublist[1].id))
        print(r.status_code, r.reason, r.json())
        rsub = mod_model.from_json(r.json())
        self.assertIsInstance(rsub, modelAndServices.Module)
        r = requests.get("http://localhost:5000/rest/module/"+sublist[0].artifactId)
        print(r.status_code, r.reason, r.json())
        rsub = mod_model.from_json(r.json())
        self.assertIsInstance(rsub, modelAndServices.Module)
        subparmodel = modelAndServices.Module("model", "model")
        parent = modelAndServices.DeliveryTree.component_service.get_unique({"name": 'mapping'})
        sublist = modelAndServices.DeliveryTree.module_service.get_all(parent)
        subpar = [s for s in sublist if s.name == "ds"][0]
        subpar.set_groupid_artifact(parent)
        r = requests.get("http://localhost:5000/rest/module/"+str(subpar.id))
        print(r.status_code, r.reason, r.json())
        rsub = subparmodel.from_json(r.json())
        self.assertIsInstance(rsub, modelAndServices.Module)
        r = requests.get("http://localhost:5000/rest/module/"+subpar.artifactId)
        print(r.status_code, r.reason, r.json())
        rsub = subparmodel.from_json(r.json())
        self.assertEqual(rsub, subpar)

    def test_post_module(self):
        mod_model = modelAndServices.Module("model", "model")
        sparmodel = modelAndServices.Module("model", "model")
        count = modelAndServices.DeliveryTree.graph_dao.count("nID")
        parent = modelAndServices.DeliveryTree.component_service.get_unique({"name": 'idm'})
        r = requests.post("http://localhost:5000/rest/module", params={"name": "Soubou",
                                                                       "parent": json.dumps(parent.get_properties())})
        print(r.status_code, r.reason, r.json())
        sub_res = mod_model.from_json(r.json())
        countafter = modelAndServices.DeliveryTree.graph_dao.count("nID")
        self.assertEqual(count+1, countafter)
        r = requests.post("http://localhost:5000/rest/module", params={"name": "PadreBoubino",
                                                                       "parent": json.dumps(parent.get_properties())})
        print(r.status_code, r.reason, r.json())
        countafter = modelAndServices.DeliveryTree.graph_dao.count("nID")
        self.assertEqual(count+2, countafter)
        rsub = sparmodel.from_json(r.json())
        self.assertIsInstance(rsub, modelAndServices.Module)
        sub = modelAndServices.DeliveryTree.module_service.get_unique({"name": 'wab'})
        sub.groupId = "roro.lolo.gato"
        sub.order = 7
        r = requests.post("http://localhost:5000/rest/module", params={"module":
                                                                          json.dumps(sub.get_properties())})
        print(r.status_code, r.reason, r.json())
        rsub = mod_model.from_json(r.json())
        self.assertEqual(rsub, sub)
        r = requests.post("http://localhost:5000/rest/module", params={"name": "ParrainCorleon", "nID": sub_res.id})
        print(r.status_code, r.reason, r.json())
        rsub = mod_model.from_json(r.json())
        nosub = modelAndServices.DeliveryTree.module_service.find({"name": "Soubou"})
        self.assertIsNone(nosub)
        self.assertEqual(rsub.name, "ParrainCorleon")

    def test_get_filenode(self):
        parent = modelAndServices.DeliveryTree.component_service.get_unique({"name": 'directory'})
        r = requests.get('http://localhost:5000/rest/filenode', params={"parent": json.dumps(parent.get_properties())})
        print(r.status_code, r.reason, r.json())
        fnode = r.json()
        fnode = fnode["filenodes"][0]
        r = requests.get('http://localhost:5000/rest/filenode/'+str(fnode["nID"]))
        print(r.status_code, r.reason, r.json())
        parent = modelAndServices.DeliveryTree.component_service.get_unique({"name": 'portal'})
        r = requests.get('http://localhost:5000/rest/filenode/plan', params={"parent": json.dumps(parent.get_properties())})
        print(r.status_code, r.reason, r.json())

    def test_post_filenode(self):
        parent = modelAndServices.DeliveryTree.component_service.get_unique({"name": 'directory'})
        myfnode = modelAndServices.FileNode("myfile", "custom", "ez", "/cute/path")
        myfnode = myfnode.get_properties()
        myfnode["parent"] = json.dumps(parent.get_properties())
        r = requests.post('http://localhost:5000/rest/filenode', params=myfnode)
        print(r.status_code, r.reason, r.json())
        dir_file = modelAndServices.DeliveryTree.get_one_file(parent, "pom")
        dir_file.path = "custom/path/"
        r = requests.post('http://localhost:5000/rest/filenode', params={"filenode": json.dumps(dir_file.get_properties())})
        print(r.status_code, r.reason, r.json())
        dir_file = modelAndServices.DeliveryTree.get_one_file(parent, "json_build")
        r = requests.post('http://localhost:5000/rest/filenode', params={"version": 'toto', "nID": dir_file.id})
        print(r.status_code, r.reason, r.json())
        dir_file.name = "jjj_ggg"
        r = requests.post('http://localhost:5000/rest/filenode', params=dir_file.get_properties())
        print(r.status_code, r.reason, r.json())

    def test_update_dev_version(self):
        create_db_file(os.path.join(relmgr_path, 'tests/inputs/create_0.6.4-SNAPSHOT.txt'))
        m = modelAndServices.DeliveryTree.component_service.get_unique({"name": "portal", "version": "0.6.4-SNAPSHOT"})
        m2 = modelAndServices.DeliveryTree.component_service.get_unique({"name": "portal", "version": "0.6.3"})
        m.name = "ogal"
        m2.name = "ddodal"
        r = requests.post('http://localhost:5000/rest/component', params={"component": m.to_json()})
        r2 = requests.post('http://localhost:5000/rest/component', params={"component": m2.to_json()})
        mr = m.from_json(r.json())
        print(r.status_code, r.reason, r.json())
        print(r2.status_code, r2.reason, r2.json())
        print(mr)
        self.assertEqual(r.status_code, 200)
        self.assertEqual(r2.status_code, 400)

        m = modelAndServices.DeliveryTree.plugin_service.get_unique({"name": "rabbitmq", "version": "0.2.4-SNAPSHOT"})
        m2 = modelAndServices.DeliveryTree.plugin_service.get_unique({"name": "rabbitmq", "version": "0.2.3"})
        m.name = "ogal"
        m2.name = "ddodal"
        r = requests.post('http://localhost:5000/rest/plugin', params={"plugin": m.to_json()})
        r2 = requests.post('http://localhost:5000/rest/plugin', params={"plugin": m2.to_json()})
        mr = m.from_json(r.json())
        print(r.status_code, r.reason, r.json())
        print(r2.status_code, r2.reason, r2.json())
        print(mr)
        self.assertEqual(r.status_code, 200)
        self.assertEqual(r2.status_code, 400)

        m = modelAndServices.DeliveryTree.module_service.get_unique({"name": "wab", "version": "0.6.4-SNAPSHOT"})
        m2 = modelAndServices.DeliveryTree.module_service.get_unique({"name": "wab", "version": "0.6.3"})
        m.name = "ogal"
        m2.name = "ddodal"
        r = requests.post('http://localhost:5000/rest/module', params={"module": m.to_json()})
        r2 = requests.post('http://localhost:5000/rest/module', params={"module": m2.to_json()})
        mr = m.from_json(r.json())
        print(r.status_code, r.reason, r.json())
        print(r2.status_code, r2.reason, r2.json())
        print(mr)
        self.assertEqual(r.status_code, 200)
        self.assertEqual(r2.status_code, 400)

        mod = modelAndServices.DeliveryTree.component_service.get_unique({"name": "injector", "version": "0.6.4-SNAPSHOT"})
        m = modelAndServices.DeliveryTree.get_one_file(mod, 'pom')
        mod = modelAndServices.DeliveryTree.component_service.get_unique({"name": "injector", "version": "0.6.3"})
        m2 = modelAndServices.DeliveryTree.get_one_file(mod, 'pom')
        m.name = "ogal"
        m2.name = "ddodal"
        r = requests.post('http://localhost:5000/rest/filenode', params={"filenode": json.dumps(m.get_properties())})
        r2 = requests.post('http://localhost:5000/rest/filenode', params={"filenode": json.dumps(m2.get_properties())})
        print(r.status_code, r.reason, r.json())
        print(r2.status_code, r2.reason, r2.json())
        self.assertEqual(r.status_code, 200)
        self.assertEqual(r2.status_code, 400)

        # def test_delete_distrib(self):
    #     r = requests.delete("http://localhost:5000/rest/distrib/0.6.3")
    #     create_db_file('/Users/stanrenia/py_neo4j_db/tests/inputs/create_0.6.3.txt')
    #     r = requests.delete("http://localhost:5000/rest/distrib/0.6.3/community")
    #     create_db_file('/Users/stanrenia/py_neo4j_db/tests/inputs/create_0.6.3.txt')
    #     r = requests.delete("http://localhost:5000/rest/distrib/0.6.3/community")
    #     create_db_file('/Users/stanrenia/py_neo4j_db/tests/inputs/create_0.6.3.txt')
    #     r = requests.delete("http://localhost:5000/rest/distrib/0.6.3/bouya")
    #
    # def test_delete_all_distrib(self):
    #     r = requests.delete("http://localhost:5000/rest/distrib", params={"version": "0.6.3"})
    #     print(r.status_code, r.reason, r.json())
