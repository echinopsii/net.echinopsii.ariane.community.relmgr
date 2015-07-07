from py2neo import Node
from ariane_deliverytool.DAO import graphFabric
__author__ = 'stanrenia'
# TODO: Submodule Service

class ArianeDeliveryService(object):
    graph_dao = None

    def __init__(self, graph_dao_args):
        ArianeDeliveryService.graph_dao = graphFabric.DaoFabric.make(graph_dao_args)
        self.graph_dao_self = ArianeDeliveryService.graph_dao
        self.submodule_service = SubModuleService()

    def get_all(self):
        pass

    def find(self, args):
        pass

    def get_related_nodes(self, args):
        pass

    def get_unique(self, args):
        pass

class ModuleService(ArianeDeliveryService):
    @staticmethod
    def cast_from_neo(args):
        return Module(args["name"], args["version"], args["type"], args["nID"])

class SubModuleService(ArianeDeliveryService):
    def __init__(self):
        pass

    def get_all(self, module):
        """
        get all submodules from a given module
        :param module: Module/Plugin object
        :return: a list of all SubModule object related to the module
        """
        list_submod = []
        args = {"label": self.get_label(), "node": module.node, "relation": "COMPOSED OF"}
        list_relation = ArianeDeliveryService.graph_dao.get_all(args)
        for rel in list_relation:
            sub = SubModuleService.cast_from_neo(rel.end_node.properties)
            list_submod.append(sub)
        return list_submod

    def get_related_nodes(self, args):
        related_nodes = None
        label = self.get_label()
        reverse = True
        if type(args) is dict:
            if self.check_dict_properties(args) is True:
                related_nodes = self._search_related_nodes(args, label, reverse)
        elif type(args) is SubModule:
            args = args.get_dir()
            related_nodes = self._search_related_nodes(args, label, reverse)
        elif type(args) is list:
            if self.check_list_type(args) is True:
                related_nodes = []
                for arg in args:
                    param = arg.get_dir()
                    r = self._search_related_nodes(param, label, reverse)
                    if r is not None:
                        related_nodes.append(r)
                if len(related_nodes) == 0:
                    related_nodes = None
        return related_nodes

    def _search_related_nodes(self, args, label, reverse):
        args["label"] = label
        args["reverse"] = reverse
        related_nodes = ArianeDeliveryService.graph_dao.get_related_nodes(args)
        if related_nodes is not None:
            related_nodes = self._cast_related_nodes(related_nodes)
        return related_nodes

    def _cast_related_nodes(self, related_nodes):
        if related_nodes is not None:
            # TODO cast pour Relation
            # boucler pour la list des dict
            if type(related_nodes) is dict:
                start_node = related_nodes["start"]
                start_node = SubModuleService.cast_from_neo(start_node.properties)
                end_nodes = related_nodes["related_nodes"]
                relations = related_nodes["relations"]
                related_nodes["start"] = start_node
                related_nodes["related_nodes"] = []
                for i, rel in enumerate(relations):
                    mod = end_nodes[i]
                    mod = ModuleService.cast_from_neo(mod.properties)
                    start_node.add_related_node(rel, mod.remove_related_node)
                    related_nodes["related_nodes"].append(mod)
                return related_nodes

    def find(self, args):
        found = None
        dir = {"args_type": "dict", "label": self.get_label()}
        if self.check_dict_properties(args) is True:
            args.update(dir)
            found = ArianeDeliveryService.graph_dao.find(args)
        elif type(args) is SubModule:
            args = args.get_dir()
            args.update(dir)
            found = ArianeDeliveryService.graph_dao.find(args)
        elif type(args) is list:
            if self.check_list_type(args) is True:
                found = []
                for arg in args:
                    param = arg.get_dir()
                    param.update(dir)
                    f = ArianeDeliveryService.graph_dao.find(param)
                    if f is not None:
                        found.append(f[0])
                if len(found) == 0:
                    found = None

        if len(found) > 0:
            found_copy = found.copy()
            found = []
            for fo in found_copy:
                found.append(SubModuleService.cast_from_neo(fo.properties))

        return found

    def get_unique(self, args):
        """
        get a unique node from database.
        :param args: dict which contains unique node identifiers (primary key equivalent, ex: id, name+version, ...)
        :return: the unique node found in database (py2neo.Node object).
                If no node matches, return None
                If multiple nodes matches, return 0
        """
        if self.check_dict_properties(args) is True:
            args["label"] = self.get_label()
            node = ArianeDeliveryService.graph_dao.get_unique(args)
            if (node is not None) and (type(node) is not int):
                    node = SubModuleService.cast_from_neo(node.properties)
            return node
        else:
            return None

    @staticmethod
    def cast_from_neo(args):
        return SubModule(args["name"], args["version"], args["groupId"], args["artifactId"], args["nID"])

    def check_list_type(self, args):
        if type(args) is list:
            for arg in args:
                if type(arg) is not SubModule:
                    return False
            return True

    def check_dict_properties(self, args):
        sub_model = SubModule("model", "model")
        if type(args) is dict:
            return sub_model.check_properties(args)
        else:
            return False

    def get_label(self):
        sub_model = SubModule("model", "model")
        return sub_model.node_type

