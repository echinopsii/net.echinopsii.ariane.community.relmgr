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

from py2neo import Node, Relationship, Graph

__author__ = 'stanrenia'

class NeoGraph(object):

    def __init__(self, graph):
        self.graph = graph

    def count(self, args):
        """
        Count number of occurences of args in graph database
        :param args: str object. args is a property (attribute) existing in at least one Node.
               args = "nID" allows you to check if no duplicate node exists. Exception : args = 'Node' count all nodes.
        :return: number of occurences. Returns 0 if nothing was found. Returns None if args is '' (empty string)
        """
        if args == "Node":
            value = self.graph.cypher.execute("MATCH (n) RETURN COUNT(n)")
        elif args != "":
            value = self.graph.cypher.execute("MATCH (n) RETURN COUNT(DISTINCT n."+str(args)+")")
        else:
            return None
        # .one is an RecordList attribute. Here it represents the count result
        return value.one

    def get_node_properties(self, node):
        return node.properties

    def get_node_label(self, node):
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
        relation_dict = {"start": start, "start_properties": start.properties,
                         "start_label": self.get_node_label(start), "end": end, "end_properties": end.properties,
                         "end_label": self.get_node_label(end), "relation": relation.type,
                         "rel_properties": relation.properties, "rel_node": rel}
        return relation_dict

    def get_max_nid(self):
        max_nid = 0
        recordlist = self.graph.cypher.execute("MATCH (n) RETURN max(n.nID) as nID")
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
        if args["nID"] == 0:
            node = Node.cast(args)
            node.labels.add(label)
        else:
            # Cypher syntax here does not require ':' after 'n', like 'n:Label'. We don't want to indicate the Label,
            #  so we use 'match (n {properties}) return n'
            lrecord = self.graph.cypher.execute("MATCH (n {nID:"+str(args["nID"])+"}) RETURN n")
            for record in lrecord:
                node = record.n
        return node

    def create_node(self, node_label, node_dict):
        cur_nid = self.get_max_nid() + 1
        node_dict["nID"] = cur_nid
        node = Node.cast(node_dict)
        node.labels.add(node_label)
        self.graph.create(node)
        return node, cur_nid

    def save_node(self, args):
        """
        Save node in Database. If node doesn't exist, a new one is created. If it does already exist, it is updated.
        :param node: The node to save. node is an ArianeNode subclass (Distribution, Component, Module, Plugin)
        :return: "created" or "updated" or None.
        """
        node = args["node"]
        if node.bound:
            for key in args.keys():
                if key in node.properties.keys():
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

    def save_relation(self, args):
        if ("start_nID" in args.keys()) and ("relation" in args.keys()) and ("end_nID" in args.keys()) and\
           ("properties" in args.keys()):
            if (args["start_nID"] > 0) and (args["end_nID"] > 0) and (args["relation"] != ""):
                rel = args["rel_node"]
                prop = args["properties"]
                for key in prop.keys():
                    rel.properties[key] = prop[key]
                rel.push()

    def create_relation(self, args):
        # print(args)
        node = args["node"]
        linked_node = args["linked_node"]
        relation = args["relation"]
        nid = None
        if linked_node.properties["nID"] == 0:
            linked_node.properties["nID"] = self.get_max_nid() + 1
            nid = linked_node.properties["nID"]
        if node.properties["nID"] == 0:
            node.properties["nID"] = self.get_max_nid() + 1
            nid = node.properties["nID"]

        if "properties" in args.keys():
            properties = args["properties"]  # another dict
            rel = Relationship.cast(node, (relation, properties), linked_node)
            self.graph.create(rel)
        else:
            rel = Relationship.cast(node, relation, linked_node)
            self.graph.create(rel)

        return nid, rel
        # print(relation)
        # self.graph.create(Relationship.cast(node, (relation, properties), linked_node))

    def get_relation_between(self, start_id, end_id=0, label=""):
        if end_id != 0:
            match = "MATCH (n {nID:"+str(start_id)+"})-[r]->(m {nID:"+str(end_id)+"}) RETURN r"
        elif label != "":
            match = "MATCH (n {nID:"+str(start_id)+"})-[r]->(m:"+str(label)+") RETURN r"
        else:
            return None

        listrecord = self.graph.cypher.execute(match)
        rel = None
        for record in listrecord:
            rel = record.r
        return rel

    def get_relations(self, args):
        listrel = []
        for rel in args["relation"]:
            listrecord = self.graph.match(args["node"], rel, bidirectional=True)
            for record in listrecord:
                listrel.append(record)
        if listrel.__len__() == 0:
            return None
        else:
            return listrel

    def get_by_nid(self, nid):
        rec = None
        if isinstance(nid, int) and nid > 0:
            listrecord = self.graph.cypher.execute("MATCH (n {nID:"+str(nid)+"}) RETURN n")
            for record in listrecord:
                rec = record.n
        return rec

    def get_all(self, args):
        """
        get all nodes depending on args parameters.
        :param args: dictionary with keys ('reverse', 'relation', 'node', ('label'))
        :return: If args contains 'label' and 'node' is None: return all nodes with this label
                 If args contains 'node', 'reverse' and 'relation': return all nodes related to this node and this relation
                 If args contains every keys, return all nodes with this label related to this node and this relation.
        """
        # print(args)
        node = args["node"]
        if ("label" in args.keys()) and (node is None):
                listrecord = self.graph.cypher.execute("MATCH (n:"+args['label']+") RETURN n")
                listnode = [record.n for record in listrecord]
        else:
            reverse = args["reverse"]
            relation = args["relation"]
            if reverse is False:
                listrecord = self.graph.match(node, relation)
                listnode = [n.end_node for n in listrecord]
            else:
                listrecord = self.graph.match(node, relation, bidirectional=True)
                listnode = [n.start_node for n in listrecord]

            if "label" in args.keys():
                listnode = [n for n in listnode if self.get_node_label(n) == args['label']]
        return listnode

    def find(self, args):
        list_found = []
        if args["args_type"] == "dict":
            args.pop("args_type")
            label = args["label"]
            args.pop("label")
            properties = ""
            for key in args.keys():
                if key == "nID":
                    properties = "nID: "+str(args.get("nID"))+","
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
            if key == "nID":
                properties = "nID: "+str(args.get("nID"))+","
            else:
                properties += ""+str(key)+": '"+str(args.get(key))+"',"
        properties = properties[:-1]
        match = "MATCH (n {"+properties+"}) RETURN n"
        listrecord = self.graph.cypher.execute(match)
        list_found = []
        for record in listrecord:
            list_found.append(record.n)
        if len(list_found) == 0:
            if "nID" in args.keys():
                other_try = self.get_by_nid(args["nID"])
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
        label = args["label"]
        args.pop("label")
        properties = ""
        match = ""
        unique_node = None
        counter = 0
        for key in args.keys():
            if key == "nID":
                properties = "nID:"+str(args.get(key))+""
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
        listrecord = []

        if end_id != 0:
            listrecord = self.graph.cypher.execute("MATCH (s {nID:"+str(start_id)+"}), (e {nID:"+str(end_id)+" }),"
                                            "p = shortestPath((s)-[*..10]-(e)) RETURN p")
        elif label != "":
            listrecord = self.graph.cypher.execute("MATCH (s {nID:"+str(start_id)+"}), (e:"+str(label)+"),"
                                                   "p = shortestPath((s)-[*..10]-(e)) RETURN p")
        path = None
        for rec in listrecord:
            path = rec.p
        return path
