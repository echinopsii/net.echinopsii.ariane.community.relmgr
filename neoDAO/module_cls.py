from py2neo import Node

__author__ = 'stanrenia'

#TODO Rennomer module_cls

class ArianeNode(object):

    def __init__(self, name, version):
        self.name = name
        self.version = version

    def create_subclass(self, node_type, **args):
        if node_type == "Core":
            return Core(args["distribution"], args["version"])
        elif node_type == "Module":
            return Module(args["name"], args["version"], args["type"])
        elif node_type == "Plugin":
            return Plugin(args["name"], args["version"])
        elif node_type == "SubModule":
            return SubModule(args["name"], args["version"], args["groupId"], args["artifactId"])
        return None

class Core(ArianeNode):

    def __init__(self, distribution, version):
        super().__init__(distribution, version)
        self.list_module = []
        self.list_plugin = []
        self.node = Node.cast({"distribution": self.name, "version": self.version})
        self.node.labels.add("Core")

    def append_Module(self, module):
        self.list_module.append(module)

    def append_Plugin(self, plugin):
        self.list_module.append(plugin)

    def __repr__(self):
        out = "Core( distribution = "+self.distribution+", version = "+self.version+" )"
        return out

class Module(ArianeNode):

    def __init__(self, name, version, type="none"):
        super().__init__(name, version)
        self.type = type
        self.list_submod = []
        self.dir = {"name": self.name, "version": self.version, "type": self.type}
        self.node = Node.cast(self.dir)
        self.node.labels.add("Module")

    def append(self, submod):
        self.list_submod.append(submod)

    def __repr__(self):
        out = "Module( name = "+self.name+", version = "+self.version+", type = "+self.type+")"
        return out

class SubModule(ArianeNode):

    def __init__(self, artifactId_name, version,  groupId="none", artifactId="none"):
        super().__init__(artifactId_name, version)
        self.groupId = groupId
        self.artifactId = artifactId
        self.artifactId_name = artifactId_name
        self.dir = {"name": self.artifactId_name, "version": self.version, "groupId": self.groupId, "artifactId": self.artifactId}
        self.node = Node.cast(self.dir)
        self.node.labels.add("SubModule")

    def __repr__(self):
        out = "SubModule(name = "+self.artifactId_name+", groupId = "+self.groupId+", artifactId = "+self.artifactId+")"
        return out

class Plugin(ArianeNode):

    def __init__(self, name, version):
        super().__init__(name, version)
        self.type = "Plugin"
        self.list_submod = []
        self.dir = {"name": self.name, "version": self.version}
        self.node = Node.cast(self.dir)
        self.node.labels.add("Plugin")

    def append(self,submod):
        self.list_submod.append(submod)

    def __repr__(self):
        out = "Plugin( name = "+self.name+", version = "+self.version+")"
        return out
