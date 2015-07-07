from ariane_deliverytool.DAO import neograph
from ariane_deliverytool.DAO import exceptions
from py2neo import Graph, authenticate, Unauthorized, Node
__author__ = 'stanrenia'


class DaoFabric(object):

    dao = None

    def __init__(self):
        pass

    @staticmethod
    def make(args):
        if "type" in args.keys():
            if args["type"] == "neo4j":
                args.pop("type")
                dao = DaoFabric.new_neo_dao(args)
            elif args["type"] == "orientdb":
                dao = DaoFabric.new_orientdb_dao(args)
            else:
                raise exceptions.GraphFabricError()
        else:
            raise exceptions.GraphFabricError()

        return dao

    @staticmethod
    def new_neo_dao(args):
        # login="neo4j", pwd="neo4j", host_port="localhost:7474"
        if "login" in args.keys():
            login = str(args["login"])
        else:
            login = "neo4j"
        if "password" in args.keys():
            password = str(args["password"])
        else:
            password = "neo4j"
        if "hostport" in args.keys():
            host_port = str(args["hostport"])
        else:
            host_port = "localhost:7474"

        def connect(login, password, host_port):
            # global graph allows to get the same graph every time init_db() is called
            graph = None
            authenticate(host_port, login, password)

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

        graph = connect(login, password, host_port)
        if graph is not None:
            return neograph.NeoGraph(graph)
        else:
            raise exceptions.NeoDAOAuthError(login+" "+password)

    @staticmethod
    def new_orientdb_dao(args):
        return None

    # @staticmethod
    # def get_neodao_instance():
    #     global log, passwd, hostport
    #     global neo_dao_instance
    #     if neo_dao_instance is None:
    #         neo_dao_instance = DaoFabric.new_neo_dao(log, passwd, hostport)
    #
    #     return neo_dao_instance