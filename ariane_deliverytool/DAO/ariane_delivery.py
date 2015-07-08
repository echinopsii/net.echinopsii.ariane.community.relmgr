from py2neo import Node
from ariane_deliverytool.DAO import graphFabric
__author__ = 'stanrenia'
# TODO: good tests

class ArianeDeliveryService(object):
    graph_dao = None
    dao_type = None
    neo4j = "neo4j"
    orientdb = "orientdb"

    def __init__(self, graph_dao_args):
        ArianeDeliveryService.dao_type, ArianeDeliveryService.graph_dao = graphFabric.DaoFabric.make(graph_dao_args)
        self.graph_dao_self = ArianeDeliveryService.graph_dao
        self.submodule_service = SubModuleService()
        self.module_service = ModuleService()
        self.plugin_service = PluginService()
        self.distribution_service = DistributionService()

    def get_all(self, args):
        pass

    def get_relations(self, args):
        pass

    def find(self, args):
        found = None
        dir = {"args_type": "dict", "label": self._get_label()}
        if self._check_dict_properties(args) is True:
            args.update(dir)
            found = ArianeDeliveryService.graph_dao.find(args)
        elif type(args) in ArianeNode.__subclasses__():
            args = args.get_dir()
            args.update(dir)
            found = ArianeDeliveryService.graph_dao.find(args)
        elif type(args) is list:
            if self._check_list_type(args) is True:
                found = []
                for arg in args:
                    param = arg.get_dir()
                    param.update(dir)
                    f = ArianeDeliveryService.graph_dao.find(param)
                    if f is not None:
                        found.append(f[0])
                if len(found) == 0:
                    found = None

        if (found is not None) and (len(found) > 0):
            found_copy = found.copy()
            found = []
            for fo in found_copy:
                found.append(self.cast(fo))
        return found

    def get_unique(self, args):
        """
       get a unique node from graph database.
       :param args: dict which contains unique node identifiers (primary key equivalent, ex: id, name+version, ...)
       :return: the unique node found in graph database (py2neo.Node object).
               If no node matches, return None
               If multiple nodes matches, return 0
       """
        if self._check_dict_properties(args) is True:
            args["label"] = self._get_label()
            node = ArianeDeliveryService.graph_dao.get_unique(args)
            if (node is not None) and (type(node) is not int):
                node = self.cast(node)
            return node
        else:
            return None

    def cast(self, node):
        """ Create an ArianeNode object child from a graph node object, with same properties
            Note: cast_from_neo is not implemented here, but it is in
        :param node: Graph node object (ex: py2neo.Node)
        :return: an ArianeNode object child (Module,Plugin, etc.)
        """
        if ArianeDeliveryService.dao_type == ArianeDeliveryService.neo4j:
            return self.cast_from_neo(node.properties)
        elif ArianeDeliveryService.dao_type == ArianeDeliveryService.orientdb:
            return None
        else:
            return None

    @staticmethod
    def cast_node_from_label(node, label):
        if label == "SubModule":
            return SubModuleService().cast(node)
        elif label == "Module":
            return ModuleService().cast(node)
        elif label == "Distribution":
            return DistributionService().cast(node)
        elif label == "Plugin":
            return PluginService().cast(node)

    @staticmethod
    def cast_relation(relation, start=None, end=None):
        """ Create an ArianeRelation object, from a graph relation object (ex: py2neo.RelationShip).
            ArianeRelation object uses 2 ArianeNode Object children and a str object. In order to create 2 ArianeNode
            Object, we need to get both node labels contained the graph relation object.
        :param relation: graph database relation object (ex: py2neo.RelationShip for a neo4j relation)
        :return: an ArianeRelation object
        """
        if ArianeDeliveryService.dao_type == ArianeDeliveryService.neo4j:
            if (start is None) and (end is None):
                """Get node label and create ArianeNode sublcass (child) with it, for start and end node"""
                for l in relation.start_node.labels:
                    label = l
                    break
                start_node = ArianeNode.create_subclass(label, relation.start_node.properties)
                for l in relation.end_node.labels:
                    label = l
                    break
                end_node = ArianeNode.create_subclass(label, relation.end_node.properties)
                return ArianeRelation(start_node, relation.type, end_node)
            else:
                return ArianeRelation(start, relation, end)
        elif ArianeDeliveryService.dao_type == ArianeDeliveryService.orientdb:
            return None
        else:
            return None

    @staticmethod
    def create_graph_node(label, args):
        if ArianeDeliveryService.dao_type == ArianeDeliveryService.neo4j:
            node = Node.cast(args)
            node.labels.add(label)
            return node
        else:
            return None

    def _get_relations(self, args, relations):
        ret = []
        if type(args) is list:
            for arg in args:
                if isinstance(arg, type(self.ariane_node)):
                    ret.append(self._search_related_nodes(arg, relations))
        elif type(args) is dict:
            found = self.find(args)
            if found is not None:
                for f in found:
                    ret.append(self._search_related_nodes(f, relations))
        elif isinstance(args, type(self.ariane_node)):
            return self._search_related_nodes(args, relations)

        if len(ret) == 0:
            return None
        return ret

    def _search_related_nodes(self, args, relations):
        args = {"node": args.node, "relation": relations}
        list_relation = ArianeDeliveryService.graph_dao.get_new_related(args)
        return self._cast_related_nodes(list_relation)

    def _cast_related_nodes(self, related_nodes_list):
        """
        Check dao_type
        :param related_nodes_list:
        :return:
        """
        if related_nodes_list is not None:
            if type(related_nodes_list) is list:
                relation_list = []
                for rel in related_nodes_list:
                    if ArianeDeliveryService.dao_type == ArianeDeliveryService.neo4j:
                        start_node = rel.start_node
                        label_s = [label for label in start_node.labels][0]
                        mod = rel.end_node
                        label_m = [label for label in mod.labels][0]
                        start_node = ArianeDeliveryService.cast_node_from_label(start_node, label_s)
                        mod = ArianeDeliveryService.cast_node_from_label(mod, label_m)
                    if (type(start_node) is not Distribution) and (type(mod) is not SubModule):
                        start_node.add_related_node(rel, mod.remove_related_node)
                    relation_list.append(ArianeDeliveryService.cast_relation(rel.type, start_node, mod))
                return relation_list
        return None

    def _check_dict_properties(self, args):
        if type(args) is dict:
            return self.ariane_node.check_properties(args)
        else:
            return False

    def _check_list_type(self, args):
        if type(args) is list:
            for arg in args:
                if not isinstance(arg, type(self.ariane_node)):
                    return False
            return True

