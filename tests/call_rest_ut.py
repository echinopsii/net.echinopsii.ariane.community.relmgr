# Ariane Release Manager
# REST server test
#
# Copyright (C) 2015 echinopsii
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

import requests

from ariane_relsrv.server.restful import ariane_delivery
from tests.create_db_from_file import create_db_file

__author__ = 'stanrenia'

class TestREST(unittest.TestCase):

    def setUp(self):
        ariane_delivery.DeliveryTree.graph_dao.delete_all()
        # create_db_file('/Users/stanrenia/py_neo4j_db/tests/inputs/create_0.6.4-SNAPSHOT.txt')
        create_db_file('/Users/stanrenia/py_neo4j_db/tests/inputs/create_0.6.3.txt')

    def test_post_distrib(self):
        count = ariane_delivery.DeliveryTree.graph_dao.count("nID")
        r = requests.post("http://localhost:5000/rest/distrib", params={"version": "0.6.8"})
        print(r.status_code, r.reason, r.text)
        self.assertEqual(r.status_code, 400)
        r = requests.post("http://localhost:5000/rest/distrib", params={"name": "community", "version": "0.6.5"})
        print(r.status_code, r.reason, 'data: ', r.json())
        countafter = ariane_delivery.DeliveryTree.graph_dao.count("nID")
        self.assertEqual(count+1, countafter)
        dist = json.loads(r.json())
        dist = dist['distrib']
        self.assertEqual(dist["name"], "community")
        self.assertEqual(dist["version"], "0.6.5")
        r = requests.post("http://localhost:5000/rest/distrib", params={"name": "com", "version": "nomatch", "nID": 20})
        print(r.status_code, r.reason, r.text)
        self.assertEqual(r.status_code, 400)
        r = requests.post("http://localhost:5000/rest/distrib", params={"name": "community", "version": "0.6.5", "nID": dist["nID"]})
        print(r.status_code, r.reason, r.text)
        self.assertEqual(r.status_code, 400)
        r = requests.post("http://localhost:5000/rest/distrib", params={"name": "com", "version": "0.6.8", "nID": dist["nID"]})
        print(r.status_code, r.reason, r.json())
        self.assertEqual(r.status_code, 200)
        d = ariane_delivery.DeliveryTree.distribution_service.get_unique({"version": "0.6.8"})
        self.assertIsInstance(d, ariane_delivery.Distribution)
        dist['name'] = "yolo"
        r = requests.post("http://localhost:5000/rest/distrib", params=dist)
        print(r.status_code, r.reason, r.json())
        dist = json.loads(r.json())
        dist = dist['distrib']
        self.assertEqual(dist["name"], "yolo")

    def test_get_distrib(self):
        distrib = ariane_delivery.DeliveryTree.distribution_service.get_unique({"version": "0.6.3"})
        r = requests.get("http://localhost:5000/rest/distrib/0.6.3")
        print(r.json())
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

    def test_get_module(self):
        module = ariane_delivery.Module("", "", "")
        directory = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'directory'})
        r = requests.get("http://localhost:5000/rest/module", params={"version": "0.6.3"})
        print(r.json())
        r = requests.get('http://localhost:5000/rest/module/directory/0.6.3')
        mod = module.from_json(r.json())
        self.assertEqual(directory, mod)
        r = requests.get("http://localhost:5000/rest/module/"+str(mod.id))
        print(r.json())
        mod = module.from_json(r.json())
        self.assertEqual(directory, mod)
        r = requests.get("http://localhost:5000/rest/module/idm/0.6.4")
        print(r.json())
        self.assertEqual(r.status_code, 400)
        r = requests.get("http://localhost:5000/rest/module/mama/0.6.3")
        print(r.json())
        self.assertEqual(r.status_code, 400)

    def test_post_module(self):
        module = ariane_delivery.Module("", "", "")
        count = ariane_delivery.DeliveryTree.graph_dao.count("nID")
        mymod = ariane_delivery.Module("tango", "0.6.0", "core")
        mymod =mymod.get_properties()
        mymod["dist_version"] = "0.6.3"
        r = requests.post("http://localhost:5000/rest/module", params=mymod)
        print(r.status_code, r.reason, r.json())
        count_after = ariane_delivery.DeliveryTree.graph_dao.count("nID")
        self.assertEqual(count+1, count_after)
        tango = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'tango'})
        mod_res = module.from_json(r.json())
        self.assertEqual(tango, mod_res)

        mod2 = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'injector'})
        mod2.version = "0.6.0"
        r = requests.post("http://localhost:5000/rest/module", params={"module": json.dumps(mod2.get_properties())})
        print(r.status_code, r.reason, r.json())
        self.assertEqual(mod2, module.from_json(r.json()))
        # mod2 = ariane_delivery.DeliveryTree.module_service.get_unique({"name": "injector", "version": "0.6.0"})
        # self.assertEqual(mod2, module.from_json(r.json()))
        r = requests.post("http://localhost:5000/rest/module", params={"name": "Kazuwa", "nID": mod_res.id})
        print(r.status_code, r.reason, r.json())
        mod_res = module.from_json(r.json())
        # mod2 = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'Kazuwa'})
        self.assertEqual(mod_res.name, "Kazuwa")
        mod_res.version = "0.6.1"
        r = requests.post("http://localhost:5000/rest/module", params=mod_res.get_properties())
        print(r.status_code, r.reason, r.json())
        self.assertEqual(mod_res, module.from_json(r.json()))
        # mod2 = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'Kazuwa', "version": "0.6.1"})

    def test_get_plugin(self):
        plug_model = ariane_delivery.Plugin("model", "model")
        r = requests.get("http://localhost:5000/rest/plugin", params={"version": "0.6.3"})
        print(r.status_code, r.reason, r.json())
        plist = json.loads(r.json())
        self.assertIsInstance(plist["plugins"], list)
        r = requests.get('http://localhost:5000/rest/plugin/rabbitmq/0.2.3')
        print(r.status_code, r.reason, r.json())
        plug = plug_model.from_json(r.json())
        self.assertIsInstance(plug, ariane_delivery.Plugin)
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
        myplug = ariane_delivery.Plugin("Plying", "0.3.0")
        myplug =myplug.get_properties()
        myplug["dist_version"] = "0.6.3"
        count = ariane_delivery.DeliveryTree.graph_dao.count("nID")
        r = requests.post("http://localhost:5000/rest/plugin", params=myplug)
        print(r.status_code, r.reason, r.json())
        count_after = ariane_delivery.DeliveryTree.graph_dao.count("nID")
        self.assertEqual(count+1, count_after)
        plug_res = json.loads(r.json())
        plug2 = ariane_delivery.DeliveryTree.plugin_service.get_unique({"name": 'rabbitmq'})
        plug2.version = "0.4.0"
        r = requests.post("http://localhost:5000/rest/plugin", params={"plugin": json.dumps(plug2.get_properties())})
        print(r.status_code, r.reason, 'data: ', r.json())
        rplug = plug2.from_json(r.json())
        self.assertIsInstance(rplug, ariane_delivery.Plugin)
        self.assertEqual(plug2, rplug)
        plug_res = plug_res["plugin"]
        r = requests.post("http://localhost:5000/rest/plugin", params={"name": "Bouyaka", "nID": plug_res["nID"]})
        print(r.status_code, r.reason, r.json())
        plug_res = json.loads(r.json())
        plug_res = plug_res["plugin"]
        self.assertEqual(plug_res["name"], "Bouyaka")
        plug2 = ariane_delivery.DeliveryTree.plugin_service.find({"name": "Plying"})
        self.assertIsNone(plug2)
        plug_res["version"] = "0.0.7"
        r = requests.post("http://localhost:5000/rest/plugin", params=plug_res)
        print(r.status_code, r.reason, r.json())
        rplug = rplug.from_json(r.json())
        self.assertIsInstance(rplug, ariane_delivery.Plugin)
        self.assertEqual(rplug.version, "0.0.7")

    def test_get_submodule(self):
        submodel = ariane_delivery.SubModule("model", "model")
        parent = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'directory'})
        r = requests.get("http://localhost:5000/rest/submodule", params={"parent": json.dumps(parent.get_properties())})
        print(r.status_code, r.reason, r.json())
        sublist = json.loads(r.json())
        sublist = sublist["submodules"]
        dirsubs = ariane_delivery.DeliveryTree.submodule_service.get_all(parent)
        cpt = 0
        for sub in sublist:
            rsub = submodel.create_subclass(submodel.node_type, sub)
            self.assertIsInstance(rsub, ariane_delivery.SubModule)
            self.assertEqual(len(sublist), len(dirsubs))
            for ds in dirsubs:
                if rsub == ds:
                    cpt += 1
        self.assertEqual(cpt, len(sublist))
        r = requests.get("http://localhost:5000/rest/submodule", params={"parent": json.dumps({"name": 'idm'})})
        print(r.status_code, r.reason, r.json())
        sublist = json.loads(r.json())
        sublist = sublist["submodules"]
        sublist = [submodel.create_subclass(submodel.node_type, s) for s in sublist]
        for s in sublist:
            self.assertIsInstance(s, ariane_delivery.SubModule)
        sublist = ariane_delivery.DeliveryTree.submodule_service.get_all(parent)
        r = requests.get("http://localhost:5000/rest/submodule/"+str(sublist[1].id))
        print(r.status_code, r.reason, r.json())
        rsub = submodel.from_json(r.json())
        self.assertIsInstance(rsub, ariane_delivery.SubModule)
        r = requests.get("http://localhost:5000/rest/submodule/"+sublist[0].artifactId)
        print(r.status_code, r.reason, r.json())
        rsub = submodel.from_json(r.json())
        self.assertIsInstance(rsub, ariane_delivery.SubModule)
        subparmodel = ariane_delivery.SubModuleParent("model", "model")
        parent = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'mapping'})
        sublist = ariane_delivery.DeliveryTree.submodule_parent_service.get_all(parent)
        subpar = [s for s in sublist if s.name == "ds"][0]
        subpar.set_groupid_artifact(parent)
        r = requests.get("http://localhost:5000/rest/submodule/"+str(subpar.id))
        print(r.status_code, r.reason, r.json())
        rsub = subparmodel.from_json(r.json())
        self.assertIsInstance(rsub, ariane_delivery.SubModuleParent)
        r = requests.get("http://localhost:5000/rest/submodule/"+subpar.artifactId)
        print(r.status_code, r.reason, r.json())
        rsub = subparmodel.from_json(r.json())
        self.assertEqual(rsub, subpar)

    def test_post_submodule(self):
        submodel = ariane_delivery.SubModule("model", "model")
        sparmodel = ariane_delivery.SubModuleParent("model", "model")
        count = ariane_delivery.DeliveryTree.graph_dao.count("nID")
        parent = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'idm'})
        r = requests.post("http://localhost:5000/rest/submodule", params={"name": "Soubou",
                                                                          "parent": json.dumps(parent.get_properties()),
                                                                          "isSubModuleParent": "no"})
        print(r.status_code, r.reason, r.json())
        sub_res = submodel.from_json(r.json())
        countafter = ariane_delivery.DeliveryTree.graph_dao.count("nID")
        self.assertEqual(count+1, countafter)
        r = requests.post("http://localhost:5000/rest/submodule", params={"name": "PadreBoubino",
                                                                          "parent": json.dumps(parent.get_properties()),
                                                                          "isSubModuleParent": "yes"})
        print(r.status_code, r.reason, r.json())
        countafter = ariane_delivery.DeliveryTree.graph_dao.count("nID")
        self.assertEqual(count+2, countafter)
        rsub = sparmodel.from_json(r.json())
        self.assertIsInstance(rsub, ariane_delivery.SubModuleParent)
        sub = ariane_delivery.DeliveryTree.submodule_service.get_unique({"name": 'wab'})
        sub.groupId = "roro.lolo.gato"
        r = requests.post("http://localhost:5000/rest/submodule", params={"submodule":
                                                                          json.dumps(sub.get_properties())})
        print(r.status_code, r.reason, r.json())
        rsub = submodel.from_json(r.json())
        self.assertEqual(rsub, sub)
        r = requests.post("http://localhost:5000/rest/submodule", params={"name": "ParrainCorleon", "nID": sub_res.id})
        print(r.status_code, r.reason, r.json())
        rsub = submodel.from_json(r.json())
        nosub = ariane_delivery.DeliveryTree.submodule_service.find({"name": "Soubou"})
        self.assertIsNone(nosub)
        self.assertEqual(rsub.name, "ParrainCorleon")

    def test_get_filenode(self):
        parent = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'directory'})
        r = requests.get('http://localhost:5000/rest/file/', params={"parent": json.dumps(parent.get_properties())})
        print(r.status_code, r.reason, r.json())
        fnode = json.loads(r.json())
        fnode = fnode["filenodes"][0]
        r = requests.get('http://localhost:5000/rest/file/'+str(fnode["nID"]))
        print(r.status_code, r.reason, r.json())
        parent = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'portal'})
        r = requests.get('http://localhost:5000/rest/file/plan', params={"parent": json.dumps(parent.get_properties())})
        print(r.status_code, r.reason, r.json())

    def test_post_filenode(self):
        parent = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'directory'})
        myfnode = ariane_delivery.FileNode("myfile", "custom", "ez", "/cute/path")
        myfnode = myfnode.get_properties()
        myfnode["parent"] = json.dumps(parent.get_properties())
        r = requests.post('http://localhost:5000/rest/file/', params=myfnode)
        print(r.status_code, r.reason, r.json())
        dir_file = ariane_delivery.DeliveryTree.get_one_file(parent, "pom")
        dir_file.path = "custom/path/"
        r = requests.post('http://localhost:5000/rest/file/', params={"filenode": json.dumps(dir_file.get_properties())})
        print(r.status_code, r.reason, r.json())
        dir_file = ariane_delivery.DeliveryTree.get_one_file(parent, "json_build")
        r = requests.post('http://localhost:5000/rest/file/', params={"version": 'toto', "nID": dir_file.id})
        print(r.status_code, r.reason, r.json())
        dir_file.name = "jjj_ggg"
        r = requests.post('http://localhost:5000/rest/file/', params=dir_file.get_properties())
        print(r.status_code, r.reason, r.json())

    def test_delete_distrib(self):
        r = requests.delete("http://localhost:5000/rest/distrib/0.6.3")
        create_db_file('/Users/stanrenia/py_neo4j_db/tests/inputs/create_0.6.3.txt')
        r = requests.delete("http://localhost:5000/rest/distrib/0.6.3/community")
        create_db_file('/Users/stanrenia/py_neo4j_db/tests/inputs/create_0.6.3.txt')
        r = requests.delete("http://localhost:5000/rest/distrib/0.6.3/community")
        create_db_file('/Users/stanrenia/py_neo4j_db/tests/inputs/create_0.6.3.txt')
        r = requests.delete("http://localhost:5000/rest/distrib/0.6.3/bouya")

    def test_delete_all_distrib(self):
        r = requests.delete("http://localhost:5000/rest/distrib", params={"version": "0.6.3"})
        print(r.status_code, r.reason, r.json())
