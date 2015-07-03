from neoDAO import module_cls, daoFabric
import unittest

__author__ = 'stanrenia'

class AppTest(unittest.TestCase):

    def test_save_node(self):
        neoDao = daoFabric.DaoFabric.new_neo_dao("neo4j", "admin")
        neoDao.delete_all()

        node = module_cls.Module("waza", "0.7", "blum")
        neoDao.save_node(node)

        listnode = neoDao.get_node_property("Module", **{"name": "waza"})
        node = listnode[0]
        node.name = "newname"
        neoDao.save_node(node)

    def test_create_db(self):
        neoDao = daoFabric.DaoFabric.new_neo_dao("neo4j", "admin")
        neoDao.delete_all()
        neoDao.create_db_neo("inputs/create_0.6.1.txt")
        neoDao.create_db_neo("inputs/create_0.6.2.txt")
        nodes = neoDao.get_node_property("Module", **{"version": "0.6.2"})
        print("GET: ", nodes, type(nodes))
        ret = neoDao.set_node_property(nodes, **{"version": "0.6.3"})
        print("SET: ", ret, type(ret))
        nodes = neoDao.get_node_property("Module", **{"version": "0.6.2"})
        print("GET: ", nodes, type(nodes))
        nodes = neoDao.get_node_property("Module", **{"version": "0.6.3"})
        print("GET: ", nodes, type(nodes))
        neoDao.set_node_property(nodes, **{"version": "0.6.2"})