class DistributionService(ArianeDeliveryService):
    def __init__(self):
        self.ariane_node = Distribution("model", "model")

    def get_all(self, args=None):
        """ Get all modules from a given distribution
        :param distribution: Distribution object
        :return: a list of all Module objects related to the distribution
        """
        list_distrib = []
        args = {"reverse": False, "node": "Distribution", "relation": None}
        list_node = ArianeDeliveryService.graph_dao.get_all(args)
        for node in list_node:
            list_distrib.append(self.cast(node))

        if len(list_distrib) == 0:
            list_distrib = None

        return list_distrib

    def get_relations(self, args):
        self._get_relations(args, ["COMPATIBLE WITH", "DEPENDS ON"])

    @staticmethod
    def cast_from_neo(args):
        return Distribution(args["name"], args["version"], args["nID"])

    def _get_label(self):
        return self.ariane_node.node_type

class ModuleService(ArianeDeliveryService):
    def __init__(self):
        self.ariane_node = Module("model", "model")

    def get_all(self, args=None):
        """ Get all modules from a given distribution
        :param distribution: Distribution object
        :return: a list of all Module objects related to the distribution
        """
        list_mod = []
        if type(args) is Distribution:
            # list_node = list_related_nodes["related_nodes"]
            args = {"reverse": True, "node": args.node, "relation": "DEPENDS ON"}
            list_node = ArianeDeliveryService.graph_dao.get_all(args)
            for node in list_node:
                list_mod.append(self.cast(node))
        elif args is None:
            pass

        if len(list_mod) == 0:
            list_mod = None

        return list_mod

    def get_relations(self, args):
        return self._get_relations(args, ["COMPOSED OF", "DEPENDS ON"])

    @staticmethod
    def cast_from_neo(args):
        return Module(args["name"], args["version"], args["type"], args["nID"])

    def _get_label(self):
        return self.ariane_node.node_type

