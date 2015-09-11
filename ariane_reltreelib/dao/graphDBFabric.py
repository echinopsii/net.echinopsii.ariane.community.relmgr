# Ariane Release Manager
# Ariane Release Tree Library
# Graph Database Fabric
#
# Copyright (C) 2015 echinopsii
# Author: Stan Renia
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

from ariane_reltreelib.dao import neographDB
from ariane_reltreelib import exceptions
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
                type = "neo4j"
            elif args["type"] == "orientdb":
                dao = DaoFabric.new_orientdb_dao(args)
                type = "orientdb"
            else:
                raise exceptions.GraphFabricError()
        else:
            raise exceptions.GraphFabricError()

        return type, dao

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
            return neographDB.NeoGraph(graph)
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