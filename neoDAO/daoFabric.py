import neoDAO.init_NeoDB as NeoConnection
from neoDAO import dao
from neoDAO import exceptions
__author__ = 'stanrenia'

class DaoFabric(object):

    @staticmethod
    def new_neo_dao(login="neo4j", pwd="neo4j", host_port="localhost:7474"):
        login = str(login)
        pwd = str(pwd)
        host_port = str(host_port)

        graph = NeoConnection.connect(login, pwd, host_port)
        if graph is not None:
            return dao.NeoDAO(graph)
        else:
            raise exceptions.NeoDAOAuthError(login+" "+pwd)