class PluginService(ArianeDeliveryService):
    def __init__(self):
        self.ariane_node = Plugin("model", "model")

    def get_all(self, args=None):
        """ Get all modules from a given distribution
        :param distribution: Distribution object
        :return: a list of all Module objects related to the distribution
        """
        list_plugin = []
        if type(args) is Distribution:
            args = {"reverse": True, "node": args.node, "relation": "COMPATIBLE WITH"}
            list_node = ArianeDeliveryService.graph_dao.get_all(args)
            for node in list_node:
                list_plugin.append(self.cast(node))
        elif args is None:
            pass

        if len(list_plugin) == 0:
            list_plugin = None

        return list_plugin

    def get_relations(self, args):
        return self._get_relations(args, ["COMPOSED OF", "COMPATIBLE WITH"])

    def cast_from_neo(self, args):
        return Plugin(args["name"], args["version"], args["nID"])

    def _get_label(self):
        return self.ariane_node.node_type

class SubModuleService(ArianeDeliveryService):
    def __init__(self):
        self.ariane_node = SubModule("model", "model")

    def get_all(self, module):
        """
        get all submodules from a given module
        :param module: Module/Plugin object
        :return: a list of all SubModule object related to the module
        """
        list_submod = []
        args = {"reverse": False, "node": module.node, "relation": "COMPOSED OF"}
        list_node = ArianeDeliveryService.graph_dao.get_all(args)
        for node in list_node:
            sub = self.cast(node)
            list_submod.append(sub)
        return list_submod

    def get_relations(self, args):
        return self._get_relations(args, ["COMPOSED OF"])

    def cast_from_neo(self, args):
        return SubModule(args["name"], args["version"], args["groupId"], args["artifactId"], args["nID"])

    def _get_label(self):
        return self.ariane_node.node_type

class ArianeRelation(object):
    def __init__(self, start, relation, end):
        self.start = start
        self.relation = relation
        self.end = end

    def __repr__(self):
        return "Relation: start = "+self.start.__repr__()+", relation name = "+self.relation+", end = "+self.end.__repr__()+""

class ArianeNode(object):

    def __init__(self, name, version):
        self.name = name
        self.version = version
        self.id = 0

    def is_saved(self):
        if self.id == 0:
            return False
        else:
            return True

    def check_properties(self, args):
        for arg_key in args.keys():
            if arg_key in self.dir.keys():
                return True
        return False

    def check_current_property(self, p):
        if p in self.dir.keys():
            return True
        else:
            return False

    @staticmethod
    def format_node_type(node_type):
        node_type = str(node_type)
        node_type = node_type.lower()
        node_type = node_type.capitalize()
        if node_type in ["Distribution", "Module", "Submodule", "Plugin"]:
            if node_type == "Submodule":
                node_type = "SubModule"
        return node_type

    @staticmethod
    def create_subclass(node_type, args):
        # print("args: ", args)
        if args.__len__() == 0:
            args = {"name": "", "version": "", "type": "", "groupId": "", "artifactId": ""}

        if node_type == "Distribution":
            node = Distribution(args["distribution"], args["version"])
        elif node_type == "Module":
            node = Module(args["name"], args["version"], args["type"])
        elif node_type == "Plugin":
            node = Plugin(args["name"], args["version"])
        elif node_type == "SubModule":
            node = SubModule(args["name"], args["version"], args["groupId"], args["artifactId"])
        else:
            return None

        if "nID" in args.keys():
            node.id = args["nID"]

        return node

class Distribution(ArianeNode):

    def __init__(self, name, version, id=0):
        super().__init__(name, version)
        self.id = id
        self.node_type = self.__class__.__name__
        self.list_module = []
        self.list_plugin = []
        self.list_relation = []
        self.list_related_node = []
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        self.node = ArianeDeliveryService.create_graph_node(self.node_type, self.dir)

    def get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        return self.dir

    def save(self):
        if self.id == 0:
            for mod in self.list_module:
                mod.save()

            for plugin in self.list_plugin:
                plugin.save()

            self.node, self.id = ArianeDeliveryService.graph_dao.create_node(self.node_type, self.get_dir())
            for plugin in self.list_plugin:
                self.create_relation(plugin, "COMPATIBLE WITH")

            for mod in self.list_module:
                self.create_relation(mod, "DEPENDS ON")

        else:
            dir = self.get_dir()
            dir["label"] = self.node_type
            self.node = ArianeDeliveryService.graph_dao.save_node(**dir)

    def delete(self):
        for mod in self.list_module.copy():
            mod.delete()
        for plugin in self.list_plugin.copy():
            plugin.delete()
        for rel in self.list_relation:
            ArianeDeliveryService.graph_dao.delete(rel)
        ArianeDeliveryService.graph_dao.delete(self.node)

    def add_Module(self, module):
        self.list_module.append(module)
        if self.is_saved():
            self.create_relation(module, "DEPENDS ON")

    def add_Plugin(self, plugin):
        self.list_plugin.append(plugin)
        if self.is_saved():
            self.create_relation(plugin, "COMPATIBLE WITH")

    def create_relation(self, mod_plug, relation):
        link_args = {"node": mod_plug.node, "relation": relation, "linked_node": self.node}
        rel = ArianeDeliveryService.graph_dao.create_link(** link_args)
        self.list_relation.append(rel)
        mod_plug.add_related_node(rel, self.remove_related_node)

    def remove_related_node(self, rel, node):
        self.list_relation.remove(rel)
        if node.node_type == "Module":
            self.list_module.remove(node)
        else:
            self.list_plugin.remove(node)

    def __repr__(self):
        out = "Distribution( name = "+self.name+", version = "+self.version+", nID = "+str(self.id)+")"
        return out

