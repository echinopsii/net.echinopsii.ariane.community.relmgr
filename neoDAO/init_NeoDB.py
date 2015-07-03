from py2neo import Graph, authenticate, Node, Unauthorized
import time

__author__ = 'stanrenia'

graph = None

def connect(login, pwd, host_port):
    #authenticate("localhost:7474", "neo4j", "admin")
    # global graph allows to get the same graph every time init_db() is called
    global graph
    if graph is None:
        authenticate(host_port, login, pwd)

        if host_port == "localhost:7474":
            graph = Graph()
        else:
            graph = Graph("http://"+host_port+"/db/data/")

        node = Node("TestNodeToRemove", name="Alice", age="23", eyes="blue")
        try:
            graph.create(node)
            graph.delete(node)
        except Unauthorized:
            graph = None

    return graph
