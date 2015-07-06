import neoDAO.init_NeoDB as NeoConnection
from neoDAO import dao
from neoDAO import exceptions
__author__ = 'stanrenia'

neo_dao_instance = None
log = ""
passwd = ""
hostport = ""

class DaoFabric(object):

    def __init__(self, login="neo4j", pwd="neo4j", host_port="localhost:7474"):
        global log, passwd, hostport

        log = login
        passwd = pwd
        hostport = host_port

    @staticmethod
    def new_neo_dao(login, pwd, host_port):
        login = str(login)
        pwd = str(pwd)
        host_port = str(host_port)

        graph = NeoConnection.connect(login, pwd, host_port)
        if graph is not None:
            return dao.NeoDAO(graph)
        else:
            raise exceptions.NeoDAOAuthError(login+" "+pwd)

    @staticmethod
    def get_neodao_instance():
        global log, passwd, hostport
        global neo_dao_instance
        if neo_dao_instance is None:
            neo_dao_instance = DaoFabric.new_neo_dao(log, passwd, hostport)

        return neo_dao_instance