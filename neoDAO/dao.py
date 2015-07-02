from neoDAO import module_cls, exceptions
from py2neo import Node, Relationship, Graph
import sys

__author__ = 'stanrenia'

class NeoDAO(object):

    def __init__(self, graph):
        self.graph = graph

    def delete_data(self):
        self.graph.cypher.execute("match (p)-[r]->(m) Delete r,p,m")
        self.graph.cypher.execute("match (m) delete m")

    def set_node_property(self, nodes, **args):
        """
        Set given nodes properties in the Database
        :param nodes: a list of ArianeNode subclasses objects
        :param args: a dict with properties to set
        :return: number of ArianeNodes setted. So returns zero if nothing happened.
        """
        set = "SET "
        list_node_ret = []
        # To be sure we set an existent property.
        if "groupId" or "artifactId" or "name" or "version" or "type" or "distribution" in args.keys():
            for key in args.keys():
                # To be sure we set an existent property.
                if "groupId" or "artifactId" or "name" or "version" or "type" or "distribution" == key:
                    set += "n."+key+" = '"+args.get(key)+"',"
                    set = set[:-1]

            for node in nodes:
                if issubclass(node.__class__, module_cls.ArianeNode):
                    attr_name = "name"
                    if node is module_cls.Core:
                        attr_name = "distribution"

                    statement = """MATCH (n:"""+node.__class__.__name__+"""{"""+attr_name+""":'"""+node.name+"""',
                    version:'"""+node.version+"""'})""" + set + """ RETURN n"""

                    cypher_ret_nodes = self.graph.cypher.execute(statement)

                    for cypher_node in cypher_ret_nodes:
                        node_ret = cypher_node.n
                        if node_ret is not None:
                            list_node_ret.append(node_ret)
                else:
                    raise exceptions.NeoDAOTypeError(str(type(node)))
        else:
            raise exceptions.NeoDAOPropertyError(args.get(args.keys()[0]))

        return list_node_ret.__len__()

    def get_node_property(self, node_type, ** args):
        """ Get the corresponding Nodes from the DataBase.
            This function allows you to get a single Node, or a list of Nodes, with its properties by giving at least one property.
            Use exemple:  get_node_property("Module", name="portal"), get all modules named "portal" from database
        :param node_type: The Node type (Core, Module, SubModule or Plugin)
        :param args: Node properties. Exemple: name="portal", version="0.3.5"
        :return: A list of object of type: Core, Module, SubModule or Plugin (from module_cls) with its properties
        """
        #TODO CONTINUER
        ret_node = None
        elements = []
        keys = args.keys()
        correct_key = "izi"
        correct_key = [key for key, value in args.items() if ("groupId" or "artifactId" or "name" or "version" or "type" or "distribution") == key]
        print("ck = ", correct_key)
        if correct_key.__len__() > 0:
            node_type = node_type.lower()
            node_type = node_type.capitalize()
            if node_type in ["Core", "Module", "Submodule", "Plugin"]:
                if node_type == "Submodule":
                    node_type = "SubModule"

                statement = ""
                for key in keys:
                    statement += ""+key+":'"+args.get(key)+"',"
                statement = statement[:-1]

                ar_node = module_cls.ArianeNode("test", "tmp")

                ret_node = self.graph.cypher.execute("MATCH (n:"+node_type+" {"+statement+"}) RETURN n")
                for ret in ret_node:
                    node = ret.n
                    ar_sub_node = ar_node.create_subclass(node_type, **node.properties)
                    if ar_sub_node is not None:
                        elements.append(ar_sub_node)

            else:
                raise exceptions.NeoDAOLabelError(node_type)
        else:
            raise exceptions.NeoDAOPropertyError(args.get(args.keys()[0]))

        #print(elements)
        return elements

    def create_db_neo(self, filename):

        state = "core"
        core = None
        list_rel = []
        try:
            with open(filename, 'r') as file:
                print('Reading file: ')

                for line in file:
                    #print(line)
                    list_param = line.split()
                    #print('list : ', list_param)
                    if "#" not in list_param:
                        #print('list param: ', list_param)
                        if "dependency:" in list_param:
                            state = "dependency"
                        elif state == "core" and "core" in list_param:
                            core = module_cls.Core(list_param[1], list_param[2])
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

                            core.append_Module(mod)

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

                            core.append_Plugin(plugin)

                        elif state == "dependency":
                            mod_name1 = list_param[0]
                            mod_name2 = list_param[1]
                            for mod in core.list_module:
                                if mod_name1 == mod.name:
                                    mod1 = mod
                                elif mod_name2 == mod.name:
                                    mod2 = mod
                            vmin = list_param[2]
                            vmax = list_param[3]
                            list_rel.append(Relationship.cast(mod1.node, ("DEPENDS", {"version_min": vmin, "version_max": vmax}), mod2.node))

        except FileNotFoundError:
            raise exceptions.NeoDAOFileNotFound(filename)

        self.graph.create(core.node)

        for mod in core.list_module:
            #print("get node is:", mod.get_node()), type(mod.get_node())
            self.graph.create(mod.node)
            for submod in mod.list_submod:
                self.graph.create(Relationship.cast(mod.node, "COMPOSED OF", submod.node))

        for plugin in core.list_plugin:
            self.graph.create(plugin.node)
            for submod in plugin.list_submod:
                self.graph.create(Relationship.cast(plugin.node, "COMPOSED OF", submod.node))

        for rel in list_rel:
            self.graph.create(rel)

        self.graph.cypher.execute("""START c=node(*)
        MATCH(c:Core), (m:Module) WITH c,collect(m) AS data
        FOREACH(d in data | CREATE UNIQUE (c)-[:DEPENDS]->(d))""")

        self.graph.cypher.execute("""START c=node(*)
        MATCH(c:Core), (p:Plugin) WITH c,collect(p) AS data
        FOREACH(d in data | CREATE UNIQUE (d)-[:COMPATIBLE]->(c))""")


