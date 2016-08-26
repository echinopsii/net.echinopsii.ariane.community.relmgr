# Ariane Release Manager
# Ariane Release Tree Library
# Neo4j Graph Database DAO
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
import logging

from py2neo import Node, Relationship
import os
from ariane_reltreelib.arianeDefinitions import ArianeDefinitions

__author__ = 'stanrenia'

LOGGER = logging.getLogger(__name__)


class NeoGraph(object):

    neo4j_bin_path = None

    def __init__(self, graph):
        self.graph = graph

    @staticmethod
    def import_from_file(filepath):
        if NeoGraph.neo4j_bin_path is not None:
            if os.path.isfile(filepath):
                os.system(NeoGraph.neo4j_bin_path + ArianeDefinitions.CMD_NEOJ_IMPORT_FILE + filepath)
                return 0

    @staticmethod
    def set_db_bin_path(bin_path):
        if os.path.exists(bin_path):
            NeoGraph.neo4j_bin_path = bin_path
            return 0

    def count(self, args):
        """
        Count number of occurences of args in graph database
        :param args: str object. args is a property (attribute) existing in at least one Node.
               args = "nID" allows you to check if no duplicate node exists. Exception : args = 'Node' count all nodes.
               In order to update nIDs of a Distribution easily, you can run the following CYPHER command:
                   'match n = (a)
                   foreach(b IN nodes(n)|SET b.nID = b.nID+84)'
                where '84'  is the value you want to increment. Basically, this value is high enough to assure that
                there is no duplicated nIDs.

        :return: number of occurences. Returns 0 if nothing was found. Returns None if args is '' (empty string)
        """
        if args == ArianeDefinitions.GRAPH_OBJ_TYPE_NODE:
            value = self.graph.cypher.execute("MATCH (n) RETURN COUNT(n)")
        elif args != "":
            value = self.graph.cypher.execute("MATCH (n) RETURN COUNT(DISTINCT n."+str(args)+")")
        else:
            return None
        # .one is an RecordList attribute. Here it represents the count result
        return value.one

    @staticmethod
    def get_node_properties(node):
        return node.properties

    @staticmethod
    def get_node_label(node):
        label = None
        for l in node.labels:
            label = l
            break
        return label

    # Edit node label with cypher:
    # MATCH (n:SubModule)
    # REMOVE n:SubModule
    # SET n:Module

    def get_relation_data(self, relation):
        start = relation.start_node
        end = relation.end_node
        rel = relation
        relation_dict = {
            ArianeDefinitions.GRAPH_REL_START: start,
            ArianeDefinitions.GRAPH_REL_START_PROPS: start.properties,
            ArianeDefinitions.GRAPH_REL_START_LABEL: self.get_node_label(start),
            ArianeDefinitions.GRAPH_REL_END: end,
            ArianeDefinitions.GRAPH_REL_END_PROPS: end.properties,
            ArianeDefinitions.GRAPH_REL_END_LABEL: self.get_node_label(end),
            ArianeDefinitions.GRAPH_REL: relation.type,
            ArianeDefinitions.GRAPH_REL_PROPS: relation.properties,
            ArianeDefinitions.GRAPH_REL_NODE: rel
        }
        return relation_dict

    def get_max_nid(self):
        max_nid = 0
        recordlist = self.graph.cypher.execute("MATCH (n) RETURN max(n." + ArianeDefinitions.GRAPH_NODE_ID +
                                               ") as " + ArianeDefinitions.GRAPH_NODE_ID)
        for record in recordlist:
            max_nid = record.nID
            if max_nid is None:
                max_nid = 0
        return max_nid

    def delete_all(self):
        self.graph.delete_all()

    def delete(self, node):
        self.graph.delete(node)

    def init_node(self, label, args):
        """ Create a py2neo.Node object from a dictionary (args).
        Else case is very important, it gets the py2neo.Node object from database. It is necessary in order to reuse
        the node in application, because py2neo.Node object is bound to database. If we don't do this, the node is not
        bound so we can not manipulate the corresponding node in database anymore.
        Caution: the "bound ID" given by py2neo is not immutable. It could change on a new transaction.
        :param label: Label of the node in graph database.
        :param args: properties of this node.
        :return: py2neo.Node object with label and properties updated.
        """
        node = None
        if args[ArianeDefinitions.GRAPH_NODE_ID] == 0:
            node = Node.cast(args)
            node.labels.add(label)
        else:
            # Cypher syntax here does not require ':' after 'n', like 'n:Label'. We don't want to indicate the Label,
            #  so we use 'match (n {properties}) return n'
            lrecord = self.graph.cypher.execute("MATCH (n {" + ArianeDefinitions.GRAPH_NODE_ID +
                                                ":" + str(args[ArianeDefinitions.GRAPH_NODE_ID]) + "}) RETURN n")
            for record in lrecord:
                node = record.n
        return node

    def create_node(self, node_label, node_dict):
        cur_nid = self.get_max_nid() + 1
        node_dict[ArianeDefinitions.GRAPH_NODE_ID] = cur_nid
        node = Node.cast(node_dict)
        node.labels.add(node_label)
        self.graph.create(node)
        return node, cur_nid

    @staticmethod
    def save_node(args):
        """
        Save node in Database. If node doesn't exist, a new one is created. If it does already exist, it is updated.
        :param args: The node to save. node is an ArianeNode subclass (Distribution, Component, Module, Plugin)
        :return: "created" or "updated" or None.
        """
        node = args[ArianeDefinitions.GRAPH_NODE]
        if node.bound:
            for key in args.keys():
                if key is not ArianeDefinitions.GRAPH_NODE:
                    node.properties[key] = args[key]
            node.push()
        return node

    # TO EDIT RELATION NAME, execute this cypher command:
    # MATCH (n:Plugin)-[r]->(m:Component)
    # CREATE (n)-[r2:dependency]->(m)
    # // copy properties, if necessary
    #     SET r2 = r
    # WITH r
    # DELETE r

    @staticmethod
    def save_relation(args):
        if (ArianeDefinitions.GRAPH_REL_START_NID in args.keys()) and (ArianeDefinitions.GRAPH_REL in args.keys()) and \
                (ArianeDefinitions.GRAPH_REL_END_NID in args.keys()) and \
                (ArianeDefinitions.GRAPH_PROPERTIES in args.keys()):
            if (args[ArianeDefinitions.GRAPH_REL_START_NID] > 0) and \
                    (args[ArianeDefinitions.GRAPH_REL_END_NID] > 0) and \
                    (args[ArianeDefinitions.GRAPH_REL] != ""):
                rel = args[ArianeDefinitions.GRAPH_REL_NODE]
                prop = args[ArianeDefinitions.GRAPH_PROPERTIES]
                for key in prop.keys():
                    rel.properties[key] = prop[key]
                rel.push()

    def create_relation(self, args):
        LOGGER.debug("NeoGraph.create_relation - " + str(args))
        node = args[ArianeDefinitions.GRAPH_NODE]
        linked_node = args[ArianeDefinitions.GRAPH_LINKED_NODE]
        relation = args[ArianeDefinitions.GRAPH_REL]
        nid = None
        if linked_node.properties[ArianeDefinitions.GRAPH_NODE_ID] == 0:
            linked_node.properties[ArianeDefinitions.GRAPH_NODE_ID] = self.get_max_nid() + 1
            nid = linked_node.properties[ArianeDefinitions.GRAPH_NODE_ID]
        if node.properties[ArianeDefinitions.GRAPH_NODE_ID] == 0:
            node.properties[ArianeDefinitions.GRAPH_NODE_ID] = self.get_max_nid() + 1
            nid = node.properties[ArianeDefinitions.GRAPH_NODE_ID]

        if ArianeDefinitions.GRAPH_PROPERTIES in args.keys():
            properties = args[ArianeDefinitions.GRAPH_PROPERTIES]  # another dict
            rel = Relationship.cast(node, (relation, properties), linked_node)
            self.graph.create(rel)
        else:
            rel = Relationship.cast(node, relation, linked_node)
            self.graph.create(rel)

        return nid, rel

    def get_relation_between(self, start_id, end_id=0, label=""):
        if end_id != 0:
            match = "MATCH (n {" + ArianeDefinitions.GRAPH_NODE_ID + ":" + str(start_id) + \
                    "})-[r]->(m {" + ArianeDefinitions.GRAPH_NODE_ID + ":" + str(end_id) + "}) RETURN r"
        elif label != "":
            match = "MATCH (n {" + ArianeDefinitions.GRAPH_NODE_ID + ":" + str(start_id) + "})-[r]->(m:" + str(label) +\
                    ") RETURN r"
        else:
            return None

        listrecord = self.graph.cypher.execute(match)
        rel = None
        for record in listrecord:
            rel = record.r
        return rel

    def get_relations(self, args):
        listrel = []
        for rel in args[ArianeDefinitions.GRAPH_REL]:
            listrecord = self.graph.match(args[ArianeDefinitions.GRAPH_NODE], rel, bidirectional=True)
            for record in listrecord:
                listrel.append(record)
        if listrel.__len__() == 0:
            return None
        else:
            return listrel

    def get_by_nid(self, nid):
        rec = None
        if isinstance(nid, int) and nid > 0:
            listrecord = self.graph.cypher.execute("MATCH (n {" + ArianeDefinitions.GRAPH_NODE_ID +
                                                   ":" + str(nid) + "}) RETURN n")
            for record in listrecord:
                rec = record.n
        return rec

    def get_all(self, args):
        """
        get all nodes depending on args parameters.
        :param args: dictionary with keys ('reverse', 'relation', 'node', ('label'))
        :return: If args contains 'label' and 'node' is None: return all nodes with this label
                 If args contains 'node', 'reverse' and 'relation': return all nodes related to this node and
                 this relation
                 If args contains every keys, return all nodes with this label related to this node and this relation.
        """
        LOGGER.debug("NeoGraph.get_all - " + str(args))
        node = args[ArianeDefinitions.GRAPH_NODE]
        if (ArianeDefinitions.GRAPH_LABEL in args.keys()) and (node is None):
            listrecord = self.graph.cypher.execute("MATCH (n:"+args[ArianeDefinitions.GRAPH_LABEL]+") RETURN n")
            listnode = [record.n for record in listrecord]
        else:
            reverse = args[ArianeDefinitions.GRAPH_REVERSE]
            relation = args[ArianeDefinitions.GRAPH_REL]
            if reverse is False:
                listrecord = self.graph.match(node, relation)
                listnode = [n.end_node for n in listrecord]
            else:
                listrecord = self.graph.match(node, relation, bidirectional=True)
                listnode = [n.start_node for n in listrecord]

            if ArianeDefinitions.GRAPH_LABEL in args.keys():
                listnode = [n for n in listnode if self.get_node_label(n) == args[ArianeDefinitions.GRAPH_LABEL]]
        return listnode

    def find(self, args):
        list_found = []
        if args[ArianeDefinitions.GRAPH_ARGS_TYPE] == "dict":
            args.pop(ArianeDefinitions.GRAPH_ARGS_TYPE)
            label = args[ArianeDefinitions.GRAPH_LABEL]
            args.pop(ArianeDefinitions.GRAPH_LABEL)
            properties = ""
            for key in args.keys():
                if key == ArianeDefinitions.GRAPH_NODE_ID:
                    properties = ArianeDefinitions.GRAPH_NODE_ID + ": " + \
                        str(args.get(ArianeDefinitions.GRAPH_NODE_ID)) + ","
                    break
                else:
                    properties += ""+str(key)+": '"+str(args.get(key))+"',"
            properties = properties[:-1]
            match = "MATCH (n:"+label+" {"+properties+"}) RETURN n"
            listrecord = self.graph.cypher.execute(match)
            for record in listrecord:
                list_found.append(record.n)

        else:
            return None

        if list_found.__len__() == 0:
            return None
        else:
            return list_found

    def find_without_label(self, args):
        properties = ""
        for key in args.keys():
            if key == ArianeDefinitions.GRAPH_NODE_ID:
                properties = ArianeDefinitions.GRAPH_NODE_ID + ": " + \
                    str(args.get(ArianeDefinitions.GRAPH_NODE_ID)) + ","
            else:
                properties += ""+str(key)+": '"+str(args.get(key))+"',"
        properties = properties[:-1]
        match = "MATCH (n {"+properties+"}) RETURN n"
        listrecord = self.graph.cypher.execute(match)
        list_found = []
        for record in listrecord:
            list_found.append(record.n)
        if len(list_found) == 0:
            if ArianeDefinitions.GRAPH_NODE_ID in args.keys():
                other_try = self.get_by_nid(args[ArianeDefinitions.GRAPH_NODE_ID])
                if other_try is not None:
                    list_found.append(other_try)
                else:
                    return None
            else:
                return None
        return list_found

    def get_unique(self, args):
        """
        get a unique node from database.
        :param args: dict which contains a unique node identifier (primary key equivalent)
        :return: the unique node found in database (py2neo.Node object).
                If no node matches, return None
                If multiple nodes matches, return 0
        """
        label = args[ArianeDefinitions.GRAPH_LABEL]
        args.pop(ArianeDefinitions.GRAPH_LABEL)
        properties = ""
        match = ""
        unique_node = None
        counter = 0
        for key in args.keys():
            if key == ArianeDefinitions.GRAPH_NODE_ID:
                properties = ArianeDefinitions.GRAPH_NODE_ID + ":" + str(args.get(key)) + ""
                match = "MATCH (n:"+label+" {"+properties+"}) RETURN n"
                break
            else:
                properties += ""+str(key)+": '"+str(args.get(key))+"',"
        properties = properties[:-1]
        if match == "":
            match = "MATCH (n:"+label+" {"+properties+"}) RETURN n"

        listrecord = self.graph.cypher.execute(match)
        for record in listrecord:
            unique_node = record.n
            counter += 1
            if counter > 1:
                unique_node = 0
                break

        return unique_node

    def shortest_path(self, start_id, end_id=0, label=""):
        list_record = []

        if end_id != 0:
            list_record = self.graph.cypher.execute("MATCH (s {" + ArianeDefinitions.GRAPH_NODE_ID +
                                                    ":" + str(start_id) + "}), (e {" + ArianeDefinitions.GRAPH_NODE_ID +
                                                    ":" + str(end_id) + " }),"
                                                    "p = shortestPath((s)-[*..10]-(e)) RETURN p")
        elif label != "":
            list_record = self.graph.cypher.execute("MATCH (s {" + ArianeDefinitions.GRAPH_NODE_ID +
                                                    ":" + str(start_id) + "}), (e:" + str(label) + "),"
                                                    "p = shortestPath((s)-[*..10]-(e)) RETURN p")
        path = None
        for rec in list_record:
            path = rec.p
        return path
