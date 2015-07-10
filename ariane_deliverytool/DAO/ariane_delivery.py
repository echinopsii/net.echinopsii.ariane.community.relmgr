from ariane_deliverytool.DAO import graphFabric

__author__ = 'stanrenia'
# TODO: good tests

class ArianeDeliveryService(object):
    graph_dao = None
    dao_type = None

    def __init__(self, graph_dao_args):
        ArianeDeliveryService.dao_type, ArianeDeliveryService.graph_dao = graphFabric.DaoFabric.make(graph_dao_args)
        self.submodule_service = SubModuleService()
        self.module_service = ModuleService()
        self.plugin_service = PluginService()
        self.distribution_service = DistributionService()

    def get_all(self, args):
        """ This method is defined in each ArianeDeliveryService subclasses
        Get all objects (of the same type as the corresponding service) related to the given node.
        Ex: submodule_service.get_all(module) gets all SubModule object related to module, a Module object
        :param args: ArianeNode subclass object. See each ArianeDeliveryService sublcasses for more details.
        :return: A list of ArianeNode sublass objects matching the request
        """
        pass

    def get_relations(self, args):
        """ This method is defined in ArianeDeliveryService subclasses
        Get all relations of an ArianeNode object. A relation is composed of: start_node, relation, end_node
        :param args: list of ArianeNode objects, a single Ariane object or a dictionary matching an existing node in
                    database
        :return: A list of ArianeRelation objects, or a list containing lists of ArianeRelation if args was list or dict
        """
        pass

    def find(self, args):
        found = None
        dir = {"args_type": "dict", "label": self._get_label()}
        if self._check_dict_properties(args) is True:
            args.update(dir)
            found = ArianeDeliveryService.graph_dao.find(args)
        elif type(args) in ArianeNode.__subclasses__():
            args = args._get_dir()
            args.update(dir)
            found = ArianeDeliveryService.graph_dao.find(args)
        elif type(args) is list:
            if self._check_list_type(args) is True:
                found = []
                for arg in args:
                    param = arg._get_dir()
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
                found.append(self._create_ariane_node(fo))
        return found

    def get_unique(self, args):
        """
       get a unique node from graph database.
       :param args: dict which contains unique node identifiers (primary key equivalent, ex: id, name+version, ...)
       :return: the unique node found in graph database (ArianeNode object).
               If no node matches, return None
               If multiple nodes matches, return 0
       """
        if self._check_dict_properties(args) is True:
            args["label"] = self._get_label()
            node = ArianeDeliveryService.graph_dao.get_unique(args)
            if (node is not None) and (type(node) is not int):
                node = self._create_ariane_node(node)
            return node
        else:
            return None

    def _get_relations(self, args, relations):
        ret = []
        if type(args) is list:
            for arg in args:
                if isinstance(arg, type(self._ariane_node)):
                    ret.append(self.__search_related_nodes(arg, relations))
        elif type(args) is dict:
            found = self.find(args)
            if found is not None:
                for f in found:
                    ret.append(self.__search_related_nodes(f, relations))
        elif isinstance(args, type(self._ariane_node)):
            return self.__search_related_nodes(args, relations)

        if len(ret) == 0:
            return None
        return ret

    def __search_related_nodes(self, args, relations):
        args = {"node": args.node, "relation": relations}
        list_relation = ArianeDeliveryService.graph_dao.get_relations(args)
        return self.__cast_related_nodes(list_relation)

    def __cast_related_nodes(self, related_nodes_list):
        """
        :param related_nodes_list:
        :return:
        """
        if related_nodes_list is not None:
            if type(related_nodes_list) is list:
                relation_list = []
                for rel in related_nodes_list:
                    rel_d = ArianeDeliveryService.graph_dao.get_relation_data(rel)
                    start_node = ArianeNode.create_subclass(rel_d["start_label"], rel_d["start_properties"])
                    end_node = ArianeNode.create_subclass(rel_d["end_label"], rel_d["end_properties"])
                    if (type(start_node) is not Distribution) and (type(end_node) is not SubModule):
                        start_node._add_node_to_notify(rel, end_node._remove_notifier_node)
                    else:
                        start_node, end_node = end_node, start_node
                        if (type(start_node) is not Distribution) and (type(end_node) is not SubModule):
                            start_node._add_node_to_notify(rel, end_node._remove_notifier_node)
                        start_node, end_node = end_node, start_node
                    relation_list.append(ArianeRelation(start_node, rel_d["relation"], end_node,
                                                        rel_d["rel_properties"]))
                return relation_list
        return None

    def _check_dict_properties(self, args):
        if type(args) is dict:
            return self._ariane_node._check_properties(args)
        else:
            return False

    def _check_list_type(self, args):
        if type(args) is list:
            for arg in args:
                if not isinstance(arg, type(self._ariane_node)):
                    return False
            return True

