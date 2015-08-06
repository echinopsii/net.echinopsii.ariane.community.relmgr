from ariane_deliverytool.dao import graphDBFabric

__author__ = 'stanrenia'

class DeliveryTree(object):
    graph_dao = None
    dao_type = None
    submodule_service = None
    submodule_parent_service = None
    module_service = None
    plugin_service = None
    distribution_service = None

    def __init__(self, graph_dao_args):
        DeliveryTree.dao_type, DeliveryTree.graph_dao = graphDBFabric.DaoFabric.make(graph_dao_args)
        DeliveryTree.submodule_service = SubModuleService()
        DeliveryTree.module_service = ModuleService()
        DeliveryTree.plugin_service = PluginService()
        DeliveryTree.submodule_parent_service = SubModuleParentService()
        DeliveryTree.distribution_service = DistributionService()

    def delete_all(self):
        self.graph_dao.delete_all()

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

    @staticmethod
    def get_files(ariane_node):
        list_fnode = None
        if isinstance(ariane_node, ArianeNode):
            args = {"node": ariane_node.node, "reverse": False, "relation": "CONTAINS"}
            list_fnode = DeliveryTree.graph_dao.get_all(args)
            for i, fnode in enumerate(list_fnode.copy()):
                prop = DeliveryTree.graph_dao.get_node_properties(fnode)
                list_fnode[i] = FileNode.create(prop)
        return list_fnode

    @staticmethod
    def get_one_file(ariane_node, file_type):
        list_fnode = DeliveryTree.get_files(ariane_node)
        ret_file = None
        for fnode in list_fnode:
            if fnode.type == file_type:
                ret_file = fnode
                break
        return ret_file

    def find(self, args):
        found = None
        dir = {"args_type": "dict", "label": self._get_label()}
        if self._check_dict_properties(args) is True:
            args.update(dir)
            found = DeliveryTree.graph_dao.find(args)
        elif type(args) in ArianeNode.__subclasses__():
            args = args._get_dir()
            args.update(dir)
            found = DeliveryTree.graph_dao.find(args)
        elif type(args) is list:
            if self._check_list_type(args) is True:
                found = []
                for arg in args:
                    param = arg._get_dir()
                    param.update(dir)
                    f = DeliveryTree.graph_dao.find(param)
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

    @staticmethod
    def find_without_label(args):
        if isinstance(args, dict):
            listfound = DeliveryTree.graph_dao.find_without_label(args)
            if listfound is not None:
                listnode = []
                for e in listfound:
                    label = DeliveryTree.graph_dao.get_node_label(e)
                    eprop = DeliveryTree.graph_dao.get_node_properties(e)
                    node = ArianeNode.create_subclass(label, eprop)
                    if node is None:
                        node = FileNode.create(eprop)
                    if node is not None:
                        listnode.append(node)
                if len(listnode) == 1:
                    return listnode[0]
                elif len(listnode) == 0:
                    return None
                return listnode

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
            node = DeliveryTree.graph_dao.get_unique(args)
            if (node is not None) and (type(node) is not int):
                node = self._create_ariane_node(node)
            return node
        else:
            return None

    @staticmethod
    def get_relation_between(start, end):
        rel = None
        if isinstance(start, ArianeNode) and isinstance(end, ArianeNode):
            relation = DeliveryTree.graph_dao.get_relation_between(start.id, end.id)
            rel_d = DeliveryTree.graph_dao.get_relation_data(relation)
            start_node = ArianeNode.create_subclass(rel_d["start_label"], rel_d["start_properties"])
            end_node = ArianeNode.create_subclass(rel_d["end_label"], rel_d["end_properties"])
            rel = ArianeRelation(start_node, rel_d["relation"], end_node, rel_d["rel_properties"], rel_d["rel_node"])
        return rel

    @staticmethod
    def check_args_init(argv, kwargs):
        for key in argv:
            if key in kwargs.keys():
                if kwargs[key] is None or kwargs[key] == "":
                    return False
        return True

    def check_uniqueness(self):
        count_nid = self.graph_dao.count("nID")
        count_node = self.graph_dao.count("Node")
        return count_nid == count_node

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
        node = args
        args = {"node": node.node, "relation": relations}
        list_relation = DeliveryTree.graph_dao.get_relations(args)
        return self.__cast_related_nodes(node, list_relation)

    def __cast_related_nodes(self, cur_node, related_nodes_list):
        """
        :param related_nodes_list:
        :return:
        """
        if related_nodes_list is not None:
            if type(related_nodes_list) is list:
                relation_list = []

                for rel in related_nodes_list:
                    rel_d = DeliveryTree.graph_dao.get_relation_data(rel)
                    start_node = ArianeNode.create_subclass(rel_d["start_label"], rel_d["start_properties"])
                    end_node = ArianeNode.create_subclass(rel_d["end_label"], rel_d["end_properties"])
                    if cur_node == start_node:
                        start_node = cur_node
                    elif cur_node == end_node:
                        end_node = cur_node
                    start_node.list_relation.append(rel)
                    end_node.list_relation.append(rel)
                    ariane_relation = ArianeRelation(start_node, rel_d["relation"], end_node,
                                                     rel_d["rel_properties"], rel_d["rel_node"])
                    if (type(start_node) is Module) and (type(end_node) is Module):
                        start_node._set_dependency(ariane_relation)
                    if (type(start_node) is Plugin) and (type(end_node) is Module):
                        start_node._set_dependency(ariane_relation)
                    relation_list.append(ariane_relation)
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

