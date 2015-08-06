import requests, unittest, json
from srv_rest.app.restful import ariane_delivery
from tests.create_db_from_file import  create_db_file
__author__ = 'stanrenia'

class TestREST(unittest.TestCase):

    def setUp(self):
        ariane_delivery.DeliveryTree.graph_dao.delete_all()
        # create_db_file('/Users/stanrenia/py_neo4j_db/tests/inputs/create_0.6.4-SNAPSHOT.txt')
        create_db_file('/Users/stanrenia/py_neo4j_db/tests/inputs/create_0.6.3.txt')

    def test_post_distrib(self):
        r = requests.post("http://localhost:5000/rest/distrib", params={"version": "0.6.8"})
        print(r.status_code, r.reason, r.text)
        r = requests.post("http://localhost:5000/rest/distrib", params={"name": "community", "version": "0.6.5"})
        print(r.status_code, r.reason, 'data: ', r.json())
        dist = json.loads(r.json())
        dist = dist['distrib']
        r = requests.post("http://localhost:5000/rest/distrib", params={"name": "com", "version": "nomatch", "nID": 20})
        print(r.status_code, r.reason, r.text)
        r = requests.post("http://localhost:5000/rest/distrib", params={"name": "community", "version": "0.6.5", "nID": dist["nID"]})
        print(r.status_code, r.reason, r.text)
        r = requests.post("http://localhost:5000/rest/distrib", params={"name": "com", "version": "0.6.8", "nID": dist["nID"]})
        print(r.status_code, r.reason, r.json())
        dist['name'] = "yolo"
        r = requests.post("http://localhost:5000/rest/distrib", params=dist)
        r = requests.post("http://localhost:5000/rest/distrib", params={"distrib": json.dumps(dist)})
        print(r.status_code, r.reason, r.json())

    def test_get_distrib(self):
        r = requests.get("http://localhost:5000/rest/distrib/0.6.3")
        print(r.json())
        dist = json.loads(r.json())
        dist = dist["distrib"]
        r = requests.get("http://localhost:5000/rest/distrib/"+str(dist["nID"]))
        print(r.json())
        r = requests.get("http://localhost:5000/rest/distrib/0.6.3/community")
        print(r.json())
        r = requests.get("http://localhost:5000/rest/distrib/blabla")
        print(r.json())

    def test_get_module(self):
        r = requests.get("http://localhost:5000/rest/module", params={"version": "0.6.3"})
        print(r.json())
        r = requests.get('http://localhost:5000/rest/module/directory/0.6.3')
        mod = json.loads(r.json())
        mod = mod["module"]
        r = requests.get("http://localhost:5000/rest/module/"+str(mod["nID"]))
        print(r.json())
        r = requests.get("http://localhost:5000/rest/module/0.6.4/idm")
        print(r.json())
        r = requests.get("http://localhost:5000/rest/module/0.6.3/mama")
        print(r.json())

    def test_post_module(self):
        mymod = ariane_delivery.Module("tango", "0.6.0", "core")
        mymod =mymod.get_properties()
        mymod["dist_version"] = "0.6.3"
        r = requests.post("http://localhost:5000/rest/module", params=mymod)
        print(r.status_code, r.reason, r.json())
        mod_res = json.loads(r.json())
        mod2 = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'injector'})
        mod2.version = "0.6.0"
        r = requests.post("http://localhost:5000/rest/module", params={"module": json.dumps(mod2.get_properties())})
        print(r.status_code, r.reason, 'data: ', r.json())
        mod_res = mod_res["module"]
        r = requests.post("http://localhost:5000/rest/module", params={"name": "Kazuwa", "nID": mod_res["nID"]})
        print(r.status_code, r.reason, r.json())
        mod_res = json.loads(r.json())
        mod_res = mod_res["module"]
        mod_res["version"] = "0.6.1"
        r = requests.post("http://localhost:5000/rest/module", params=mod_res)
        print(r.status_code, r.reason, r.json())

    def test_get_plugin(self):
        r = requests.get("http://localhost:5000/rest/plugin", params={"version": "0.6.3"})
        print(r.json())
        r = requests.get('http://localhost:5000/rest/plugin/rabbitmq/0.2.3')
        plug = json.loads(r.json())
        plug = plug["plugin"]
        r = requests.get("http://localhost:5000/rest/plugin/"+str(plug["nID"]))
        print(r.json())
        r = requests.get("http://localhost:5000/rest/plugin/0.6.4/rabbitmq")
        print(r.json())
        r = requests.get("http://localhost:5000/rest/plugin/0.2.3/mama")
        print(r.json())

    def test_post_plugin(self):
        myplug = ariane_delivery.Plugin("Plying", "0.3.0")
        myplug =myplug.get_properties()
        myplug["dist_version"] = "0.6.3"
        r = requests.post("http://localhost:5000/rest/plugin", params=myplug)
        print(r.status_code, r.reason, r.json())
        plug_res = json.loads(r.json())
        plug2 = ariane_delivery.DeliveryTree.plugin_service.get_unique({"name": 'rabbitmq'})
        plug2.version = "0.4.0"
        r = requests.post("http://localhost:5000/rest/plugin", params={"plugin": json.dumps(plug2.get_properties())})
        print(r.status_code, r.reason, 'data: ', r.json())
        plug_res = plug_res["plugin"]
        r = requests.post("http://localhost:5000/rest/plugin", params={"name": "Bouyaka", "nID": plug_res["nID"]})
        print(r.status_code, r.reason, r.json())
        plug_res = json.loads(r.json())
        plug_res = plug_res["plugin"]
        plug_res["version"] = "0.0.7"
        r = requests.post("http://localhost:5000/rest/plugin", params=plug_res)
        print(r.status_code, r.reason, r.json())

    def test_get_submodule(self):
        parent = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'directory'})
        r = requests.get("http://localhost:5000/rest/submodule", params={"parent": json.dumps(parent.get_properties())})
        print(r.status_code, r.reason, r.json())
        r = requests.get("http://localhost:5000/rest/submodule", params={"parent": json.dumps({"name": 'idm'})})
        print(r.status_code, r.reason, r.json())

        sublist = ariane_delivery.DeliveryTree.submodule_service.get_all(parent)
        r = requests.get("http://localhost:5000/rest/submodule/"+str(sublist[1].id))
        print(r.status_code, r.reason, r.json())
        r = requests.get("http://localhost:5000/rest/submodule/"+sublist[0].artifactId)
        print(r.status_code, r.reason, r.json())
        r = requests.get("http://localhost:5000/rest/submodule/base", params={"parent": json.dumps(parent.get_properties())})
        print(r.status_code, r.reason, r.json())

        parent = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'mapping'})
        sublist = ariane_delivery.DeliveryTree.submodule_parent_service.get_all(parent)
        subpar = [s for s in sublist if s.name == "ds"][0]
        subpar.set_groupid_artifact(parent)
        r = requests.get("http://localhost:5000/rest/submodule/"+str(subpar.id))
        print(r.status_code, r.reason, r.json())
        r = requests.get("http://localhost:5000/rest/submodule/"+subpar.artifactId)
        print(r.status_code, r.reason, r.json())
        r = requests.get("http://localhost:5000/rest/submodule/ds", params={"parent": json.dumps(parent.get_properties())})
        print(r.status_code, r.reason, r.json())

    def test_post_submodule(self):
        parent = ariane_delivery.DeliveryTree.module_service.get_unique({"name": 'idm'})
        r = requests.post("http://localhost:5000/rest/submodule", params={"name": "Soubou",
                                                                          "parent": json.dumps(parent.get_properties()),
                                                                          "isSubModuleParent": "no"})
        print(r.status_code, r.reason, r.json())
        sub_res = json.loads(r.json())
        r = requests.post("http://localhost:5000/rest/submodule", params={"name": "PadreBoubino",
                                                                          "parent": json.dumps(parent.get_properties()),
                                                                          "isSubModuleParent": "yes"})
        print(r.status_code, r.reason, r.json())
        sub = ariane_delivery.DeliveryTree.submodule_service.get_unique({"name": 'wab'})
        sub.groupId = "roro.lolo.gato"
        r = requests.post("http://localhost:5000/rest/submodule", params={"submodule":
                                                                          json.dumps(sub.get_properties())})
        print(r.status_code, r.reason, 'data: ', r.json())
        sub_res = sub_res["submodule"]
        r = requests.post("http://localhost:5000/rest/submodule", params={"name": "ParrainCorleon", "nID": sub_res["nID"]})
        print(r.status_code, r.reason, r.json())

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
