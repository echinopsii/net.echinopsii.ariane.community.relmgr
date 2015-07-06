from py2neo import Node
from neoDAO import daoFabric
__author__ = 'stanrenia'

#TODO Rennomer module_cls

class ArianeNode(object):

    def __init__(self, name, version):
        self.name = name
        self.version = version
        self.id = 0
        self.neodao = daoFabric.DaoFabric.get_neodao_instance()

    def check_properties(self, **args):
        for arg_key in args.keys():
            if arg_key in self.dir.keys():
                return True
        return False

    def check_current_property(self, p):
        if p in self.dir.keys():
            return True
        else:
            return False

    # def save(self):
    #     self.update_attr()
    #     neodao = daoFabric.DaoFabric.new_neo_dao()
    #     neodao.save_node(self)

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

            self.node, self.id = self.neodao.create_node(self.node_type, self.get_dir())
            for plugin in self.list_plugin:
                link_args = {"node": plugin.node, "relation": "COMPATIBLE WITH", "linked_node": self.node}
                rel = self.neodao.create_link(** link_args)
                self.list_relation.append(rel)
                plugin.add_related_node(rel, self.remove_related_node)

            for mod in self.list_module:
                link_args = {"node": self.node, "relation": "DEPENDS ON", "linked_node": mod.node}
                rel = self.neodao.create_link(** link_args)
                self.list_relation.append(rel)
                mod.add_related_node(rel, self.remove_related_node)

        else:
            dir = self.get_dir()
            dir["label"] = self.node_type
            self.node = self.neodao.save_node(**dir)

    def delete(self):
        for mod in self.list_module.copy():
            mod.delete()
        for plugin in self.list_plugin.copy():
            plugin.delete()
        for rel in self.list_relation:
            self.neodao.delete(rel)
        self.neodao.delete(self.node)

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

    def __init__(self, name, version, type="none"):
        super().__init__(name, version)
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

            self.node, self.id = self.neodao.create_node(self.node_type, self.get_dir())

            for submod in self.list_submod:
                self.create_relation(submod)

        else:
            # update properties in database
            dir = self.get_dir()
            dir["label"] = self.node_type
            self.node = self.neodao.save_node(**dir)

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
            self.neodao.delete(rel)
        self.neodao.delete(self.node)
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
        rel = self.neodao.create_link(** link_args)
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
        rel = self.neodao.create_link(** link_args)
        self.list_relation.append(rel)
        # Send "remove_related_node" function as argument
        submod.add_related_node(rel, self.remove_related_node)

    def __repr__(self):
        out = "Module( name = "+self.name+", version = "+self.version+", type = "+self.type+", nID = "+str(self.id)+")"
        return out

class SubModule(ArianeNode):

    def __init__(self, artifactId_name, version,  groupId="none", artifactId="none"):
        super().__init__(artifactId_name, version)
        self.node_type = self.__class__.__name__
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
            self.node, self.id = self.neodao.create_node(self.node_type, self.get_dir())
        else:
            dir = self.get_dir()
            dir["label"] = self.node_type
            self.node = self.neodao.save_node(**dir)

    def delete(self):
        """
        Delete its relationships and self from database.
        Notify Module/Plugin Object (the parent node) in order to update its list of related nodes (Module/Plugin
        related nodes are: SubModules)
        :return: Nothing
        """
        for rel in self.list_relation:
            self.neodao.delete(rel)
        self.neodao.delete(self.node)
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

            self.node, self.id = self.neodao.create_node(self.node_type, self.get_dir())

            for submod in self.list_submod:
                link_args = {"node": self.node, "relation": "COMPOSED OF", "linked_node": submod.node}
                rel = self.neodao.create_link(** link_args)
                self.list_relation.append(rel)
                # Send "remove_related_node" function as argument
                submod.add_related_node(rel, self.remove_related_node)
        else:
            dir = self.get_dir()
            dir["label"] = self.node_type
            self.node = self.neodao.save_node(**dir)

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
            self.neodao.delete(rel)
        self.neodao.delete(self.node)
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