class DistributionService(DeliveryTree):
    def __init__(self):
        self._ariane_node = Distribution("model", "model")

    def update_arianenode_lists(self, distrib):
        if isinstance(distrib, Distribution):
            distrib.list_files = DeliveryTree.get_files(distrib)
            distrib.list_module = DeliveryTree.module_service.get_all(distrib)
            if distrib.list_module is None:
                distrib.list_module = []
            distrib.list_plugin = DeliveryTree.plugin_service.get_all(distrib)
            if distrib.list_plugin is None:
                distrib.list_plugin = []
            DeliveryTree.distribution_service.get_relations(distrib)

    def deep_update_arianenode_lists(self, distrib):
        if isinstance(distrib, Distribution):
            self.update_arianenode_lists(distrib)
            for m in distrib.list_module:
                DeliveryTree.module_service.deep_update_arianenode_lists(m)
            for pdict in distrib.list_plugin:
                p = pdict["Plugin"]
                DeliveryTree.plugin_service.deep_update_arianenode_lists(p)

    def get_all(self, args=None):
        """ Get all distributions existing in database
        :param args:  None
        :return: a list of all Distribution objects existing in database
        """
        list_distrib = []
        args = {"reverse": False, "label": self._ariane_node.__class__.__name__, "node": None, "relation": None}
        list_node = DeliveryTree.graph_dao.get_all(args)
        for node in list_node:
            list_distrib.append(self._create_ariane_node(node))

        if len(list_distrib) == 0:
            list_distrib = None

        return list_distrib

    def get_relations(self, args):
        return self._get_relations(args, ["COMPATIBLE WITH", "DEPENDS ON"])

    @staticmethod
    def _create_ariane_node(node):
        args = DeliveryTree.graph_dao.get_node_properties(node)
        return Distribution(args["name"], args["version"], args["nID"])

    def __get_name_version_master(self, version):
        if "SNAPSHOT" in version:
            return "master.SNAPSHOT"
        else:
            return version

    def make_files(self, distrib):
        """
        make all files contained in module : .json, .plan, pom.xml
        :return:
        """
        for mod in distrib.list_module:
            DeliveryTree.module_service.make_files(mod)

        for plug in distrib.list_plugin:
            DeliveryTree.plugin_service.make_files(plug["Plugin"])

        # ariane.community.distrib/resources/distrib/ariane.community.distrib-0.6.2.json
        # ariane.community.distrib/resources/maven/pom-ariane.community.distrib-0.6.2.xml
        # ariane.community.distrib/resources/plugins/ariane.community.plugins.json
        # ariane.community.distrib/resources/plugins/ariane.community.plugins-distrib-0.6.2.json
        # ariane.community.distrib/resources/sources/ariane.community.git.repos-0.6.2.json

        self.__make_file_json_dist(distrib)
        self.__make_file_pom_dist(distrib)
        self.__make_file_json_plugins(distrib)
        self.__make_file_json_plugin_dist(distrib)
        self.__make_file_json_git_repos(distrib)

    def __make_file_json_dist(self, distrib):
        fname = distrib.get_directory_name() + '-' + self.__get_name_version_master(distrib.version) + '.json'
        fpath = distrib.get_directory_name()+"/resources/distrib/"
        distrib.add_file(FileNode(fname, "json_dist", distrib.version, fpath))

    def __make_file_pom_dist(self, distrib):
        fname = "pom-"+distrib.get_directory_name()+'-'+ self.__get_name_version_master(distrib.version) + '.xml'
        fpath = distrib.get_directory_name() + '/resources/maven/'
        distrib.add_file(FileNode(fname, "pom_dist", distrib.version, fpath))

    def __make_file_json_plugins(self, distrib):
        fname = 'ariane.community.plugins.json'
        fpath = distrib.get_directory_name()+"/resources/plugins/"
        distrib.add_file(FileNode(fname, "json_plugins", distrib.version, fpath))

    def __make_file_json_plugin_dist(self, distrib):
        fname = 'ariane.community.plugins-distrib-'+ self.__get_name_version_master(distrib.version) +'.json'
        fpath = distrib.get_directory_name()+"/resources/plugins/"
        distrib.add_file(FileNode(fname, "json_plugin_dist", distrib.version, fpath))

    def __make_file_json_git_repos(self, distrib):
        fname = 'ariane.community.git.repos-'+ self.__get_name_version_master(distrib.version) +'.json'
        fpath = distrib.get_directory_name() + "/resources/sources/"
        distrib.add_file(FileNode(fname, "json_git_repos", distrib.version, fpath))

    def _get_label(self):
        return self._ariane_node.node_type

