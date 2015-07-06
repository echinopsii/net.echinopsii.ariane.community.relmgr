from neoDAO import exceptions
from py2neo import Node, Relationship, Graph
import sys

__author__ = 'stanrenia'

class NeoDAO(object):

    def __init__(self, graph):
        self.graph = graph

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
            if key != ("nID" and "label"):
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
                if key != ("nID" and "label"):
                    ret_node.properties[key] = args.get(key)
        return ret_node

    def create_link(self, **args):
        # print(args)
        node = args["node"]
        linked_node = args["linked_node"]
        relation = args["relation"]

        if "properties" in args.keys():
            properties = args["properties"]  # another dict
            rel = Relationship.cast(node, (relation, properties), linked_node)
            self.graph.create(rel)
        else:
            rel = Relationship.cast(node, relation, linked_node)
            self.graph.create(rel)

        return rel
        # print(relation)
        # self.graph.create(Relationship.cast(node, (relation, properties), linked_node))

    def get_node(self, **args):
        # TODO
        label = args["label"]
        args.pop("label")
        # Handle nID key separately because it is an integer
        properties = "nID: "+str(args.get("nID"))+","
        args.pop("nID")
        for key in args.keys():
            properties += ""+str(key)+": '"+str(args.get(key))+"',"
        properties = properties[:-1]
        match = "MATCH (n:"+label+" {"+properties+"})-[r]->(m) RETURN r,m"

        listrecord = self.graph.cypher.execute(match)
        print("MATCH : ", match)
        for record in listrecord:
            print(record)
            print(type(record.r), type(record.m))

        return None

