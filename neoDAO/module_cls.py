from py2neo import Node
# from neoDAO import daoFabric
__author__ = 'stanrenia'

#TODO Rennomer module_cls

class ArianeNode(object):

    def __init__(self, name, version):
        self.name = name
        self.version = version
        self.id = 0

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
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        self.node = Node.cast(self.dir)
        self.node.labels.add(self.node_type)

    def append_Module(self, module):
        self.list_module.append(module)

    def append_Plugin(self, plugin):
        self.list_module.append(plugin)

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
        self.dir = {"name": self.name, "version": self.version, "type": self.type, "nID": self.id}
        self.node = Node.cast(self.dir)
        self.node.labels.add(self.node_type)

    def append(self, submod):
        self.list_submod.append(submod)

    def update_attr(self):
        self.dir = {"name": self.name, "version": self.version, "type": self.type, "nID": self.id}
        self.node = Node.cast(self.dir)
        self.node.labels.add(self.node_type)

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
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        self.node = Node.cast(self.dir)
        self.node.labels.add(self.node_type)

    def append(self,submod):
        self.list_submod.append(submod)

    def update_attr(self):
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        self.node = Node.cast(self.dir)
        self.node.labels.add(self.node_type)

    def __repr__(self):
        out = "Plugin( name = "+self.name+", version = "+self.version+", nID = "+str(self.id)+")"
        return out