class DistributionService(ArianeDeliveryService):
    def __init__(self):
        self._ariane_node = Distribution("model", "model")

    def get_all(self, args=None):
        """ Get all distributions existing in database
        :param args:  None
        :return: a list of all Distribution objects existing in database
        """
        list_distrib = []
        args = {"reverse": False, "node": "Distribution", "relation": None}
        list_node = ArianeDeliveryService.graph_dao.get_all(args)
        for node in list_node:
            list_distrib.append(self._create_ariane_node(node))

        if len(list_distrib) == 0:
            list_distrib = None

        return list_distrib

    def get_relations(self, args):
        return self._get_relations(args, ["COMPATIBLE WITH", "DEPENDS ON"])

    @staticmethod
    def _create_ariane_node(node):
        args = ArianeDeliveryService.graph_dao.get_node_properties(node)
        return Distribution(args["name"], args["version"], args["nID"])

    def _get_label(self):
        return self._ariane_node.node_type

class ModuleService(ArianeDeliveryService):
    def __init__(self):
        self._ariane_node = Module("model", "model")

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
                list_mod.append(self._create_ariane_node(node))
        elif args is None:
            pass

        if len(list_mod) == 0:
            list_mod = None

        return list_mod

    def get_relations(self, args):
        return self._get_relations(args, ["COMPOSED OF", "DEPENDS ON"])

    @staticmethod
    def _create_ariane_node(node):
        args = ArianeDeliveryService.graph_dao.get_node_properties(node)
        return Module(args["name"], args["version"], args["type"], args["nID"])

    def _get_label(self):
        return self._ariane_node.node_type

class PluginService(ArianeDeliveryService):
    def __init__(self):
        self._ariane_node = Plugin("model", "model")

    def get_all(self, args=None):
        """ Get all plugins from a given distribution
        :param distribution: Distribution object
        :return: a list of all Plugin objects related to the distribution
        """
        list_plugin = []
        if type(args) is Distribution:
            args = {"reverse": True, "node": args.node, "relation": "COMPATIBLE WITH"}
            list_node = ArianeDeliveryService.graph_dao.get_all(args)
            for node in list_node:
                list_plugin.append(self._create_ariane_node(node))
        elif args is None:
            pass

        if len(list_plugin) == 0:
            list_plugin = None

        return list_plugin

    def get_relations(self, args):
        return self._get_relations(args, ["COMPOSED OF", "COMPATIBLE WITH"])

    def _create_ariane_node(self, node):
        args = ArianeDeliveryService.graph_dao.get_node_properties(node)
        return Plugin(args["name"], args["version"], args["nID"])

    def _get_label(self):
        return self._ariane_node.node_type

class SubModuleService(ArianeDeliveryService):
    def __init__(self):
        self._ariane_node = SubModule("model", "model")

    def get_all(self, module):
        """
        get all submodules from a given module or plugin
        :param module: Module/Plugin object
        :return: a list of all SubModule object related to the module
        """
        list_submod = []
        args = {"reverse": False, "node": module.node, "relation": "COMPOSED OF"}
        list_node = ArianeDeliveryService.graph_dao.get_all(args)
        for node in list_node:
            sub = self._create_ariane_node(node)
            list_submod.append(sub)
        return list_submod

    def get_relations(self, args):
        return self._get_relations(args, ["COMPOSED OF"])

    def _create_ariane_node(self, node):
        args = ArianeDeliveryService.graph_dao.get_node_properties(node)
        return SubModule(args["name"], args["version"], args["groupId"], args["artifactId"], args["nID"])

    def _get_label(self):
        return self._ariane_node.node_type