class ArianeNode(object):

    def __init__(self, name, version):
        self.name = name
        self.version = version
        self.id = 0

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
    def create_subclass(node_type, **args):
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

    def __init__(self, name, version):
        super().__init__(name, version)
        self.node_type = self.__class__.__name__
        self.list_module = []
        self.list_plugin = []
        self.list_relation = []
        self.list_related_node = []
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        self.node = Node.cast(self.dir)
        self.node.labels.add(self.node_type)

    def add_Module(self, module):
        self.list_module.append(module)

    def add_Plugin(self, plugin):
        self.list_plugin.append(plugin)

    def get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        return self.dir

    def get_node(self):
        dir = self.get_dir()
        dir["label"] = self.node_type
        return  dir

    def save(self):
        if self.id == 0:
            for mod in self.list_module:
                mod.save()

            for plugin in self.list_plugin:
                plugin.save()

            self.node, self.id = ArianeDeliveryService.graph_dao.create_node(self.node_type, self.get_dir())
            for plugin in self.list_plugin:
                link_args = {"node": plugin.node, "relation": "COMPATIBLE WITH", "linked_node": self.node}
                rel = ArianeDeliveryService.graph_dao.create_link(** link_args)
                self.list_relation.append(rel)
                plugin.add_related_node(rel, self.remove_related_node)

            for mod in self.list_module:
                link_args = {"node": self.node, "relation": "DEPENDS ON", "linked_node": mod.node}
                rel = ArianeDeliveryService.graph_dao.create_link(** link_args)
                self.list_relation.append(rel)
                mod.add_related_node(rel, self.remove_related_node)

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

    def remove_related_node(self, rel, node):
        self.list_relation.remove(rel)
        if node.node_type == "Module":
            self.list_module.remove(node)
        else:
            self.list_plugin.remove(node)

    def update_attr(self):
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        self.node = Node.cast(self.dir)
        self.node.labels.add(self.node_type)

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
        self.node = Node.cast(self.dir)
        self.node.labels.add(self.node_type)

    def add_submodule(self, submod):
        self.list_submod.append(submod)
        if self.is_saved():
            self.create_relation(submod)

    def get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "type": self.type, "nID": self.id}
        return self.dir

    def is_saved(self):
        if self.id == 0:
            return False
        else:
            return True

    def save(self):
        if self.is_saved() is False:
            for submod in self.list_submod:
                submod.save()

            self.node, self.id = ArianeDeliveryService.graph_dao.create_node(self.node_type, self.get_dir())

            for submod in self.list_submod:
                self.create_relation(submod)

        else:
            # update properties in database
            dir = self.get_dir()
            dir["label"] = self.node_type
            self.node = ArianeDeliveryService.graph_dao.save_node(**dir)

    def delete(self):
        """
        Delete all related SubModules, relationships and self from database.
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

    def create_relation(self, submod):
        """
        Create a relation in database between self and a SubModule object.
        Update self relations list and the submodule's related node list
        :param submod: SubModule object
        :return: Nothing
        """
        link_args = {"node": self.node, "relation": "COMPOSED OF", "linked_node": submod.node}
        rel = ArianeDeliveryService.graph_dao.create_link(** link_args)
        self.list_relation.append(rel)
        # Send "remove_related_node" function as argument
        submod.add_related_node(rel, self.remove_related_node)

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
        self.node = Node.cast(self.dir)
        self.node.labels.add(self.node_type)
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
        Delete its relationships and self from database.
        Notify Module/Plugin Object (the parent node) in order to update its list of related nodes (Module/Plugin
        related nodes are: SubModules)
        :return: Nothing
        """
        for rel in self.list_relation:
            ArianeDeliveryService.graph_dao.delete(rel)
        ArianeDeliveryService.graph_dao.delete(self.node)
        for rel, node_remove_function in self.list_related_node:
            node_remove_function(rel, self)

    def update_attr(self):
        self.dir = {"name": self.artifactId_name, "version": self.version, "groupId": self.groupId,
                    "artifactId": self.artifactId, "nID": self.id}
        self.node = Node.cast(self.dir)
        self.node.labels.add(self.node_type)

    def __repr__(self):
        out = "SubModule(name = "+self.artifactId_name+", groupId = "+self.groupId+", artifactId = "+self.artifactId+"," \
            " nID = "+str(self.id)+")"
        return out

class Plugin(ArianeNode):

    def __init__(self, name, version):
        super().__init__(name, version)
        self.node_type = self.__class__.__name__
        self.type = "Plugin"
        self.list_submod = []
        self.list_relation = []
        self.list_related_node = []
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        self.node = Node.cast(self.dir)
        self.node.labels.add(self.node_type)

    def add_submodule(self,submod):
        self.list_submod.append(submod)

    def get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        return self.dir

    def save(self):
        if self.id == 0:
            for submod in self.list_submod:
                submod.save()

            self.node, self.id = ArianeDeliveryService.graph_dao.create_node(self.node_type, self.get_dir())

            for submod in self.list_submod:
                link_args = {"node": self.node, "relation": "COMPOSED OF", "linked_node": submod.node}
                rel = ArianeDeliveryService.graph_dao.create_link(** link_args)
                self.list_relation.append(rel)
                # Send "remove_related_node" function as argument
                submod.add_related_node(rel, self.remove_related_node)
        else:
            dir = self.get_dir()
            dir["label"] = self.node_type
            self.node = ArianeDeliveryService.graph_dao.save_node(**dir)

    def delete(self):
        """
        Delete all related SubModules, relationships and self from database.
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

    def add_related_node(self, rel, node_remove_function):
        self.list_relation.append(rel)
        self.list_related_node.append((rel, node_remove_function))

    def remove_related_node(self, rel, submod):
        self.list_relation.remove(rel)
        self.list_submod.remove(submod)

    def update_attr(self):
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        self.node = Node.cast(self.dir)
        self.node.labels.add(self.node_type)

    def __repr__(self):
        out = "Plugin( name = "+self.name+", version = "+self.version+", nID = "+str(self.id)+")"
        return out
