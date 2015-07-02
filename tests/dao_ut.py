import unittest
from neoDAO import dao, daoFabric, module_cls, exceptions

__author__ = 'stanrenia'

class InitDBTest(unittest.TestCase):
    def test_get_property(self):
        neoDAO = daoFabric.DaoFabric.new_neo_dao("neo4j", "admin")
        nodes = neoDAO.get_node_property("Module", **{"version": "0.6.2"})
        self.assertGreater(nodes.__len__(), 0)

        with self.assertRaises(exceptions.NeoDAOLabelError):
            no_nodes = neoDAO.get_node_property("FakeLabel", **{"fake": "007"})

        try:
            no_nodes = neoDAO.get_node_property("FakeLabel", **{"fake": "007"})
        except exceptions.NeoDAOLabelError as e:
            print(e.__repr__())