class ArianeRelation(object):
    def __init__(self, start, relation, end, properties):
        self.start = start
        self.relation = relation
        self.end = end
        self.properties = properties

    def __repr__(self):
        return "Relation: ("+self.start.__repr__()+")-[relation = "+self.relation+" ; "+str(self.properties)+"" \
            "]->("+self.end.__repr__()+")"

class ArianeNode(object):

    def __init__(self, name, version):
        self.name = name
        self.version = version
        self.id = 0

    def _is_saved(self):
        if self.id == 0:
            return False
        else:
            return True

    def _check_properties(self, args):
        for arg_key in args.keys():
            if arg_key in self.dir.keys():
                return True
        return False

    def _check_current_property(self, p):
        if p in self.dir.keys():
            return True
        else:
            return False

    @staticmethod
    def create_subclass(node_type, args):
        """ create ArianeNode subclass from by giving subclass name and attributes
        :param node_type: subclass name
        :param args: dictionary object, containing attribute names as keys and attribute values as values
        :return: the corresponding ArianeNode sublcass with attributes affected. None if node_type doesn't match
        """
        if args.__len__() == 0:
            args = {"name": "", "version": "", "type": "", "groupId": "", "artifactId": ""}

        if node_type == "Distribution":
            node = Distribution(args["name"], args["version"])
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

    def __eq__(self, other):
        if type(other) in ArianeNode.__subclasses__():
            dir = other._get_dir()
            eq_args = [val for key, val in self._get_dir().items() if (key in dir.keys()) and (val == dir.get(key))]
            if len(eq_args) == len(self._get_dir()):
                return True
        return False


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
        self.node = ArianeDeliveryService.graph_dao.init_node(self.node_type, self.dir)

    def _get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        return self.dir

    def save(self):
        if self.id == 0:
            for mod in self.list_module:
                mod.save()

            for plugin in self.list_plugin:
                plugin.save()

            self.node, self.id = ArianeDeliveryService.graph_dao.create_node(self.node_type, self._get_dir())
            for plugin in self.list_plugin:
                self.__create_relation(plugin, "COMPATIBLE WITH")

            for mod in self.list_module:
                self.__create_relation(mod, "DEPENDS ON")

        else:
            dir = self._get_dir()
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

    def add_module(self, module):
        self.list_module.append(module)
        if self._is_saved():
            self.__create_relation(module, "DEPENDS ON")

    def add_plugin(self, plugin):
        self.list_plugin.append(plugin)
        if self._is_saved():
            self.__create_relation(plugin, "COMPATIBLE WITH")

    def __create_relation(self, mod_plug, relation):
        link_args = {"node": mod_plug.node, "relation": relation, "linked_node": self.node}
        nid, rel = ArianeDeliveryService.graph_dao.create_link(** link_args)
        self.list_relation.append(rel)
        mod_plug._add_node_to_notify(rel, self._remove_notifier_node)
        if nid is not None:
            mod_plug.id = nid

    def _remove_notifier_node(self, rel, node):
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
        self.node = ArianeDeliveryService.graph_dao.init_node(self.node_type, self.dir)

    def _get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "type": self.type, "nID": self.id}
        return self.dir

    def save(self):
        if self._is_saved() is False:
            for submod in self.list_submod:
                submod.save()

            self.node, self.id = ArianeDeliveryService.graph_dao.create_node(self.node_type, self._get_dir())

            for submod in self.list_submod:
                self.__create_relation(submod)

        else:
            # update properties in graph database
            dir = self._get_dir()
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
        if self._is_saved():
            self.__create_relation(submod)

    def __create_relation(self, submod):
        """
        Create a relation in graph database between self and a SubModule object.
        Update self relations list and the submodule's related node list
        :param submod: SubModule object
        :return: Nothing
        """
        link_args = {"node": self.node, "relation": "COMPOSED OF", "linked_node": submod.node}
        nid, rel = ArianeDeliveryService.graph_dao.create_link(** link_args)
        self.list_relation.append(rel)
        # Send "_remove_notifier_node" function as argument
        submod._add_node_to_notify(rel, self._remove_notifier_node)
        if nid is not None:
            submod.id = nid

    def add_module_dependency(self, **mod_args):
        """
        Add Module to Module dependency.
        :param mod_args: dict with the following keys: "module": Module object, "version_min": str, "version_max": str
        :return: Nothing
        """
        properties = {"version_min": mod_args["version_min"], "version_max": mod_args["version_max"]}
        module = mod_args["module"]
        link_args = {"node": self.node, "relation": "DEPENDS ON", "linked_node": module.node, "properties": properties}
        nid, rel = ArianeDeliveryService.graph_dao.create_link(** link_args)
        self.list_module_dependency.append(module)
        self._add_node_to_notify(rel, module._remove_notifier_node)
        module.list_module_dependency.append(self)
        module._add_node_to_notify(rel, self._remove_notifier_node)
        if nid is not None:
            module.id = nid

    def _add_node_to_notify(self, rel, node_remove_function):
        """
        Update list: Add rel in list_relation. Add (rel,node_remove_function) tuple in list_related_node.
        :param rel: py2neo.Relationship Object. relation between self and Distribution/Module Object
        :param node_remove_function: Distribution/Module Object function(method) named "_remove_notifier_node".
        It's the solution used to notify the Distribution/Module Object
        :return:
        """
        self.list_relation.append(rel)
        self.list_related_node.append((rel, node_remove_function))

    def _remove_notifier_node(self, rel, node):
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
        self.list_relation = []
        self.list_related_node = []
        self.node = ArianeDeliveryService.graph_dao.init_node(self.node_type, self.dir)

    def _get_dir(self):
        self.dir = {"name": self.artifactId_name, "version": self.version, "groupId": self.groupId,
                    "artifactId": self.artifactId, "nID": self.id}
        return self.dir

    def _add_node_to_notify(self, rel, node_remove_function):
        self.list_relation.append(rel)
        self.list_related_node.append((rel, node_remove_function))

    def save(self):
        if self.id == 0:
            self.node, self.id = ArianeDeliveryService.graph_dao.create_node(self.node_type, self._get_dir())
        else:
            dir = self._get_dir()
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
        self.node = ArianeDeliveryService.graph_dao.init_node(self.node_type, self.dir)

    def _get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        return self.dir

    def save(self):
        if self.id == 0:
            for submod in self.list_submod:
                submod.save()

            self.node, self.id = ArianeDeliveryService.graph_dao.create_node(self.node_type, self._get_dir())

            for submod in self.list_submod:
                self.__create_relation(submod)
        else:
            dir = self._get_dir()
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
        if self._is_saved():
            self.__create_relation(submod)

    def __create_relation(self, submod):
        link_args = {"node": self.node, "relation": "COMPOSED OF", "linked_node": submod.node}
        nid, rel = ArianeDeliveryService.graph_dao.create_link(** link_args)
        self.list_relation.append(rel)
        # Send "_remove_notifier_node" function as argument
        submod._add_node_to_notify(rel, self._remove_notifier_node)
        if nid is not None:
            submod.id = nid

    def _add_node_to_notify(self, rel, node_remove_function):
        self.list_relation.append(rel)
        self.list_related_node.append((rel, node_remove_function))

    def _remove_notifier_node(self, rel, submod):
        self.list_relation.remove(rel)
        self.list_submod.remove(submod)

    def __repr__(self):
        out = "Plugin( name = "+self.name+", version = "+self.version+", nID = "+str(self.id)+")"
        return out