class ModuleService(DeliveryTree):
    def __init__(self):
        self._ariane_node = Module("model", "model")

    def update_arianenode_lists(self, module):
        if isinstance(module, Module):
            module.list_files = DeliveryTree.get_files(module)
            module.list_submod = DeliveryTree.submodule_service.get_all(module)
            module.list_submod.extend(DeliveryTree.submodule_parent_service.get_all(module))
            if module.list_submod is None:
                module.list_submod = []
            DeliveryTree.module_service.get_relations(module)

    def deep_update_arianenode_lists(self, module):
        if isinstance(module, Module):
            self.update_arianenode_lists(module)
            for s in module.list_submod:
                if isinstance(s, SubModuleParent):
                    DeliveryTree.submodule_parent_service.deep_update_arianenode_lists(s)
            for mprop in module.list_module_dependency:
                m = mprop["module"]
                DeliveryTree.module_service.deep_update_arianenode_lists(m)

    def get_all(self, args=None):
        """ Get all modules from a given distribution
        :param distribution: Distribution object
        :return: a list of all Module objects related to the distribution
        """
        list_mod = []
        if type(args) is Distribution:
            args = {"reverse": True, "node": args.node, "relation": "DEPENDS ON"}
            list_node = DeliveryTree.graph_dao.get_all(args)
            for node in list_node:
                list_mod.append(self._create_ariane_node(node))
        elif args is None:
            pass

        if len(list_mod) == 0:
            list_mod = None

        return list_mod

    def get_relations(self, args):
        return self._get_relations(args, ["COMPOSED OF", "DEPENDS ON"])

    def __get_name_version_master(self, version):
        if "SNAPSHOT" in version:
            return "master.SNAPSHOT"
        else:
            return version

    def make_files(self, module):
        """
        make all files contained in module : .json, .plan, pom.xml
        :return:
        """
        for sub in module.list_submod:
            if isinstance(sub, SubModule):
                DeliveryTree.submodule_service.make_files(sub, module.get_directory_name() + '/')
            else:
                DeliveryTree.submodule_parent_service.make_files(sub, module.get_directory_name() + '/')

        if module.name not in ["environment", "installer"]:
            self.__make_file_build(module)
            self.__make_file_plan(module)
        if module.name not in ["environment"]:
            self.__make_file_pom(module)

        if module.name in ["installer"]:
            self.__make_file_vsh(module)

    def __make_file_build(self, module):
        fname = module.get_directory_name() + '-' + self.__get_name_version_master(module.version) + '.json'
        fpath = module.get_directory_name()+"/distrib/db/resources/builds/"
        module.add_file(FileNode(fname, "json_build", module.version, fpath))

    def __make_file_plan(self, module):
        fname = "net.echinopsii."+ module.get_directory_name() + '_' + self.__get_name_version_master(module.version) + '.plan'
        fpath = module.get_directory_name()+"/distrib/db/resources/virgo/repository/ariane-core/"
        module.add_file(FileNode(fname, "plan", module.version, fpath))

    def __make_file_pom(self, module):
        fname = "pom.xml"
        fpath = module.get_directory_name() + '/'
        module.add_file(FileNode(fname, "pom", module.version, fpath))

    def __make_file_vsh(self, module):
        fname = 'deploy-components.vsh'
        fpath = module.get_directory_name() + "/distrib/installer/resources/virgoscripts/"
        module.add_file(FileNode(fname, "vsh", module.version, fpath))

    @staticmethod
    def _create_ariane_node(node):
        args = DeliveryTree.graph_dao.get_node_properties(node)
        return Module(args["name"], args["version"], args["type"], args["nID"])

    def _get_label(self):
        return self._ariane_node.node_type

class PluginService(DeliveryTree):
    def __init__(self):
        self._ariane_node = Plugin("model", "model")

    def update_arianenode_lists(self, plugin):
        if isinstance(plugin, Plugin):
            plugin.list_files = DeliveryTree.get_files(plugin)
            plugin.list_submod = DeliveryTree.submodule_service.get_all(plugin)
            plugin.list_submod.extend(DeliveryTree.submodule_parent_service.get_all(plugin))
            if plugin.list_submod is None:
                plugin.list_submod = []
            DeliveryTree.plugin_service.get_relations(plugin)

    def deep_update_arianenode_lists(self, plugin):
        if isinstance(plugin, Plugin):
            self.update_arianenode_lists(plugin)
            for s in plugin.list_submod:
                if isinstance(s, SubModuleParent):
                    DeliveryTree.submodule_parent_service.deep_update_arianenode_lists(s)
            for mprop in plugin.list_module_dependency:
                m = mprop["module"]
                DeliveryTree.module_service.deep_update_arianenode_lists(m)

    def get_all(self, args=None):
        """ Get all plugins from a given distribution
        :param distribution: Distribution object
        :return: a list of all Plugin objects related to the distribution
        """
        list_plugin = []
        if isinstance(args, Distribution):
            distrib = args
            args = {"reverse": True, "node": args.node, "relation": "COMPATIBLE WITH"}
            list_node = DeliveryTree.graph_dao.get_all(args)
            for node in list_node:
                plugin = self._create_ariane_node(node)
                rel = DeliveryTree.get_relation_between(plugin, distrib)
                list_plugin.append({"Plugin": plugin, "properties": rel.properties})
        elif args is None:
            pass

        if len(list_plugin) == 0:
            list_plugin = None

        return list_plugin

    def get_relations(self, args):
        return self._get_relations(args, ["COMPOSED OF", "COMPATIBLE WITH", "DEPENDS ON"])

    def __get_name_version_master(self, version):
        if "SNAPSHOT" in version:
            return "master.SNAPSHOT"
        else:
            return version

    def make_files(self, plugin):
        """
        make all files contained in plugin : .json, .plan, pom.xml, .vsh
        :return:
        """
        for sub in plugin.list_submod:
            if isinstance(sub, SubModule):
                DeliveryTree.submodule_service.make_files(sub, plugin.get_directory_name() + '/')
            else:
                DeliveryTree.submodule_parent_service.make_files(sub, plugin.get_directory_name() + '/')

        if plugin.name not in [""]:
            self.__make_file_build(plugin)
            self.__make_file_plan(plugin)
        if plugin.name not in [""]:
            self.__make_file_pom(plugin)

        if plugin.name not in [""]:
            self.__make_file_vsh(plugin)

    def __make_file_build(self, plugin):
        fname = plugin.get_directory_name() + '-' + self.__get_name_version_master(plugin.version) + '.json'
        fpath = plugin.get_directory_name()+"/distrib/db/resources/builds/"
        plugin.add_file(FileNode(fname, "json_build", plugin.version, fpath))

    def __make_file_plan(self, plugin):
        fname = "net.echinopsii."+ plugin.get_directory_name() + '_' + self.__get_name_version_master(plugin.version) + '.plan'
        fpath = plugin.get_directory_name()+"/distrib/db/resources/virgo/repository/ariane-plugins/"
        plugin.add_file(FileNode(fname, "plan", plugin.version, fpath))

    def __make_file_pom(self, plugin):
        fname = "pom.xml"
        fpath = plugin.get_directory_name() + '/'
        plugin.add_file(FileNode(fname, "pom", plugin.version, fpath))

    def __make_file_vsh(self, plugin):
        fname = 'deploy-plugin.'+plugin.name+'.vsh'
        fpath = plugin.get_directory_name() + "/distrib/installer/resources/virgoscripts/"
        plugin.add_file(FileNode(fname, "vsh", plugin.version, fpath))

    def _create_ariane_node(self, node):
        args = DeliveryTree.graph_dao.get_node_properties(node)
        return Plugin(args["name"], args["version"], args["nID"])

    def _get_label(self):
        return self._ariane_node.node_type

