from py2neo import Node

__author__ = 'stanrenia'

class Core:
    def __init__(self, distribution, version):
        self.distribution = distribution
        self.version = version
        self.list_module = []
        self.list_plugin = []
        self.node = Node.cast({"distribution": self.distribution, "version": self.version})
        self.node.labels.add("Core")

    def append_Module(self, module):
        self.list_module.append(module)

    def append_Plugin(self, plugin):
        self.list_module.append(plugin)

    def __repr__(self):
        out = "Core( distribution = "+self.distribution+", version = "+self.version+" )"
        return out

class Module:
    def __init__(self, name, version, type):
        self.name = name
        self.version = version
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

class SubModule:
    def __init__(self, groupId, artifactId, artifactId_name, version):
        self.groupId = groupId
        self.artifactId = artifactId
        self.artifactId_name = artifactId_name
        self.version = version
        self.dir = {"name": self.artifactId_name, "groupId": self.groupId, "artifactId": self.artifactId}
        self.node = Node.cast(self.dir)
        self.node.labels.add("SubModule")

    def __repr__(self):
        out = "SubModule(name = "+self.artifactId_name+", groupId = "+self.groupId+", artifactId = "+self.artifactId+")"
        return out

class Plugin:
    def __init__(self, name, version):
        self.name = name
        self.version = version
        self.list_submod = []
        self.dir = {"name": self.name, "version": self.version}
        self.node = Node.cast(self.dir)
        self.node.labels.add("Plugin")

    def append(self,submod):
        self.list_submod.append(submod)

    def __repr__(self):
        out = "Plugin( name = "+self.name+", version = "+self.version+")"
        return out