class Module(ArianeNode):

    def __init__(self, name, version, type="none", id=0):
        super().__init__(name, version)
        self.id = id
        self.node_type = self.__class__.__name__
        self.type = type
        self.list_submod = []
        self.list_module_dependency = []
        self.list_relation = []
        self.list_related_node = []
        self.dir = {"name": self.name, "version": self.version, "type": self.type, "nID": self.id}
        self.node = ArianeDeliveryService.create_graph_node(self.node_type, self.dir)

    def get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "type": self.type, "nID": self.id}
        return self.dir

    def save(self):
        if self.is_saved() is False:
            for submod in self.list_submod:
                submod.save()

            self.node, self.id = ArianeDeliveryService.graph_dao.create_node(self.node_type, self.get_dir())

            for submod in self.list_submod:
                self.create_relation(submod)

        else:
            # update properties in graph database
            dir = self.get_dir()
            dir["label"] = self.node_type
            self.node = ArianeDeliveryService.graph_dao.save_node(**dir)

    def delete(self):
        """
        Delete all related SubModules, relationships and self from graph database.
        Notify Distribution Object (the parent node) in order to update its list of related nodes (Distribution related
        nodes are: Module and Plugin)
        :return: Nothing
        """
        for submod in self.list_submod.copy():
            submod.delete()
        for rel in self.list_relation:
            ArianeDeliveryService.graph_dao.delete(rel)
        ArianeDeliveryService.graph_dao.delete(self.node)
        for rel, node_remove_function in self.list_related_node:
            node_remove_function(rel, self)

    def add_submodule(self, submod):
        self.list_submod.append(submod)
        if self.is_saved():
            self.create_relation(submod)

    def create_relation(self, submod):
        """
        Create a relation in graph database between self and a SubModule object.
        Update self relations list and the submodule's related node list
        :param submod: SubModule object
        :return: Nothing
        """
        link_args = {"node": self.node, "relation": "COMPOSED OF", "linked_node": submod.node}
        rel = ArianeDeliveryService.graph_dao.create_link(** link_args)
        self.list_relation.append(rel)
        # Send "remove_related_node" function as argument
        submod.add_related_node(rel, self.remove_related_node)

    def add_dependency(self, **mod_args):
        """
        Add Module to Module dependency.
        :param mod_args: dict with the following keys: "module": Module object, "version_min": str, "version_max": str
        :return: Nothing
        """
        properties = {"version_min": mod_args["version_min"], "version_max": mod_args["version_max"]}
        module = mod_args["module"]
        link_args = {"node": self.node, "relation": "DEPENDS ON", "linked_node": module.node, "properties": properties}
        rel = ArianeDeliveryService.graph_dao.create_link(** link_args)
        self.list_module_dependency.append(module)
        self.add_related_node(rel, module.remove_related_node)
        module.list_module_dependency.append(self)
        module.add_related_node(rel, self.remove_related_node)

    def add_related_node(self, rel, node_remove_function):
        """
        Update list: Add rel in list_relation. Add (rel,node_remove_function) tuple in list_related_node.
        :param rel: py2neo.Relationship Object. relation between self and Distribution/Module Object
        :param node_remove_function: Distribution/Module Object function(method) named "remove_related_node".
        It's the solution used to notify the Distribution/Module Object
        :return:
        """
        self.list_relation.append(rel)
        self.list_related_node.append((rel, node_remove_function))

    def remove_related_node(self, rel, node):
        """
        This method is called when a related SubModule or Module is deleted.
        Update relation list and module/submodule list
        :param rel: py2neo.RelationShip object to remove from the list
        :param node: SubModule or Module object to remove from the list
        :return:
        """
        self.list_relation.remove(rel)
        if node.node_type == "Module":
            self.list_module_dependency.remove(node)
        else:
            self.list_submod.remove(node)

    def __repr__(self):
        out = "Module( name = "+self.name+", version = "+self.version+", type = "+self.type+", nID = "+str(self.id)+")"
        return out