class SubModuleService(DeliveryTree):
    def __init__(self):
        self._ariane_node = SubModule("model", "model")

    def update_arianenode_lists(self, submod):
        submod.list_files = DeliveryTree.get_files(submod)
        DeliveryTree.submodule_service.get_relations(submod)

    def get_all(self, module):
        """
        get all submodules from a given module or plugin
        :param module: Module/Plugin object
        :return: a list of all SubModule object related to the module
        """
        list_submod = []
        args = {"reverse": False, "node": module.node, "label": self._ariane_node.__class__.__name__, "relation": "COMPOSED OF"}
        list_node = DeliveryTree.graph_dao.get_all(args)
        for node in list_node:
            sub = self._create_ariane_node(node)
            list_submod.append(sub)
        return list_submod

    def get_relations(self, args):
        return self._get_relations(args, ["COMPOSED OF"])

    def get_parent(self, submod):
        grid = submod.groupId
        i = grid.rfinf('.')
        parent_name = grid[i+1:]
        parent = DeliveryTree.module_service.get_unique({"name": parent_name})
        if parent is None:
            parent = DeliveryTree.plugin_service.get_unique({"name": parent_name})
        if parent is None:
            parent = DeliveryTree.submodule_parent_service.get_unique({"name": parent_name})
        return parent

    def _create_ariane_node(self, node):
        args = DeliveryTree.graph_dao.get_node_properties(node)
        return SubModule(args["name"], args["version"], args["groupId"], args["artifactId"], args["nID"])

    def make_files(self, submod, parent_path):
        self.__make_file_pom(submod, parent_path)

    def __make_file_pom(self, submod, parent_path):
        fname = "pom.xml"
        fpath = parent_path + submod.name + '/'
        submod.add_file(FileNode(fname, "pom", submod.version, fpath))

    def _get_label(self):
        return self._ariane_node.node_type

class SubModuleParentService(DeliveryTree):
    def __init__(self):
        self._ariane_node = SubModuleParent("model", "model")

    def update_arianenode_lists(self, subpar):
        if isinstance(subpar, SubModuleParent):
            subpar.list_files = DeliveryTree.get_files(subpar)
            subpar.list_submod = DeliveryTree.submodule_service.get_all(subpar)
            subpar.list_submod.extend(DeliveryTree.submodule_parent_service.get_all(subpar))
            if subpar.list_submod is None:
                subpar.list_submod = []
            DeliveryTree.submodule_parent_service.get_relations(subpar)

    def deep_update_arianenode_lists(self, subpar):
        if isinstance(subpar, SubModuleParent):
            self.update_arianenode_lists(subpar)
            for s in subpar.list_submod:
                if isinstance(s, SubModuleParent):
                    DeliveryTree.submodule_parent_service.deep_update_arianenode_lists(s)

    def get_all(self, module):
        """
        get all submodules from a given module or plugin
        :param module: Module/Plugin object
        :return: a list of all SubModule object related to the module
        """
        list_submod = []
        args = {"reverse": False, "node": module.node, "label": self._ariane_node.__class__.__name__, "relation": "COMPOSED OF"}
        list_node = DeliveryTree.graph_dao.get_all(args)
        for node in list_node:
            sub = self._create_ariane_node(node)
            sub.list_submod.extend(SubModuleService().get_all(sub))
            list_submod.append(sub)
        return list_submod

    def get_relations(self, args):
        return self._get_relations(args, ["COMPOSED OF"])

    def get_parent(self, submod):
        grid = submod.groupId
        i = grid.rfinf('.')
        parent_name = grid[i+1:]
        parent = DeliveryTree.module_service.get_unique({"name": parent_name})
        if parent is None:
            parent = DeliveryTree.plugin_service.get_unique({"name": parent_name})
        return parent

    def _create_ariane_node(self, node):
        args = DeliveryTree.graph_dao.get_node_properties(node)
        return SubModuleParent(args["name"], args["version"], args["groupId"], args["artifactId"], args["nID"])

    def make_files(self, subpar, parent_path):
        self.__make_file_pom(subpar, parent_path)
        for sub in subpar.list_submod:
            if isinstance(sub, SubModule):
                DeliveryTree.submodule_service.make_files(sub, parent_path+subpar.name+'/')
            else:
                DeliveryTree.submodule_parent_service.make_files(sub, parent_path+subpar.name+'/')

    def __make_file_pom(self, subpar, parent_path):
        fname = "pom.xml"
        fpath = parent_path + subpar.name + '/'
        subpar.add_file(FileNode(fname, "pom", subpar.version, fpath))

    def _get_label(self):
        return self._ariane_node.node_type

class ArianeRelation(object):
    def __init__(self, start, relation, end, properties, rel_node):
        self.start = start
        self.relation = relation
        self.end = end
        self.properties = dict(properties)
        self.rel_node = rel_node

    def save(self):
        if (self.start.id != 0) and (self.end.id != 0):
            DeliveryTree.graph_dao.save_relation({"start_nID": self.start.id, "relation": self.relation,
                                                  "end_nID": self.end.id, "properties": self.properties,
                                                  "rel_node": self.rel_node})

    def __repr__(self):
        return "Relation: ("+self.start.__repr__()+")-[relation = "+self.relation+" ; "+str(self.properties)+"" \
                                                                                                             "]->("+self.end.__repr__()+")"

