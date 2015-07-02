
import unittest
from neoDAO import init_NeoDB

__author__ = 'stanrenia'

class InitDBTest(unittest.TestCase):

    def test_new_graph(self):
        """
        graph: create a graph with correct Login/Password and get it
        graph2: get the same graph because it is already created. The wrong Login/Password and host:port won't even be
        checked
        :return:
        """
        graph = init_NeoDB.connect("neo4j", "admin")
        self.assertIsNotNone(graph)
        graph2 = init_NeoDB.connect("wrong", "login", "and host_port")
        self.assertIsNotNone(graph2)

    def test_no_new_graph(self):
        graph = init_NeoDB.connect("this is", "a wrong login")
        self.assertIsNone(graph)
        # A wrong host_port causes a looping connection
        # Be sure you correctly write the host_port