class SubModule(ArianeNode):

    def __init__(self, artifactId_name, version,  groupId="none", artifactId="none", id=0):
        super().__init__(artifactId_name, version)
        self.node_type = self.__class__.__name__
        self.id = id
        self.groupId = groupId
        self.artifactId = artifactId
        self.artifactId_name = artifactId_name
        self.dir = {"name": self.artifactId_name, "version": self.version, "groupId": self.groupId,
                    "artifactId": self.artifactId, "nID": self.id}
        self.node = ArianeDeliveryService.create_graph_node(self.node_type, self.dir)
        self.list_relation = []
        self.list_related_node = []

    def get_dir(self):
        self.dir = {"name": self.artifactId_name, "version": self.version, "groupId": self.groupId,
                    "artifactId": self.artifactId, "nID": self.id}
        return self.dir

    def add_related_node(self, rel, node_remove_function):
        self.list_relation.append(rel)
        self.list_related_node.append((rel, node_remove_function))

    def save(self):
        if self.id == 0:
            self.node, self.id = ArianeDeliveryService.graph_dao.create_node(self.node_type, self.get_dir())
        else:
            dir = self.get_dir()
            dir["label"] = self.node_type
            self.node = ArianeDeliveryService.graph_dao.save_node(**dir)

    def delete(self):
        """
        Delete its relationships and self from graph database.
        Notify Module/Plugin Object (the parent node) in order to update its list of related nodes (Module/Plugin
        related nodes are: SubModules)
        :return: Nothing
        """
        for rel in self.list_relation:
            ArianeDeliveryService.graph_dao.delete(rel)
        ArianeDeliveryService.graph_dao.delete(self.node)
        for rel, node_remove_function in self.list_related_node:
            node_remove_function(rel, self)

    def __repr__(self):
        out = "SubModule(name = "+self.artifactId_name+", version = "+self.version+", groupId = "+self.groupId+", artifactId = "+self.artifactId+"," \
            " nID = "+str(self.id)+")"
        return out

class Plugin(ArianeNode):

    def __init__(self, name, version, id=0):
        super().__init__(name, version)
        self.node_type = self.__class__.__name__
        self.id = id
        self.type = "Plugin"
        self.list_submod = []
        self.list_relation = []
        self.list_related_node = []
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        self.node = ArianeDeliveryService.create_graph_node(self.node_type, self.dir)

    def get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        return self.dir

    def save(self):
        if self.id == 0:
            for submod in self.list_submod:
                submod.save()

            self.node, self.id = ArianeDeliveryService.graph_dao.create_node(self.node_type, self.get_dir())

            for submod in self.list_submod:
                self.create_relation(submod)
        else:
            dir = self.get_dir()
            dir["label"] = self.node_type
            self.node = ArianeDeliveryService.graph_dao.save_node(**dir)

    def delete(self):
        """
        Delete all related SubModules, relationships and self from graph database.
        Notify Distribution Object (the parent node) in order to update its list of related nodes (Distribution related
        nodes are: Module and Plugin)
        :return: Nothing
        """
        for submod in self.list_submod.copy():
            submod.delete()
        for rel in self.list_relation:
            ArianeDeliveryService.graph_dao.delete(rel)
        ArianeDeliveryService.graph_dao.delete(self.node)
        for rel, node_remove_function in self.list_related_node:
            node_remove_function(rel, self)

    def add_submodule(self,submod):
        self.list_submod.append(submod)
        if self.is_saved():
            self.create_relation(submod)

    def create_relation(self, submod):
        link_args = {"node": self.node, "relation": "COMPOSED OF", "linked_node": submod.node}
        rel = ArianeDeliveryService.graph_dao.create_link(** link_args)
        self.list_relation.append(rel)
        # Send "remove_related_node" function as argument
        submod.add_related_node(rel, self.remove_related_node)

    def add_related_node(self, rel, node_remove_function):
        self.list_relation.append(rel)
        self.list_related_node.append((rel, node_remove_function))

    def remove_related_node(self, rel, submod):
        self.list_relation.remove(rel)
        self.list_submod.remove(submod)

    def __repr__(self):
        out = "Plugin( name = "+self.name+", version = "+self.version+", nID = "+str(self.id)+")"
        return out