class ArianeNode(object):

    def __init__(self, name, version):
        self.name = name
        self.version = version
        self.id = 0
        self.pom_attr = "net.echinopsii."
        self.list_files = []
        self.list_relation = []

    def get_properties(self):
        return self._get_dir()

    def add_file(self, file_node):
        if isinstance(file_node, FileNode):
            self.list_files.append(file_node)
            if self._is_saved():
                self._create_file(file_node)
                self._len_list_files = len(self.list_files)

    def _create_file(self, file_node):
        link_args = {"node": self.node, "relation": "CONTAINS", "linked_node": file_node.node}
        nid, rel = DeliveryTree.graph_dao.create_relation(link_args)
        self.list_relation.append(rel)
        if nid is not None:
            file_node.id = nid

    def _is_saved(self):
        if self.id == 0:
            return False
        else:
            return True

    def _reset_node(self):
        self.id = 0
        self.node = DeliveryTree.graph_dao.init_node(self.node_type, self._get_dir())

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
            node = Distribution(args["name"], args["version"], args["nID"])
        elif node_type == "Module":
            node = Module(args["name"], args["version"], args["type"], args["nID"])
        elif node_type == "Plugin":
            node = Plugin(args["name"], args["version"], args["nID"])
        elif node_type == "SubModule":
            node = SubModule(args["name"], args["version"], args["groupId"], args["artifactId"], args["nID"])
        elif node_type == "SubModuleParent":
            node = SubModuleParent(args["name"], args["version"], id=args["nID"])
        else:
            return None

        return node

    def __eq__(self, other):
        if type(other) in ArianeNode.__subclasses__():
            dir = other._get_dir()
            eq_args = [val for key, val in self._get_dir().items() if (key in dir.keys()) and (val == dir.get(key))]
            if len(eq_args) == len(self._get_dir()):
                return True
        return False

    def __copy__(self):
        copy = self
        return copy

    def __deepcopy__(self, memo):
        copy = self
        return copy


class Distribution(ArianeNode):

    def __init__(self, name, version, id=0):
        super().__init__(name, version)
        self.id = id
        self.node_type = self.__class__.__name__
        self.directory_name = ""
        self.list_module = []
        self.list_plugin = []
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        self.node = DeliveryTree.graph_dao.init_node(self.node_type, self.dir)

    def _get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        return self.dir

    def update(self, args):
        flag = False
        for key in args.keys():
            if self._check_current_property(key):
                if key == "name" and self.name != args[key]:
                    self.name = args[key]
                elif key == "version" and self.version != args[key]:
                    self.version = args[key]
                else:
                    continue
                flag = True
        return flag

    def save(self):
        if self.id == 0:
            for mod in self.list_module:
                mod.save()

            for plugin_dict in self.list_plugin:
                plugin_dict["Plugin"].save()

            for fnode in self.list_files:
                fnode.save()

            self.node, self.id = DeliveryTree.graph_dao.create_node(self.node_type, self._get_dir())
            for plugin_dict in self.list_plugin:
                self.__create_relation(plugin_dict["Plugin"], "COMPATIBLE WITH", plugin_dict["properties"])

            for mod in self.list_module:
                self.__create_relation(mod, "DEPENDS ON")

            for fnode in self.list_files:
                self._create_file(fnode)

        else:
            dir = self._get_dir()
            dir["node"] = self.node
            self.node = DeliveryTree.graph_dao.save_node(dir)

    def delete(self):
        if self._is_saved():
            DeliveryTree.distribution_service.update_arianenode_lists(self)
            for mod in self.list_module.copy():
                mod.delete()
            for plugin_dict in self.list_plugin.copy():
                plugin_dict["Plugin"].delete()
            for f in self.list_files:
                f.delete()
            self.list_relation = []
            DeliveryTree.graph_dao.delete(self.node)
            self._reset_node()

    def add_module(self, module):
        if isinstance(module, Module):
            self.list_module.append(module)
            if self._is_saved():
                self.__create_relation(module, "DEPENDS ON")

    def add_plugin(self, plugin, prop=None):
        if isinstance(plugin, Plugin):
            self.list_plugin.append({"Plugin": plugin, "properties": prop})
            if self._is_saved():
                self.__create_relation(plugin, "COMPATIBLE WITH", prop)

    def __create_relation(self, mod_plug, relation, prop=None):
        link_args = {"node": mod_plug.node, "relation": relation, "linked_node": self.node}
        if prop is not None:
            link_args["properties"] = prop
        nid, rel = DeliveryTree.graph_dao.create_relation(link_args)
        self.list_relation.append(rel)
        if nid is not None:
            mod_plug.id = nid

    def get_directory_name(self):
        if self.directory_name == "":
            self.directory_name = 'ariane.community.distrib'
        return self.directory_name

    def __repr__(self):
        out = "Distribution( name = "+self.name+", version = "+self.version+", nID = "+str(self.id)+")"
        return out

