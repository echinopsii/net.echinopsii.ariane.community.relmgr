from ariane_deliverytool.DAO import exceptions
from py2neo import Node, Relationship, Graph
import sys

__author__ = 'stanrenia'

class NeoGraph(object):

    def __init__(self, graph):
        self.graph = graph

    def get_node_properties(self, node):
        return node.properties

    def get_node_label(self, node):
        for l in node.labels:
            label = l
            break
        return label

    def get_relation_data(self, relation):
        start = relation.start_node
        end = relation.end_node
        relation_dict = {"start": start, "start_properties": start.properties,
                         "start_label": self.get_node_label(start), "end": end, "end_properties": end.properties,
                         "end_label": self.get_node_label(end), "relation": relation.type,
                         "rel_properties": relation.properties}
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
        node = Node.cast(args)
        node.labels.add(label)
        return node

    def create_node(self, node_label, node_dict):
        cur_nid = self.get_max_nid() + 1
        node_dict["nID"] = cur_nid
        node = Node.cast(node_dict)
        node.labels.add(node_label)
        self.graph.create(node)
        return node, cur_nid

    def save_node(self, **args):
        """
        Save node in Database. If node doesn't exist, a new one is created. If it does already exist, it is updated.
        :param node: The node to save. node is an ArianeNode subclass (Distribution, Module, SubModule, Plugin)
        :return: "created" or "updated" or None.
        """
        #TODO
        # node aura été Get au préalable s'il s'agit d'update. En faisant Get, on récup l'ID du Node et on met à jour self.id
        # par défaut, self.id = 0. Donc Si id == 0 : create , sinon update.
        set = "SET "
        for key in args.keys():
            if (key != "nID") and (key != "label"):
                set += "n."+key+" = '"+str(args.get(key))+"',"
        set = set[:-1]
        match = "MATCH (n:"+args["label"]+" {nID:"+str(args["nID"])+"})"
        # print(match + set + " RETURN n ")
        listrecord = self.graph.cypher.execute(match + set + " RETURN n ")
        # match = "MATCH (n:"+args["label"]+" {nID:'"+str(args["nID"])+"'})"
        # listrecord = self.graph.cypher.execute(match, Node.cast(dir))
        ret_node = ""
        for record in listrecord:
            ret_node = record.n
        if ret_node != "":
            for key in args.keys():
                if (key != "nID") and (key != "label"):
                    ret_node.properties[key] = args.get(key)
        return ret_node

    def create_link(self, **args):
        # print(args)
        node = args["node"]
        linked_node = args["linked_node"]
        relation = args["relation"]
        nid = None
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

    def get_all(self, args):
        # print(args)
        if args.keys().__len__() == 3:
            node = args["node"]
            if node == "Distribution":
                listrecord = self.graph.cypher.execute("MATCH (n:Distribution) RETURN n")
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

            return listnode

        else:
            raise exceptions.NeoDAOTypeError()

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
                properties = "nID:"+args.get(key)+""
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




