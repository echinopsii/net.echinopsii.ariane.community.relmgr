import requests, unittest, json
from srv_rest.app.restful import ariane_delivery
from tests.create_db_from_file import  create_db_file
__author__ = 'stanrenia'

class TestREST(unittest.TestCase):

    def setUp(self):
        ariane_delivery.DeliveryTree.graph_dao.delete_all()
        create_db_file('/Users/stanrenia/py_neo4j_db/tests/inputs/create_0.6.4-SNAPSHOT.txt')
        create_db_file('/Users/stanrenia/py_neo4j_db/tests/inputs/create_0.6.3.txt')

    def test_post(self):
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

    def test_delete(self):
        r = requests.delete("http://localhost:5000/rest/distrib", params={"version": "0.6.3"})
        print(r.status_code, r.reason, r.json())