class Module(ArianeNode):

    def __init__(self, name, version, type="none", id=0):
        super().__init__(name, version)
        self.id = id
        self.node_type = self.__class__.__name__
        self.type = type
        self.git_repos = self.__set_git_repos()
        self.directory_name = ""
        self.list_submod = []
        self.list_module_dependency = []
        self.dir = {"name": self.name, "version": self.version, "type": self.type, "git_repos": self.git_repos,
                    "nID": self.id}
        self.node = DeliveryTree.graph_dao.init_node(self.node_type, self.dir)
        self._len_list_mod_dep = 0
        self._len_list_submod = 0
        self._len_list_files = 0

    def _get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "type": self.type, "git_repos": self.git_repos,
                    "nID": self.id}
        return self.dir

    def update(self, args):
        flag = False
        for key in args.keys():
            if self._check_current_property(key):
                if key == "name" and self.name != args[key]:
                    self.name = args[key]
                elif key == "version" and self.version != args[key]:
                    self.version = args[key]
                elif key == "type" and self.type != args[key]:
                    self.type = args[key]
                elif key == "git_repos" and self.git_repos != args[key]:
                    self.git_repos = args[key]
                else:
                    continue
                flag = True
        return flag

    def save(self):
        if self._is_saved() is False:
            for submod in self.list_submod:
                submod.save()

            for fnode in self.list_files:
                if fnode.id == 0:
                    fnode.save()

            self.node, self.id = DeliveryTree.graph_dao.create_node(self.node_type, self._get_dir())

            for submod in self.list_submod:
                self.__create_relation(submod)
            self._len_list_submod = len(self.list_submod)

            for dep in self.list_module_dependency:
                self.__create_dependency(dep)
            self._len_list_mod_dep = len(self.list_module_dependency)

            for fnode in self.list_files:
                self._create_file(fnode)
            self._len_list_files = len(self.list_files)

        else:
            # update properties in graph database
            dir = self._get_dir()
            dir["node"] = self.node
            self.node = DeliveryTree.graph_dao.save_node(dir)

            if len(self.list_module_dependency) > self._len_list_mod_dep:
                for dep in self.list_module_dependency:
                    self.__create_dependency(dep)
                self._len_list_mod_dep = len(self.list_module_dependency)
            if len(self.list_submod) > self._len_list_submod:
                for submod in self.list_submod:
                    submod.save()
                    self.__create_relation(submod)
                self._len_list_submod = len(self.list_submod)
            if len(self.list_files) > self._len_list_files:
                for fnode in self.list_files:
                    if fnode.id == 0:
                        fnode.save()
                    self._create_file(fnode)
                self._len_list_files = len(self.list_files)

    def delete(self):
        """
        Delete all related SubModules, relationships and self from graph database.
        Notify Distribution Object (the parent node) in order to update its list of related nodes (Distribution related
        nodes are: Module and Plugin)
        :return: Nothing
        """
        if self._is_saved():
            DeliveryTree.module_service.update_arianenode_lists(self)
            for submod in self.list_submod.copy():
                submod.delete()
            for f in self.list_files:
                f.delete()
            for rel in self.list_relation:
                DeliveryTree.graph_dao.delete(rel)
            DeliveryTree.graph_dao.delete(self.node)
            self._reset_node()

    def add_submodule(self, submod):
        if isinstance(submod, SubModule) or isinstance(submod, SubModuleParent):
            self.list_submod.append(submod)
            if self._is_saved():
                if not submod._is_saved():
                    submod.save()
                self.__create_relation(submod)
                self._len_list_submod = len(self.list_submod)

    def __create_relation(self, submod):
        """
        Create a relation in graph database between self and a SubModule object.
        Update self relations list and the submodule's related node list
        :param submod: SubModule object
        :return: Nothing
        """
        link_args = {"node": self.node, "relation": "COMPOSED OF", "linked_node": submod.node}
        nid, rel = DeliveryTree.graph_dao.create_relation(link_args)
        self.list_relation.append(rel)
        if nid is not None:
            submod.id = nid

    def add_module_dependency(self, mod_args):
        """
        Add Module to Module dependency.
        :param mod_args: dict with the following keys: "module": Module object, "version_min": str, "version_max": str
        :return: Nothing
        """
        module = mod_args["module"]
        if isinstance(module, Module):
            if self._is_saved():
                self.__create_dependency(mod_args)
                self._len_list_mod_dep = len(self.list_module_dependency)

            properties = {"version_min": mod_args["version_min"], "version_max": mod_args["version_max"]}
            properties["module"] = module
            properties["version"] = module.version
            self.list_module_dependency.append(properties)

    def __create_dependency(self, mod_args):
        properties = {"version_min": mod_args["version_min"], "version_max": mod_args["version_max"]}
        module = mod_args["module"]
        link_args = {"node": self.node, "relation": "DEPENDS ON", "linked_node": module.node, "properties": properties.copy()}

        nid, rel = DeliveryTree.graph_dao.create_relation(link_args)

        if nid is not None:
            module.id = nid

    def _set_dependency(self, rel):
        properties = {"version_min": rel.properties["version_min"], "version_max": rel.properties["version_max"]}
        properties["module"] = rel.end
        properties["version"] = rel.end.version
        if properties not in self.list_module_dependency:
            self.list_module_dependency.append(properties)

    def __set_git_repos(self):
        repos = "net.echinopsii.ariane.community."
        if self.type == "core":
            repos += "core."
        repos += self.name + '.git'
        return repos.lower()

    def get_directory_name(self):
        if self.directory_name == "":
            dname = 'ariane.community.'
            if self.type == "core":
                dname += "core."
            self.directory_name = dname + self.name
        return self.directory_name

    def __repr__(self):
        out = "Module( name = "+self.name+", version = "+self.version+", type = "+self.type+", nID = "+str(self.id)+")"
        return out

class SubModule(ArianeNode):

    def __init__(self, name, version,  groupId="none", artifactId="none", id=0):
        super().__init__(name, version)
        self.node_type = self.__class__.__name__
        self.id = id
        self.groupId = groupId
        self.artifactId = artifactId
        self.name = name
        self.dir = {"name": self.name, "version": self.version, "groupId": self.groupId,
                    "artifactId": self.artifactId, "nID": self.id}
        self.node = DeliveryTree.graph_dao.init_node(self.node_type, self.dir)

    def _get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "groupId": self.groupId,
                    "artifactId": self.artifactId, "nID": self.id}
        return self.dir

    def update(self, args):
        flag = False
        for key in args.keys():
            if self._check_current_property(key):
                if key == "name" and self.name != args[key]:
                    self.name = args[key]
                elif key == "version" and self.version != args[key]:
                    self.version = args[key]
                elif key == "groupId" and self.groupId != args[key]:
                    self.groupId = args[key]
                elif key == "artifactId" and self.artifactId != args[key]:
                    self.artifactId = args[key]
                else:
                    continue
                flag = True
        return flag

    def save(self):
        if self.id == 0:
            for fnode in self.list_files:
                fnode.save()

            self.node, self.id = DeliveryTree.graph_dao.create_node(self.node_type, self._get_dir())

            for fnode in self.list_files:
                self._create_file(fnode)

        else:
            dir = self._get_dir()
            dir["node"] = self.node
            self.node = DeliveryTree.graph_dao.save_node(dir)

    def delete(self):
        """
        Delete its relationships and self from graph database.
        Notify Module/Plugin Object (the parent node) in order to update its list of related nodes (Module/Plugin
        related nodes are: SubModules)
        :return: Nothing
        """
        if self._is_saved():
            DeliveryTree.submodule_service.update_arianenode_lists(self)
            for f in self.list_files:
                f.delete()
            for rel in self.list_relation:
                DeliveryTree.graph_dao.delete(rel)
            DeliveryTree.graph_dao.delete(self.node)
            self._reset_node()

    def set_groupid_artifact(self, mod_plug, sub_parent=None):
        if sub_parent is not None:
            sub_parent.set_groupid_artifact(mod_plug)
            self.groupId = sub_parent.groupId + '.' + sub_parent.name
            self.artifactId = self.groupId + '.' + self.name
        else:
            self.groupId = '' + self.pom_attr + mod_plug.get_directory_name()
            self.artifactId = self.groupId + '.' + self.name

    def __repr__(self):
        out = "SubModule(name = "+self.name+", version = "+self.version+", groupId = "+self.groupId+", " \
              "artifactId = "+self.artifactId+", nID = "+str(self.id)+")"
        return out

