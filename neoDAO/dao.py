from neoDAO import module_cls, exceptions
from py2neo import Node, Relationship, Graph
import sys

__author__ = 'stanrenia'

class NeoDAO(object):

    def __init__(self, graph):
        self.graph = graph

    def delete_all(self):
        self.graph.delete_all()

    def save_node(self, node):
        """
        Save node in Database. If node doesn't exist, a new one is created. If it does already exist, it is updated.
        :param node: The node to save. node is an ArianeNode subclass (Distribution, Module, SubModule, Plugin)
        :return: "created" or "updated" or None.
        """
        #TODO
        # node aura été Get au préalable s'il s'agit d'update. En faisant Get, on récup l'ID du Node et on met à jour self.id
        # par défaut, self.id = 0. Donc Si id == 0 : create , sinon update.

        if node.id == 0:
            print("0")
            max_nid = self.get_max_nid() + 1
            node.id = max_nid
            node.update_attr()
            self.graph.create(node.node)
        else:
            print("1")
            node.update_attr()
            set = "SET "
            for key in node.dir.keys():
                set += "n."+key+" = '"+str(node.dir.get(key))+"',"
            set = set[:-1]
            self.graph.cypher.execute("MATCH (n:"+node.node_type+" {nID:"+str(node.id)+"})" + set + "")

    def set_node_property(self, nodes, **args):
        """
        Set given nodes properties in the Database
        :param nodes: a list of ArianeNode subclasses objects
        :param args: a dict with properties to set
        :return: number of ArianeNodes setted. So returns zero if nothing happened.
        """
        list_node_ret = []
        # To be sure we set an existent property.
        for node in nodes:
            set = "SET "
            for key in args.keys():
                    # To be sure we set an existent property.
                    if node.check_current_property(key) is True:
                        set += "n."+key+" = '"+args.get(key)+"',"
                        set = set[:-1]

            if issubclass(node.__class__, module_cls.ArianeNode):
                statement = """MATCH (n:"""+node.node_type+"""{name:'"""+node.name+"""',
                version:'"""+node.version+"""'})""" + set + """ RETURN n"""

                cypher_ret_nodes = self.graph.cypher.execute(statement)

                for cypher_node in cypher_ret_nodes:
                    node_ret = cypher_node.n
                    if node_ret is not None:
                        list_node_ret.append(node_ret)
            else:
                raise exceptions.NeoDAOTypeError(str(type(node)))

        return list_node_ret.__len__()

    def get_node_property(self, node_type, ** args):
        """ Get the corresponding Nodes from the DataBase.
            This function allows you to get a single Node, or a list of Nodes, with its properties by giving at least one property.
            Use exemple:  get_node_property("Module", name="portal"), get all modules named "portal" from database
        :param node_type: The Node type (Core, Module, SubModule or Plugin)
        :param args: Node properties. Exemple: name="portal", version="0.3.5"
        :return: A list of object of type: Core, Module, SubModule or Plugin (from module_cls) with its properties
        """
        elements = []
        node_type = module_cls.ArianeNode.format_node_type(node_type)
        concrete_node = module_cls.ArianeNode.create_subclass(node_type)
        if concrete_node is not None:
            if concrete_node.check_properties(**args) is True:
                statement = ""
                for key in args.keys():
                    if concrete_node.check_current_property(key) is True:
                        statement += ""+key+":'"+args.get(key)+"',"
                statement = statement[:-1]

                ret_node = self.graph.cypher.execute("MATCH (n:"+node_type+" {"+statement+"}) RETURN n")
                for ret in ret_node:
                    node = ret.n
                    ariane_sub_node = module_cls.ArianeNode.create_subclass(node_type, **node.properties)
                    if ariane_sub_node is not None:
                        # TODO Ajouter dépendances!
                        elements.append(ariane_sub_node)
                    else:
                        raise exceptions.NeoDAODataFromDbError(**node.properties)
            else:
                raise exceptions.NeoDAOPropertyError(next(iter(args.keys())))
        else:
            raise exceptions.NeoDAOTypeError(node_type)

        # print(elements)
        return elements

    def create_db_neo(self, filename):

        state = "distribution"
        distribution = None
        list_rel = []
        try:
            with open(filename, 'r') as file:
                print('Reading file: ')
                for line in file:
                    # print(line)
                    list_param = line.split()
                    # print('list : ', list_param)
                    if "#" not in list_param:
                        # print('list param: ', list_param)
                        if "dependency:" in list_param:
                            state = "dependency"
                        elif state == "distribution" and "distribution" in list_param:
                            distribution = module_cls.Distribution(list_param[1], list_param[2])
                            state = "module"

                        elif state == "module" and "plugin" not in list_param and len(list_param) > 0:
                            mod_name = list_param[0]
                            mod_version = list_param[1]
                            mod_type = list_param[2]
                            mod = module_cls.Module(mod_name, mod_version, mod_type)

                            if len(list_param) > 3:
                                artifact_str = ".core"
                                if mod_type != "core":
                                    artifact_str = ""
                                submod_groupId = 'net.echinopsii.ariane.community'+artifact_str+'.'+mod_name
                                list_submod = list_param[3:]
                                for submod in list_submod:
                                    submod_artifactId = submod_groupId + '.' + submod
                                    mod.append(module_cls.SubModule(submod, mod_version, submod_groupId, submod_artifactId))

                            distribution.append_Module(mod)

                        elif state == "module" and "plugin" in list_param:
                            plugin_name = list_param[1]
                            plugin_version = list_param[2]
                            plugin = module_cls.Plugin(plugin_name, plugin_version)

                            if len(list_param) > 3:
                                submod_groupId = "net.echinopsii.ariane.community.plugin.rabbitmq"
                                list_submod = list_param[3:]
                                for submod in list_submod:
                                    submod_artifactId = submod_groupId + '.' + submod
                                    plugin.append((module_cls.SubModule(submod, plugin_version, submod_groupId, submod_artifactId)))

                            distribution.append_Plugin(plugin)

                        elif state == "dependency":
                            mod_name1 = list_param[0]
                            mod_name2 = list_param[1]
                            for mod in distribution.list_module:
                                if mod_name1 == mod.name:
                                    mod1 = mod
                                elif mod_name2 == mod.name:
                                    mod2 = mod
                            vmin = list_param[2]
                            vmax = list_param[3]
                            list_rel.append(Relationship.cast(
                                mod1.node, ("DEPENDS", {"version_min": vmin, "version_max": vmax}), mod2.node))

        except FileNotFoundError:
            raise exceptions.NeoDAOFileNotFound(filename)

        max_nid = self.get_max_nid()
        max_nid += 1

        self.graph.create(distribution.node)
        self.graph.cypher.execute(
            "MATCH (d:"+distribution.node_type+" {name:'"+distribution.name+"', version:'"+distribution.version+"'})"
            " SET d.nID = "+str(max_nid)+"")

        for mod in distribution.list_module:
            # print("get node is:", mod.get_node()), type(mod.get_node())
            max_nid += 1
            self.graph.create(mod.node)
            self.graph.cypher.execute(
                "MATCH (m:"+mod.node_type+" {name:'"+mod.name+"'}) SET m.nID = "+str(max_nid)+"")
            for submod in mod.list_submod:
                max_nid += 1
                self.graph.create(Relationship.cast(mod.node, "COMPOSED OF", submod.node))
                self.graph.cypher.execute(
                    "MATCH (m:"+submod.node_type+" {artifactId:'"+submod.artifactId+"'}) SET m.nID = "+str(max_nid)+"")

        for plugin in distribution.list_plugin:
            max_nid += 1
            self.graph.create(plugin.node)
            self.graph.cypher.execute(
                "MATCH (m:"+plugin.node_type+" {name:'"+plugin.name+"'}) SET m.nID = "+str(max_nid)+"")
            for submod in plugin.list_submod:
                max_nid += 1
                self.graph.create(Relationship.cast(plugin.node, "COMPOSED OF", submod.node))
                self.graph.cypher.execute(
                    "MATCH (m:"+submod.node_type+" {artifactId:'"+submod.artifactId+"'}) SET m.nID = "+str(max_nid)+"")

        for rel in list_rel:
            self.graph.create(rel)

        self.graph.cypher.execute("""START c=node(*)
        MATCH(c:Distribution), (m:Module) WITH c,collect(m) AS data
        FOREACH(d in data | CREATE UNIQUE (c)-[:DEPENDS]->(d))""")

        self.graph.cypher.execute("""START c=node(*)
        MATCH(c:Distribution), (p:Plugin) WITH c,collect(p) AS data
        FOREACH(d in data | CREATE UNIQUE (d)-[:COMPATIBLE]->(c))""")

    def get_max_nid(self):
        max_nid = 0
        recordlist = self.graph.cypher.execute("MATCH (n) RETURN max(n.nID) as nID")
        for record in recordlist:
            max_nid = record.nID
            if max_nid is None:
                max_nid = 0

        return max_nid