class Plugin(ArianeNode):

    def __init__(self, name, version, id=0):
        super().__init__(name, version)
        self.node_type = self.__class__.__name__
        self.id = id
        self.type = "plugin"
        self.directory_name = ""
        self.list_submod = []
        self.list_module_dependency = []
        self._len_list_submod = 0
        self._len_list_mod_dep = 0
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        self.node = DeliveryTree.graph_dao.init_node(self.node_type, self.dir)

    def _get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "nID": self.id}
        return self.dir

    def update(self, args):
        flag = False
        for key in args.keys():
            if self._check_current_property(key):
                if key == "name" and self.name != args[key]:
                    self.name = args[key]
                elif key == "version" and self.version != args[key]:
                    self.version = args[key]
                else:
                    continue
                flag = True
        return flag

    def save(self):
        if self.id == 0:
            for submod in self.list_submod:
                submod.save()

            for fnode in self.list_files:
                fnode.save()

            self.node, self.id = DeliveryTree.graph_dao.create_node(self.node_type, self._get_dir())

            for submod in self.list_submod:
                self.__create_relation(submod)
            self._len_list_submod = len(self.list_submod)

            for dep in self.list_module_dependency:
                self.__create_dependency(dep)
            self._len_list_mod_dep = len(self.list_module_dependency)

            for fnode in self.list_files:
                self._create_file(fnode)

        else:
            dir = self._get_dir()
            dir["node"] = self.node
            self.node = DeliveryTree.graph_dao.save_node(dir)

            if len(self.list_module_dependency) > self._len_list_mod_dep:
                for dep in self.list_module_dependency:
                    self.__create_dependency(dep)
                self._len_list_mod_dep = len(self.list_module_dependency)
            if len(self.list_submod) > self._len_list_submod:
                for submod in self.list_submod:
                    submod.save()
                    self.__create_relation(submod)
                self._len_list_submod = len(self.list_submod)

    def delete(self):
        """
        Delete all related SubModules, relationships and self from graph database.
        Notify Distribution Object (the parent node) in order to update its list of related nodes (Distribution related
        nodes are: Module and Plugin)
        :return: Nothing
        """
        if self._is_saved():
            DeliveryTree.plugin_service.update_arianenode_lists(self)
            for submod in self.list_submod.copy():
                submod.delete()
            for f in self.list_files:
                f.delete()
            for rel in self.list_relation:
                DeliveryTree.graph_dao.delete(rel)
            DeliveryTree.graph_dao.delete(self.node)
            self._reset_node()

    def add_submodule(self, submod):
        if isinstance(submod, SubModule) or isinstance(submod, SubModuleParent):
            self.list_submod.append(submod)
            if self._is_saved():
                if not submod._is_saved():
                    submod.save()
                self.__create_relation(submod)
                self._len_list_submod = len(self.list_submod)

    def __create_relation(self, submod):
        link_args = {"node": self.node, "relation": "COMPOSED OF", "linked_node": submod.node}
        nid, rel = DeliveryTree.graph_dao.create_relation(link_args)
        self.list_relation.append(rel)
        if nid is not None:
            submod.id = nid

    def add_module_dependency(self, mod_args):
        """
        Add Module to Plugin dependency.
        :param mod_args: dict with the following keys: "module": Module object, "version_min": str, "version_max": str
        :return: Nothing
        """
        module = mod_args["module"]
        if isinstance(module, Module):
            if self._is_saved():
                self.__create_dependency(mod_args)
                self._len_list_mod_dep = len(self.list_module_dependency)

            properties = {"version_min": mod_args["version_min"], "version_max": mod_args["version_max"]}
            properties["module"] = module
            properties["version"] = module.version
            self.list_module_dependency.append(properties)

    def __create_dependency(self, mod_args):
        properties = {"version_min": mod_args["version_min"], "version_max": mod_args["version_max"]}
        module = mod_args["module"]
        link_args = {"node": self.node, "relation": "DEPENDS ON", "linked_node": module.node, "properties": properties.copy()}

        nid, rel = DeliveryTree.graph_dao.create_relation(link_args)

        if nid is not None:
            module.id = nid

    def _set_dependency(self, rel):
        properties = {"version_min": rel.properties["version_min"], "version_max": rel.properties["version_max"]}
        properties["module"] = rel.end
        properties["version"] = rel.end.version
        if properties not in self.list_module_dependency:
            self.list_module_dependency.append(properties)

    def get_directory_name(self):
        if self.directory_name == "":
            self.directory_name = 'ariane.community.plugin.' + self.name
        return self.directory_name

    def __repr__(self):
        out = "Plugin( name = "+self.name+", version = "+self.version+", nID = "+str(self.id)+")"
        return out


class SubModuleParent(ArianeNode):

    def __init__(self, name, version, groupId="", artifactId="", id=0):
        super().__init__(name, version)
        self.node_type = self.__class__.__name__
        self.id = id
        self.list_submod = []
        self.artifactId = artifactId
        self.groupId = groupId
        self.dir = {"name": self.name, "version": self.version, "groupId": self.groupId, "artifactId": self.artifactId,
                    "nID": self.id}
        self.node = DeliveryTree.graph_dao.init_node(self.node_type, self.dir)

    def _get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "groupId": self.groupId, "artifactId": self.artifactId,
                    "nID": self.id}
        return self.dir

    def update(self, args):
        flag = False
        for key in args.keys():
            if self._check_current_property(key):
                if key == "name" and self.name != args[key]:
                    self.name = args[key]
                elif key == "version" and self.version != args[key]:
                    self.version = args[key]
                elif key == "groupId" and self.groupId != args[key]:
                    self.groupId = args[key]
                elif key == "artifactId" and self.artifactId != args[key]:
                    self.artifactId = args[key]
                else:
                    continue
                flag = True
        return flag

    def save(self):
        if self.id == 0:
            for submod in self.list_submod:
                submod.save()

            for fnode in self.list_files:
                fnode.save()

            self.node, self.id = DeliveryTree.graph_dao.create_node(self.node_type, self._get_dir())

            for submod in self.list_submod:
                self.__create_relation(submod)

            for fnode in self.list_files:
                self._create_file(fnode)

        else:
            dir = self._get_dir()
            dir["node"] = self.node
            self.node = DeliveryTree.graph_dao.save_node(dir)

    def delete(self):
        """
        Delete all related SubModules, relationships and self from graph database.
        Notify Distribution Object (the parent node) in order to update its list of related nodes (Distribution related
        nodes are: Module and Plugin)
        :return: Nothing
        """
        if self._is_saved():
            DeliveryTree.submodule_parent_service.update_arianenode_lists(self)
            for submod in self.list_submod.copy():
                submod.delete()
            for f in self.list_files:
                f.delete()
            for rel in self.list_relation:
                DeliveryTree.graph_dao.delete(rel)
            DeliveryTree.graph_dao.delete(self.node)
            self._reset_node()

    def add_submodule(self, submod):
        if isinstance(submod, SubModule) or isinstance(submod, SubModuleParent):
            self.list_submod.append(submod)
            if self._is_saved():
                self.__create_relation(submod)

    def __create_relation(self, submod):
        link_args = {"node": self.node, "relation": "COMPOSED OF", "linked_node": submod.node}
        nid, rel = DeliveryTree.graph_dao.create_relation(link_args)
        self.list_relation.append(rel)
        if nid is not None:
            submod.id = nid

    def set_groupid_artifact(self, mod_plug):
        # Handle SubmoduleParent->SubmoduleParent
        self.groupId = '' + self.pom_attr + mod_plug.get_directory_name()
        self.artifactId = self.groupId + '.' + self.name

    def __repr__(self):
        out = "SubModuleParent( name = "+self.name+", version = "+self.version+", nID = "+str(self.id)+")"
        return out


class FileNode(object):

    def __init__(self, name, type, version, path, id=0):
        self.name = name
        self.version = version
        self.node_type = self.__class__.__name__
        self.id = id
        self.type = type
        self.path = path
        self.dir = {"name": self.name, "version": self.version, "type": self.type,
                    "path": self.path, "nID": self.id}
        self.list_type = ["pom", "plan", "json_build", "json_dist", "json_plugin_dist", "pom_dist", "json_plugins",
                          "vsh", "json_git_repos"]
        self.list_relation = []
        self.node = DeliveryTree.graph_dao.init_node(self.node_type, self.dir)

    def _get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "type": self.type,
                    "path": self.path, "nID": self.id}
        return self.dir

    @staticmethod
    def create(args):
        model = FileNode("m", "m", "m", "m")
        for key in model.dir.keys():
            if key not in args.keys():
                return None
        return FileNode(args["name"], args["type"], args["version"], args["path"], args["nID"])

    def update(self, args):
        flag = False
        for key in args.keys():
            if key == "name" and self.name != args[key]:
                self.name = args[key]
            elif key == "version" and self.version != args[key]:
                self.version = args[key]
            elif key == "type" and self.type != args[key]:
                self.type = args[key]
            elif key == "path" and self.path != args[key]:
                self.path = args[key]
            else:
                continue
            flag = True
        return flag

    def save(self):
        if self.id == 0:
            self.node, self.id = DeliveryTree.graph_dao.create_node(self.node_type, self._get_dir())
        else:
            dir = self._get_dir()
            dir["node"] = self.node
            self.node = DeliveryTree.graph_dao.save_node(dir)

    def delete(self):
        """
        Delete its relationships and self from graph database.
        Notify Module/Plugin Object (the parent node) in order to update its list of related nodes (Module/Plugin
        related nodes are: SubModules)
        :return: Nothing
        """
        if self.id > 0:
            self.list_relation = self.__get_relation()
            for rel in self.list_relation:
                DeliveryTree.graph_dao.delete(rel)
            DeliveryTree.graph_dao.delete(self.node)
            self.id = 0
            self.node = DeliveryTree.graph_dao.init_node(self.node_type, self._get_dir())

    @staticmethod
    def get_file_by_nid(nid):
        fnode = FileNode("", "", "", "", id=nid)
        f = DeliveryTree.graph_dao.get_by_nid(nid)
        if f is not None:
            if DeliveryTree.graph_dao.get_node_label(f) == fnode.node_type:
                fprop = DeliveryTree.graph_dao.get_node_properties(f)
                if fnode.update(fprop):
                    return fnode
        return None

    def get_properties(self):
        return self._get_dir()

    def __get_relation(self):
        return DeliveryTree.graph_dao.get_relations({"relation": ["CONTAINS"], "node": self.node})

    def __repr__(self):
        out = "FileNode(name = "+self.name+", version = "+self.version+", type = "+self.type+", path = "+self.path+"," \
                                                                                                                   " nID = "+str(self.id)+")"
        return out
