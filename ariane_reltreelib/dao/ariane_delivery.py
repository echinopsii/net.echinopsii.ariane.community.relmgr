# Ariane Release Manager
# Ariane Release Tree Library
# DAO Library
#
# Copyright (C) 2015 echinopsii
# Author: Stan Renia
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
import os
import time
from ariane_reltreelib.dao import graphDBFabric
from ariane_reltreelib.devparser.devparser import DistParser, MavenParser
from ariane_reltreelib.ariane_definitions import ArianeDefinitions
import json

__author__ = 'stanrenia'


class DeliveryTree(object):
    #TODO:clean
    graph_dao = None
    dao_type = None
    module_service = None
    component_service = None
    plugin_service = None
    distribution_service = None

    def __init__(self, graph_dao_args):
        DeliveryTree.dao_type, DeliveryTree.graph_dao = graphDBFabric.DaoFabric.make(graph_dao_args)
        DeliveryTree.distribution_service = DistributionService()
        DeliveryTree.module_service = ModuleService()
        DeliveryTree.component_service = ComponentService()
        DeliveryTree.plugin_service = PluginService()

    def import_db_from_file(self, fpath):
        return self.graph_dao.import_from_file(fpath)

    def set_db_bin_path(self, db_bin_path):
        return DeliveryTree.graph_dao.set_db_bin_path(db_bin_path)

    def reinit_subclass(self):
        self.distribution_service = None
        self.component_service = None
        self.module_service = None
        self.plugin_service = None

    def delete_all(self):
        self.graph_dao.delete_all()

    def get_all(self, args):
        """ This method is defined in each ArianeDeliveryService subclasses
        Get all objects (of the same type as the corresponding service) related to the given node.
        Ex: module_service.get_all(component) gets all Module object related to component, a component object
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

    def is_dev_version(self, arnode):
        if not issubclass(type(arnode), ArianeNode):
            return False
        dev = self.distribution_service.get_dev_distrib()
        rel = self.graph_dao.shortest_path(arnode.id, dev.id)
        if rel is None:
            rel = self.graph_dao.shortest_path(dev.id, arnode.id)
        return rel is not None

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
                    cur_node.list_relation.append(rel)
                    start_node.list_relation.append(rel)
                    end_node.list_relation.append(rel)
                    ariane_relation = ArianeRelation(start_node, rel_d["relation"], end_node,
                                                     rel_d["rel_properties"], rel_d["rel_node"])
                    if (type(start_node) is Component) and (type(end_node) is Component):
                        start_node._set_dependency(ariane_relation)
                    if (type(start_node) is Plugin) and (type(end_node) is Component):
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

    #TODO: clean
    def __init__(self):
        self._ariane_node = Distribution("model", "model")
        self.reinit_subclass()

    def sync_db_from_last_dev(self, distrib):
        if self.__get_name_version_master(distrib.version) == "master.SNAPSHOT":
            distrib.list_files = DeliveryTree.get_files(distrib)
            distrib.list_component = DeliveryTree.component_service.get_all(distrib)

            dev_distrib_components_list = None
            for df in distrib.list_files:
                if df.type == "json_git_repos":
                    dev_distrib_components_list = DistParser.get_components_for_distrib(
                        df.path + df.name
                    )
            if dev_distrib_components_list is not None:
                for dev_component in dev_distrib_components_list:
                    exist_already = False
                    for db_component in distrib.list_component:
                        if dev_component['name'] == db_component.name:
                            exist_already = True
                            break
                    if not exist_already:
                        #print("New component for distrib : " + dev_component['name'])
                        #TODO:
                        #if pom file exist then parse file to get version
                        #cm = Component(dev_component['name'], 0, dev_component['type'], order=0, build="none")
                        #distrib.add_component(cm)
                        pass

            for db_component in distrib.list_component:
                DeliveryTree.component_service.sync_db_from_last_dev(db_component)

    def update_arianenode_lists(self, distrib):
        if isinstance(distrib, Distribution):
            distrib.list_files = DeliveryTree.get_files(distrib)
            distrib.list_component = DeliveryTree.component_service.get_all(distrib)
            if distrib.list_component is None:
                distrib.list_component = []
            distrib.list_plugin = DeliveryTree.plugin_service.get_all(distrib, with_relation=True)
            if distrib.list_plugin is None:
                distrib.list_plugin = []
            DeliveryTree.distribution_service.get_relations(distrib)
            distrib._len_list_files = len(distrib.list_files)

    def deep_update_arianenode_lists(self, distrib):
        if isinstance(distrib, Distribution):
            self.update_arianenode_lists(distrib)
            for m in distrib.list_component:
                DeliveryTree.component_service.deep_update_arianenode_lists(m)
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
        return self._get_relations(args, ArianeRelation.Dist_relations)

    def get_dev_distrib(self):
        dev = self.get_unique({"editable": "true"})
        if isinstance(dev, Distribution):
            return dev
        else:
            distribs = self.get_all()
            dev = Distribution('dev', '0.0.0')
            if distribs is None:
                return None
            for d in distribs:
                if d.version > dev.version:
                    dev = d
            return dev

    @staticmethod
    def copy_distrib(dist):
        if not isinstance(dist, Distribution):
            return None

        def copysubparent(sub):
            DeliveryTree.module_service.update_arianenode_lists(sub)
            csub = Module(sub.name, sub.version, sub.groupId, sub.artifactId,
                          order=sub.order, deployable=sub.deployable, extension=sub.extension)
            for sf in sub.list_files:
                csub.add_file(FileNode(sf.name, sf.type, sf.version, sf.path))
            for s in sub.list_module:
                if s.isParent():
                    ss = copysubparent(s)
                    csub.add_module(Module(ss.name, ss.version, ss.groupId, ss.artifactId,
                                           order=ss.order, deployable=ss.deployable, extension=ss.extension))
                else:
                    DeliveryTree.module_service.update_arianenode_lists(s)
                    ss = Module(s.name, s.version, s.groupId, s.artifactId,
                                order=s.order, deployable=s.deployable, extension=s.extension)
                    for sf in s.list_files:
                        ss.add_file(FileNode(sf.name, sf.type, sf.version, sf.path))
                    csub.add_module(ss)
            return csub

        cd = Distribution(dist.name, dist.version, editable=dist.editable, url_repos=dist.url_repos)
        DeliveryTree.distribution_service.update_arianenode_lists(dist)
        for df in dist.list_files:  # Copying dist files
            cd.add_file(FileNode(df.name, df.type, df.version, df.path))

        for m in dist.list_component:  # Copying components and their modules and files
            cm = Component(m.name, m.version, m.type, order=m.order, build=m.build)
            DeliveryTree.component_service.update_arianenode_lists(m)
            for mf in m.list_files:
                cm.add_file(FileNode(mf.name, mf.type, mf.version, mf.path))
            for s in m.list_module:
                if s.isParent():
                    sub = copysubparent(s)
                    cm.add_module(sub)
                else:
                    DeliveryTree.module_service.update_arianenode_lists(s)
                    csub = Module(s.name, s.version, s.groupId, s.artifactId,
                                  order=s.order, deployable=s.deployable, extension=s.extension)
                    for subf in s.list_files:
                        csub.add_file(FileNode(subf.name, subf.type, subf.version, subf.path))
                    cm.add_module(csub)
            cd.add_component(cm)

        for mod in dist.list_component:  # Copying components dependencies
            cm = [m for m in cd.list_component if m.name == mod.name][0]
            for md in mod.list_component_dependency:
                c_md = [t for t in cd.list_component if t.name == md["component"].name][0]
                cm.add_component_dependency({"component": c_md, "version_min": md["version_min"],
                                          "version_max": md["version_max"], "version": md["component"].version})

        for plug in dist.list_plugin:  # Copying plugins and their modules and files
            m = plug["Plugin"]
            cm = Plugin(m.name, m.version)
            DeliveryTree.plugin_service.update_arianenode_lists(m)
            for mf in m.list_files:
                cm.add_file(FileNode(mf.name, mf.type, mf.version, mf.path))
            for s in m.list_module:
                if s.isParent():
                    sub = copysubparent(s)
                    cm.add_module(sub)
                else:
                    DeliveryTree.module_service.update_arianenode_lists(s)
                    csub = Module(s.name, s.version, s.groupId, s.artifactId,
                                  order=s.order, deployable=s.deployable, extension=s.extension)
                    for subf in s.list_files:
                        csub.add_file(FileNode(subf.name, subf.type, subf.version, subf.path))
                    cm.add_module(csub)
            cd.add_plugin(cm, plug["properties"])

        for plugin in dist.list_plugin:  # Copying plugin dependencies
            plug = plugin["Plugin"]
            cp = [m for m in cd.list_plugin if m["Plugin"].name == plug.name][0]
            cp = cp["Plugin"]
            for md in plug.list_component_dependency:
                c_md = [t for t in cd.list_component if t.name == md["component"].name][0]
                cp.add_component_dependency({"component": c_md, "version_min": md["version_min"],
                                          "version_max": md["version_max"], "version": md["component"].version})
        cd.save()
        return cd

    @staticmethod
    def _create_ariane_node(node):
        args = DeliveryTree.graph_dao.get_node_properties(node)
        if "editable" not in args.keys():
            args["editable"] = "false"
        return Distribution(args["name"], args["version"], args["nID"], editable=args["editable"], url_repos=args["url_repos"])

    def __get_name_version_master(self, version):
        if "SNAPSHOT" in version:
            return "master.SNAPSHOT"
        else:
            return version

    def make_files(self, distrib):
        """
        make all files contained in component : .json, .plan, pom.xml
        :return:
        """
        for mod in distrib.list_component:
            DeliveryTree.component_service.make_files(mod)

        for plug in distrib.list_plugin:
            DeliveryTree.plugin_service.make_files(plug["Plugin"])

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
        fname = "pom-"+distrib.get_directory_name()+'-' + self.__get_name_version_master(distrib.version) + '.xml'
        fpath = distrib.get_directory_name() + '/resources/maven/'
        distrib.add_file(FileNode(fname, "pom_dist", distrib.version, fpath))

    def __make_file_json_plugins(self, distrib):
        fname = 'ariane.community.plugins.json'
        fpath = distrib.get_directory_name()+"/resources/plugins/"
        distrib.add_file(FileNode(fname, "json_plugins", distrib.version, fpath))

    def __make_file_json_plugin_dist(self, distrib):
        fname = 'ariane.community.plugins-distrib-' + self.__get_name_version_master(distrib.version) + '.json'
        fpath = distrib.get_directory_name()+"/resources/plugins/"
        distrib.add_file(FileNode(fname, "json_plugin_dist", distrib.version, fpath))

    def __make_file_json_git_repos(self, distrib):
        fname = 'ariane.community.git.repos-' + self.__get_name_version_master(distrib.version) + '.json'
        fpath = distrib.get_directory_name() + "/resources/sources/"
        distrib.add_file(FileNode(fname, "json_git_repos", distrib.version, fpath))

    def _get_label(self):
        return self._ariane_node.node_type

class ComponentService(DeliveryTree):
    #TODO:clean
    def __init__(self):
        self._ariane_node = Component("model", "model")
        self.reinit_subclass()

    def sync_db_from_last_dev(self, component):
        if self.__get_name_version_master(component.version) == "master.SNAPSHOT":
            component.list_module = DeliveryTree.module_service.get_all(component)
            component.list_component_dependency = DeliveryTree.component_service.get_all_dep(component)
            component.list_files = DeliveryTree.get_files(component)

            if len(component.list_files) == 0:
                # if new component make_files and replay
                DeliveryTree.component_service.make_files(component)
                component.list_files = DeliveryTree.get_files(component)

            dev_submodule_list = None
            for df in component.list_files:
                if df.type == "pom":
                    dev_submodule_list = MavenParser.get_submodules_from_pom(
                        df.path + df.name
                    )
            if dev_submodule_list is not None:
                for submodule_dev in dev_submodule_list:
                    exist_already = False
                    for submodule in component.list_module:
                        if submodule.name == submodule_dev[ArianeDefinitions.MODULE_NAME]:
                            exist_already = True
                            break
                    if not exist_already:
                        csub = Module(
                            submodule_dev[ArianeDefinitions.MODULE_NAME],
                            submodule_dev[ArianeDefinitions.MODULE_VERSION],
                            submodule_dev[ArianeDefinitions.MODULE_GROUPID],
                            submodule_dev[ArianeDefinitions.MODULE_ARTIFACTID],
                            order=0,
                            deployable=submodule_dev[ArianeDefinitions.MODULE_DEPLOYABLE],
                            extension=submodule_dev[ArianeDefinitions.MODULE_EXTENSION])
                        component.add_module(csub)

            dev_ariane_dep_list = None
            for df in component.list_files:
                if df.type == "pom":
                    dev_ariane_dep_list = MavenParser.get_ariane_dependencies_from_pom(
                        df.path + df.name
                    )
            if dev_ariane_dep_list is not None:
                for ariane_dep_dev in dev_ariane_dep_list:
                    exist_already = False
                    for ariane_dep in component.list_component_dependency:
                        if ariane_dep.name == ariane_dep_dev[ArianeDefinitions.COMPONENT_DEPENDENCY_NAME]:
                                exist_already = True
                                break
                    if not exist_already:
                        lists_distrib_component = DeliveryTree.component_service.get_all(component)
                        ariane_dep = [t for t in lists_distrib_component
                                      if t.name == ariane_dep_dev[ArianeDefinitions.COMPONENT_DEPENDENCY_NAME]][0]
                        if ariane_dep is not None:
                            component.add_component_dependency({
                                "component": ariane_dep,
                                "version_min": ariane_dep_dev[ArianeDefinitions.COMPONENT_DEPENDENCY_MIN_VERSION],
                                "version_max": ariane_dep_dev[ArianeDefinitions.COMPONENT_DEPENDENCY_MAX_VERSION],
                                "version": ariane_dep_dev[ArianeDefinitions.COMPONENT_DEPENDENCY_CURRENT_VERSION]
                            })

            for submodule in component.list_module:
                DeliveryTree.module_service.sync_db_from_last_dev(submodule)

    def update_arianenode_lists(self, component):
        if isinstance(component, Component):
            component.list_files = DeliveryTree.get_files(component)
            component.list_module = DeliveryTree.module_service.get_all(component)
            if component.list_module is None:
                component.list_module = []
            DeliveryTree.component_service.get_relations(component)
            component._len_list_files = len(component.list_files)
            component._len_list_mod_dep = len(component.list_component_dependency)
            component._len_list_module = len(component.list_module)

    def deep_update_arianenode_lists(self, component):
        if isinstance(component, Component):
            self.update_arianenode_lists(component)
            for s in component.list_module:
                DeliveryTree.module_service.deep_update_arianenode_lists(s)
            for mprop in component.list_component_dependency:
                m = mprop["component"]
                DeliveryTree.component_service.deep_update_arianenode_lists(m)

    def get_all(self, args=None):
        """ Get all components from a given distribution
        or all components from same distrib as given component
        or all components from same distribs as give plugin
        :param distribution: Distribution object
        :return: a list of all component objects related to the distribution
        """
        list_mod = []
        if type(args) is Distribution:
            args = {"reverse": False, "node": args.node, "relation": ArianeRelation.Dist_component}
            list_node = DeliveryTree.graph_dao.get_all(args)
            for node in list_node:
                list_mod.append(self._create_ariane_node(node))
        elif type(args) is Component:
            args = {"reverse": True, "node": args.node, "relation": ArianeRelation.Dist_component}
            distrib_node = DeliveryTree.graph_dao.get_all(args)[0]
            if distrib_node is not None:
                list_mod = DeliveryTree.component_service.get_all(
                    DeliveryTree.distribution_service._create_ariane_node(distrib_node)
                )
        elif type(args) is Plugin:
            args = {"reverse": True, "node": args.node, "relation": ArianeRelation.Plugin_Dist}
            distribs = DeliveryTree.graph_dao.get_all(args)
            for distrib_node in distribs:
                for component in DeliveryTree.component_service.get_all(
                        DeliveryTree.distribution_service._create_ariane_node(distrib_node)
                ):
                    list_mod.append(component)
        elif args is None:
            pass

        if len(list_mod) == 0:
            list_mod = None

        return list_mod

    def get_all_dep(self, component):
        """
        get all dependencies from a given component.
        Note: ArianeRelation.component_component = "dependencies".
        :param component: Component object
        :return: a list of all dependencies objects related to component
        """
        list_dep = []
        if isinstance(component, Component):
            #TODO: check label
            #TODO: mail Stan
            args = {"reverse": False, "node": component.node,
                    "label": self._ariane_node.__class__.__name__,
                    "relation": ArianeRelation.component_component}
            list_node = DeliveryTree.graph_dao.get_all(args)
            for node in list_node:
                dep = self._create_ariane_node(node)
                list_dep.append(dep)
        return list_dep

    def get_relations(self, args, rels=None):
        if rels is None:
            return self._get_relations(args, ArianeRelation.component_relations)
        return self._get_relations(args, rels)

    def __get_name_version_master(self, version):
        if "SNAPSHOT" in version:
            return "master.SNAPSHOT"
        else:
            return version

    def make_files(self, component):
        """
        make all files contained in component : .json, .plan, pom.xml
        :return:
        """
        for sub in component.list_module:
            DeliveryTree.module_service.make_files(sub, component.get_directory_name() + '/')
        self.__make_file_build(component)
        self.__make_file_plan(component)
        self.__make_file_pom(component)
        self.__make_file_vsh(component)

    def __make_file_build(self, component):
        fname = component.get_directory_name() + '-' + self.__get_name_version_master(component.version) + '.json'
        fpath = component.get_directory_name()+"/distrib/db/resources/builds/"
        if os.path.isfile(ArianeDefinitions.PROJECT_ABS_PATH + fpath + fname):
            component.add_file(FileNode(fname, "json_build", component.version, fpath))

    def __make_file_plan(self, component):
        fname = "net.echinopsii."+ component.get_directory_name() + '_' + self.__get_name_version_master(component.version) + '.plan'
        fpath = component.get_directory_name()+"/distrib/db/resources/virgo/repository/ariane-core/"
        if os.path.isfile(ArianeDefinitions.PROJECT_ABS_PATH + fpath + fname):
            component.add_file(FileNode(fname, "plan", component.version, fpath))

    def __make_file_pom(self, component):
        fname = "pom.xml"
        fpath = component.get_directory_name() + '/'
        if os.path.isfile(ArianeDefinitions.PROJECT_ABS_PATH + fpath + fname):
            component.add_file(FileNode(fname, "pom", component.version, fpath))

    def __make_file_vsh(self, component):
        fname = 'deploy-components.vsh'
        fpath = component.get_directory_name() + "/distrib/installer/resources/virgoscripts/"
        if os.path.isfile(ArianeDefinitions.PROJECT_ABS_PATH + fpath + fname):
            component.add_file(FileNode(fname, "vsh", component.version, fpath))

    @staticmethod
    def _create_ariane_node(node):
        args = DeliveryTree.graph_dao.get_node_properties(node)
        return Component(args["name"], args["version"], type=args["type"], id=args["nID"],
                         build=args["build"], order=args["order"])

    def _get_label(self):
        return self._ariane_node.node_type

class PluginService(DeliveryTree):
    #TODO: clean
    def __init__(self):
        self._ariane_node = Plugin("model", "model")
        self.reinit_subclass()

    def sync_db_from_last_dev(self, plugin):
        if self.__get_name_version_master(plugin.version) == "master.SNAPSHOT":
            plugin.list_module = DeliveryTree.plugin_service.get_all(plugin)
            plugin.list_component_dependency = DeliveryTree.plugin_service.get_all_dep(plugin)
            plugin.list_files = DeliveryTree.get_files(plugin)

            if len(plugin.list_files) == 0:
                # if new plugin make_files and replay
                DeliveryTree.plugin_service.make_files(plugin)
                plugin.list_files = DeliveryTree.get_files(plugin)

            dev_submodule_list = None
            for df in plugin.list_files:
                if df.type == "pom":
                    dev_submodule_list = MavenParser.get_submodules_from_pom(
                        df.path + df.name
                    )
            if dev_submodule_list is not None:
                for submodule_dev in dev_submodule_list:
                    exist_already = False
                    for submodule in plugin.list_module:
                        if submodule.name == submodule_dev[ArianeDefinitions.MODULE_NAME]:
                            exist_already = True
                            break
                    if not exist_already:
                        print("New submodule " + str(submodule_dev) + " for " + plugin.name)
                        psub = Module(
                            submodule_dev[ArianeDefinitions.MODULE_NAME],
                            submodule_dev[ArianeDefinitions.MODULE_VERSION],
                            submodule_dev[ArianeDefinitions.MODULE_GROUPID],
                            submodule_dev[ArianeDefinitions.MODULE_ARTIFACTID],
                            order=0,
                            deployable=submodule_dev[ArianeDefinitions.MODULE_DEPLOYABLE],
                            extension=submodule_dev[ArianeDefinitions.MODULE_EXTENSION])
                        plugin.add_module(psub)

            dev_ariane_dep_list = None
            for df in plugin.list_files:
                if df.type == "pom":
                    dev_ariane_dep_list = MavenParser.get_ariane_dependencies_from_pom(
                        df.path + df.name
                    )
            if dev_ariane_dep_list is not None:
                for ariane_dep_dev in dev_ariane_dep_list:
                    exist_already = False
                    for ariane_dep in plugin.list_component_dependency:
                        if ariane_dep.name == ariane_dep_dev[ArianeDefinitions.COMPONENT_DEPENDENCY_NAME]:
                            exist_already = True
                            break
                    if not exist_already:
                        lists_distrib_component = DeliveryTree.component_service.get_all(plugin)
                        ariane_deps = [t for t in lists_distrib_component
                                      if t.name == ariane_dep_dev[ArianeDefinitions.COMPONENT_DEPENDENCY_NAME]]
                        for ariane_dep in ariane_deps:
                            plugin.add_component_dependency({
                                "component": ariane_dep,
                                "version_min": ariane_dep_dev[ArianeDefinitions.COMPONENT_DEPENDENCY_MIN_VERSION],
                                "version_max": ariane_dep_dev[ArianeDefinitions.COMPONENT_DEPENDENCY_MAX_VERSION],
                                "version": ariane_dep_dev[ArianeDefinitions.COMPONENT_DEPENDENCY_CURRENT_VERSION]
                            })

            for submodule in plugin.list_module:
                DeliveryTree.module_service.sync_db_from_last_dev(submodule)

    def update_arianenode_lists(self, plugin):
        if isinstance(plugin, Plugin):
            plugin.list_files = DeliveryTree.get_files(plugin)
            plugin.list_module = DeliveryTree.module_service.get_all(plugin)
            if plugin.list_module is None:
                plugin.list_module = []
            DeliveryTree.plugin_service.get_relations(plugin)
            plugin._len_list_files = len(plugin.list_files)
            plugin._len_list_mod_dep = len(plugin.list_component_dependency)
            plugin._len_list_module = len(plugin.list_module)

    def deep_update_arianenode_lists(self, plugin):
        if isinstance(plugin, Plugin):
            self.update_arianenode_lists(plugin)
            for s in plugin.list_module:
                DeliveryTree.module_service.deep_update_arianenode_lists(s)
            for mprop in plugin.list_component_dependency:
                m = mprop["component"]
                DeliveryTree.component_service.deep_update_arianenode_lists(m)

    def get_all(self, args=None, with_relation=False):
        """ Get all plugins from a given distribution
        :param distribution: Distribution object
        :return: a list of all Plugin objects related to the distribution
        """
        list_plugin = []
        if isinstance(args, Distribution):
            distrib = args
            args = {"reverse": True, "node": args.node, "relation": ArianeRelation.Plugin_Dist}
            list_node = DeliveryTree.graph_dao.get_all(args)
            for node in list_node:
                plugin = self._create_ariane_node(node)
                if with_relation:
                    rel = DeliveryTree.get_relation_between(plugin, distrib)
                    list_plugin.append({"Plugin": plugin, "properties": rel.properties})
                else:
                    list_plugin.append(plugin)
        elif args is None:
            pass

        if len(list_plugin) == 0:
            list_plugin = None

        return list_plugin

    def get_all_dep(self, plugin):
        """
        get all dependencies from a given plugin.
        Note: ArianeRelation.component_component = "dependencies".
        :param plugin: plugin object
        :return: a list of all dependencies objects related to component
        """
        list_dep = []
        if isinstance(plugin, Component):
            #TODO: check label
            args = {"reverse": False, "node": plugin.node,
                    "label": self._ariane_node.__class__.__name__,
                    "relation": ArianeRelation.component_component}
            list_node = DeliveryTree.graph_dao.get_all(args)
            for node in list_node:
                dep = self._create_ariane_node(node)
                list_dep.append(dep)
        return list_dep

    def get_relations(self, args):
        return self._get_relations(args, ArianeRelation.Plugin_relations)

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
        for sub in plugin.list_module:
            DeliveryTree.module_service.make_files(sub, plugin.get_directory_name() + '/')

        self.__make_file_build(plugin)
        self.__make_file_plan(plugin)
        self.__make_file_pom(plugin)
        self.__make_file_vsh(plugin)

    def __make_file_build(self, plugin):
        fname = plugin.get_directory_name() + '-' + self.__get_name_version_master(plugin.version) + '.json'
        fpath = plugin.get_directory_name()+"/distrib/db/resources/builds/"
        if os.path.isfile(ArianeDefinitions.PROJECT_ABS_PATH + fpath + fname):
            plugin.add_file(FileNode(fname, "json_build", plugin.version, fpath))

    def __make_file_plan(self, plugin):
        fname = "net.echinopsii."+ plugin.get_directory_name() + '_' + self.__get_name_version_master(plugin.version) + '.plan'
        fpath = plugin.get_directory_name()+"/distrib/db/resources/virgo/repository/ariane-plugins/"
        if os.path.isfile(ArianeDefinitions.PROJECT_ABS_PATH + fpath + fname):
            plugin.add_file(FileNode(fname, "plan", plugin.version, fpath))

    def __make_file_pom(self, plugin):
        fname = "pom.xml"
        fpath = plugin.get_directory_name() + '/'
        if os.path.isfile(ArianeDefinitions.PROJECT_ABS_PATH + fpath + fname):
            plugin.add_file(FileNode(fname, "pom", plugin.version, fpath))

    def __make_file_vsh(self, plugin):
        fname = 'deploy-plugin.'+plugin.name+'.vsh'
        fpath = plugin.get_directory_name() + "/distrib/installer/resources/virgoscripts/"
        if os.path.isfile(ArianeDefinitions.PROJECT_ABS_PATH + fpath + fname):
            plugin.add_file(FileNode(fname, "vsh", plugin.version, fpath))

    def _create_ariane_node(self, node):
        args = DeliveryTree.graph_dao.get_node_properties(node)
        return Plugin(args["name"], args["version"], args["nID"])

    def _get_label(self):
        return self._ariane_node.node_type

class ModuleService(DeliveryTree):
    def __init__(self):
        self._ariane_node = Module("model", "model")
        self.reinit_subclass()

    def sync_db_from_last_dev(self, module):
        if self.__get_name_version_master(module.version) == "master.SNAPSHOT":
            module.list_module = DeliveryTree.module_service.get_all(module)
            module.list_files = DeliveryTree.get_files(module)

            if len(module.list_files) == 0:
                # if new module make_files and replay
                parent = DeliveryTree.module_service.get_parent(module)
                parent_path = ""
                while parent is not None:
                    if isinstance(parent, Module):
                        parent_path = parent.name + os.path.sep + parent_path
                        parent = DeliveryTree.module_service.get_parent(parent)
                    elif isinstance(parent, Component):
                        parent_path = parent.get_directory_name() + parent_path
                        parent = None
                DeliveryTree.module_service.make_files(module, parent_path)
                module.list_files = DeliveryTree.get_files(module)

            dev_submodule_list = None
            for df in module.list_files:
                if df.type == "pom":
                    dev_submodule_list = MavenParser.get_submodules_from_pom(
                        df.path + df.name
                    )

            if dev_submodule_list is not None:
                for submodule_dev in dev_submodule_list:
                    exist_already = False
                    for submodule in module.list_module:
                        if submodule.name == submodule_dev[ArianeDefinitions.MODULE_NAME]:
                            exist_already = True
                            break
                    if not exist_already:
                        print("New submodule " + str(submodule_dev) + " for " + module.name)
                        msub = Module(
                            submodule_dev[ArianeDefinitions.MODULE_NAME],
                            submodule_dev[ArianeDefinitions.MODULE_VERSION],
                            submodule_dev[ArianeDefinitions.MODULE_GROUPID],
                            submodule_dev[ArianeDefinitions.MODULE_ARTIFACTID],
                            order=0,
                            deployable=submodule_dev[ArianeDefinitions.MODULE_DEPLOYABLE],
                            extension=submodule_dev[ArianeDefinitions.MODULE_EXTENSION])
                        module.add_module(msub)

            for module in module.list_module:
                DeliveryTree.module_service.sync_db_from_last_dev(module)

    def update_arianenode_lists(self, module):
        if isinstance(module, Module):
            module.list_files = DeliveryTree.get_files(module)
            module.list_module = DeliveryTree.module_service.get_all(module)
            if module.list_module is None:
                module.list_module = []
            DeliveryTree.module_service.get_relations(module)

    def get_all(self, comp_plug_mod):
        """
        get all modules from a given component or plugin or module.
        Note: ArianeRelation.component_Module = "module". It is the relation name for Component->Module,
        or Plugin->Module or Module->Module
        :param comp_plug_mod: Component/Plugin/Module object
        :return: a list of all Module objects related to comp_plug_mod
        """
        list_module = []
        if isinstance(comp_plug_mod, Component) or isinstance(comp_plug_mod, Plugin) or \
                isinstance(comp_plug_mod, Module):
            args = {"reverse": False, "node": comp_plug_mod.node,
                    "label": self._ariane_node.__class__.__name__,
                    "relation": ArianeRelation.component_Module}
            list_node = DeliveryTree.graph_dao.get_all(args)
            for node in list_node:
                sub = self._create_ariane_node(node)
                list_module.append(sub)
        return list_module

    def get_relations(self, args):
        return self._get_relations(args, ArianeRelation.Module_relations)

    #TODO : wtf tfinf ?
    #TODO : mail Stan
    def get_parent(self, module):
        #grid = module.groupId
        #i = grid.rfinf('.')
        #parent_name = grid[i+1:]
        grid_len = len(module.groupId.split("."))
        parent_name = module.groupId.split(".")[grid_len - 1]
        parent = DeliveryTree.component_service.get_unique({"name": parent_name, "version": module.version})
        if parent is None:
            parent = DeliveryTree.plugin_service.get_unique({"name": parent_name, "version": module.version})
        if parent is None:
            parent = DeliveryTree.module_service.get_unique({"name": parent_name, "version": module.version})
        return parent

    def _create_ariane_node(self, node):
        args = DeliveryTree.graph_dao.get_node_properties(node)
        return Module(args["name"], args["version"], args["groupId"], args["artifactId"], id=args["nID"],
                         order=args["order"], deployable=args["deployable"], extension=args["extension"])

    def make_files(self, module, parent_path):
        self.__make_file_pom(module, parent_path)
        for sub in module.list_module:
            DeliveryTree.module_service.make_files(sub, parent_path + os.path.sep + module.name + os.path.sep)

    def __make_file_pom(self, module, parent_path):
        fname = "pom.xml"
        fpath = parent_path + os.path.sep + module.name + os.path.sep
        if os.path.isfile(ArianeDefinitions.PROJECT_ABS_PATH + os.path.sep + fpath + fname):
            module.add_file(FileNode(fname, "pom", module.version, fpath))

    def _get_label(self):
        return self._ariane_node.node_type

    def __get_name_version_master(self, version):
        if "SNAPSHOT" in str(version):
            return "master.SNAPSHOT"
        else:
            return version


class ArianeRelation(object):
    #TODO: clean
    Dist_component = "composedBy"
    component_component = "dependency"
    component_Plugin = component_component
    component_Module = "module"
    Plugin_Dist = "compatibleWith"
    Plugin_component = component_component
    Plugin_Module = component_Module
    Module_Module = component_Module

    Dist_relations = [Dist_component, Plugin_Dist]
    component_relations = [Dist_component, component_component, component_Module]
    Plugin_relations = [Plugin_Dist, Plugin_component, Plugin_Module]
    Module_relations = [component_Module]

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

    @staticmethod
    def make_vmin_vmax(version):
        v = version.split('.')
        v[-1] = '0'
        vmin = '.'.join(v)
        v[1] = str(int(v[1]) + 1)
        vmax = '.'.join(v)
        return vmin, vmax

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

    #TODO: define _get_dir and get_rest_endpoint to be reimplemented by subclass

    def get_properties(self, gettype=False):
        prop = self._get_dir()
        if gettype:
            prop["node_type"] = self.get_rest_endpoint()
        return prop

    def update_filesname(self):
        for f in self.list_files:
            f.udpdate_name(self.version)
            f.save()

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

    def to_json(self):
        return json.dumps(self._get_dir())

    def from_json(self, json_obj):
        if isinstance(json_obj, str):
            json_obj = json.loads(json_obj)
        args = None
        for key in json_obj.keys():
            if key in ["component", "plugin", "distrib", "module"]:
                args = json_obj[key]
        if args is None:
            args = json_obj
        return ArianeNode.create_subclass(self.node_type, args)

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
            node = Distribution(args["name"], args["version"], args["nID"], editable=args["editable"], url_repos=args["url_repos"])
        elif node_type == "Component":
            node = Component(args["name"], args["version"], args["type"], args["nID"],
                             build=args["build"], order=args["order"])
        elif node_type == "Plugin":
            node = Plugin(args["name"], args["version"], args["nID"], git_repos=args["git_repos"])
        elif node_type == "Module":
            node = Module(args["name"], args["version"], args["groupId"], args["artifactId"], args["nID"],
                             order=args["order"], deployable=args["deployable"], extension=args["extension"])
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

    def __init__(self, name, version, id=0, editable="false", url_repos=""):
        super().__init__(name, version)
        self.id = id
        self.node_type = self.__class__.__name__
        self.directory_name = ""
        self.editable = editable
        self.url_repos = url_repos
        self.list_component = []
        self.list_plugin = []
        self._old_version = version
        self.dir = {"name": self.name, "version": self.version, "editable": self.editable, "url_repos": self.url_repos, "nID": self.id}
        self.node = DeliveryTree.graph_dao.init_node(self.node_type, self.dir)

    def _get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "editable": self.editable, "url_repos": self.url_repos, "nID": self.id}
        return self.dir

    def update(self, args):
        flag = False
        for key in args.keys():
            if self._check_current_property(key):
                if key == "name" and self.name != args[key]:
                    self.name = args[key]
                elif key == "version" and self.version != args[key]:
                    self.version = args[key]
                elif key == "url_repos" and self.version != args[key]:
                    self.url_repos = args[key]
                else:
                    continue
                flag = True
        return flag

    def save(self):
        if self.id == 0:
            for mod in self.list_component:
                mod.save()

            for plugin_dict in self.list_plugin:
                plugin_dict["Plugin"].save()

            for fnode in self.list_files:
                fnode.save()

            self.node, self.id = DeliveryTree.graph_dao.create_node(self.node_type, self._get_dir())
            self._old_version = self.version

            for plugin_dict in self.list_plugin:
                self.__create_relation(plugin_dict["Plugin"], ArianeRelation.Plugin_Dist, plugin_dict["properties"], reverse=False)

            for mod in self.list_component:
                self.__create_relation(mod, ArianeRelation.Dist_component)

            for fnode in self.list_files:
                self._create_file(fnode)

        else:
            dir = self._get_dir()
            dir["node"] = self.node
            self.node = DeliveryTree.graph_dao.save_node(dir)

            if self._old_version != self.version:
                self.list_files = DeliveryTree.get_files(self)
                self.update_filesname()

    def delete(self):
        if self._is_saved():
            DeliveryTree.distribution_service.update_arianenode_lists(self)
            for mod in self.list_component.copy():
                mod.delete()
            for plugin_dict in self.list_plugin.copy():
                plugin_dict["Plugin"].delete()
            for f in self.list_files:
                f.delete()
            self.list_relation = []
            DeliveryTree.graph_dao.delete(self.node)
            self._reset_node()

    def add_component(self, component):
        if isinstance(component, Component):
            self.list_component.append(component)
            if self._is_saved():
                self.__create_relation(component, ArianeRelation.Dist_component)

    def add_plugin(self, plugin, prop=None):
        if isinstance(plugin, Plugin):
            self.list_plugin.append({"Plugin": plugin, "properties": prop})
            if self._is_saved():
                self.__create_relation(plugin, ArianeRelation.Plugin_Dist, prop, reverse=False)

    def __create_relation(self, mod_plug, relation, prop=None, reverse=True):
        if reverse:
            link_args = {"node": self.node, "relation": relation, "linked_node": mod_plug.node}
        else:
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

    def get_rest_endpoint(self):
        return "distrib"

    def __repr__(self):
        out = "Distribution( name = "+self.name+", version = "+self.version+", nID = "+str(self.id)+")"
        return out

class Component(ArianeNode):

    TYPE_CORE = "core"
    TYPE_LIB = "library"
    TYPE_ENV = "environment"

    BUILD_MVN = "maven"
    BUILD_MVN_PYTHON3 = "maven_python3"
    BUILD_PYTHON3 = "python3"
    BUILD_NONE = "none"

    def __init__(self, name, version, type="none", id=0, order=0, build=None):
        super().__init__(name, version)
        self.id = id
        self.node_type = self.__class__.__name__
        self.type = type
        self.order = order
        self.directory_name = ""
        self.list_module = []
        self.list_component_dependency = []
        self.build = build
        self.dir = {"name": self.name, "version": self.version, "type": self.type,
                    "build": self.build, "order": self.order, "nID": self.id}
        self.node = DeliveryTree.graph_dao.init_node(self.node_type, self.dir)
        self._len_list_mod_dep = 0
        self._len_list_module = 0
        self._len_list_files = 0
        self._old_version = version

    def _get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "type": self.type,
                    "build": self.build, "order": self.order, "nID": self.id}
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
                elif key == "order" and self.order != args[key]:
                    self.order = args[key]
                elif key == "build" and self.build != args[key]:
                    self.build = args[key]
                else:
                    continue
                flag = True
        return flag

    def save(self):
        if self._is_saved() is False:
            for module in self.list_module:
                module.version = self.version
                module.save()

            for fnode in self.list_files:
                if fnode.id == 0:
                    fnode.version = self.version
                    fnode.save()

            self.node, self.id = DeliveryTree.graph_dao.create_node(self.node_type, self._get_dir())
            self._old_version = self.version

            for module in self.list_module:
                self.__create_relation(module)
            self._len_list_module = len(self.list_module)

            for dep in self.list_component_dependency:
                self.__create_dependency(dep)
            self._len_list_mod_dep = len(self.list_component_dependency)

            for fnode in self.list_files:
                self._create_file(fnode)
            self._len_list_files = len(self.list_files)

        else:
            # update properties in graph database
            dir = self._get_dir()
            dir["node"] = self.node
            self.node = DeliveryTree.graph_dao.save_node(dir)

            if len(self.list_component_dependency) > self._len_list_mod_dep:
                for dep in self.list_component_dependency:
                    self.__create_dependency(dep)
                self._len_list_mod_dep = len(self.list_component_dependency)
            if len(self.list_module) > self._len_list_module:
                for module in self.list_module:
                    module.save()
                    self.__create_relation(module)
                self._len_list_module = len(self.list_module)
            if len(self.list_files) > self._len_list_files:
                for fnode in self.list_files:
                    if fnode.id == 0:
                        fnode.save()
                    self._create_file(fnode)
                self._len_list_files = len(self.list_files)

            # Update modules and files version to be the same as the current component.
            if self._old_version != self.version:
                DeliveryTree.component_service.update_arianenode_lists(self)
                for s in self.list_module:
                    s.version = self.version
                    s.save()
                for f in self.list_files:
                    f.version = self.version
                self.update_filesname()
                FileNode.update_environment_filename(self.name, self.version)
                self.__update_dependencies()
                self._old_version = self.version

    def delete(self):
        """
        Delete all related Modules, relationships and self from graph database.
        Notify Distribution Object (the parent node) in order to update its list of related nodes (Distribution related
        nodes are: component and Plugin)
        :return: Nothing
        """
        if self._is_saved():
            DeliveryTree.component_service.update_arianenode_lists(self)
            for module in self.list_module.copy():
                module.delete()
            for f in self.list_files:
                f.delete()
            for rel in self.list_relation:
                DeliveryTree.graph_dao.delete(rel)
            DeliveryTree.graph_dao.delete(self.node)
            self._reset_node()

    def add_module(self, module):
        if isinstance(module, Module):
            self.list_module.append(module)
            if self._is_saved():
                if not module._is_saved():
                    module.save()
                self.__create_relation(module)
                self._len_list_module = len(self.list_module)

    def __create_relation(self, module):
        """
        Create a relation in graph database between self and a Module object.
        Update self relations list and the module's related node list
        :param module: Module object
        :return: Nothing
        """
        link_args = {"node": self.node, "relation": ArianeRelation.component_Module, "linked_node": module.node}
        nid, rel = DeliveryTree.graph_dao.create_relation(link_args)
        self.list_relation.append(rel)
        if nid is not None:
            module.id = nid

    def add_component_dependency(self, mod_args):
        """
        Add component to component dependency.
        :param mod_args: dict with the following keys: "component": component object, "version_min": str, "version_max": str
        :return: Nothing
        """
        component = mod_args["component"]
        if isinstance(component, Component):
            if self._is_saved():
                self.__create_dependency(mod_args)
                self._len_list_mod_dep = len(self.list_component_dependency)

            properties = {"version_min": mod_args["version_min"], "version_max": mod_args["version_max"]}
            properties["component"] = component
            properties["version"] = component.version
            self.list_component_dependency.append(properties)

    def __create_dependency(self, mod_args):
        properties = {"version_min": mod_args["version_min"], "version_max": mod_args["version_max"]}
        component = mod_args["component"]
        link_args = {"node": self.node, "relation": ArianeRelation.component_component, "linked_node": component.node, "properties": properties.copy()}

        nid, rel = DeliveryTree.graph_dao.create_relation(link_args)

        if nid is not None:
            component.id = nid

    def _set_dependency(self, rel):
        properties = {"version_min": rel.properties["version_min"], "version_max": rel.properties["version_max"]}
        properties["component"] = rel.end
        properties["version"] = rel.end.version
        if properties not in self.list_component_dependency:
            self.list_component_dependency.append(properties)

    def __update_dependencies(self):
        """
        Updates component relationships properties. This function is called after component's version edition.
        :return:
        """
        rels = DeliveryTree.component_service.get_relations(self, [ArianeRelation.component_component, ArianeRelation.Dist_component])
        for rel in rels:
            if not isinstance(rel, ArianeRelation):
                continue
            if (rel.end == self) and (isinstance(rel.start, Component) or isinstance(rel.start, Plugin)):
                vmin, vmax = ArianeRelation.make_vmin_vmax(self.version)
                rel.properties["version_min"] = vmin
                rel.properties["version_max"] = vmax
                rel.save()

    def get_directory_name(self):
        if self.directory_name == "":
            dname = 'ariane.community.'
            if self.type == Component.TYPE_CORE:
                dname += Component.TYPE_CORE + "."
            self.directory_name = dname + self.name
        return self.directory_name

    def get_rest_endpoint(self):
        return "component"

    def __repr__(self):
        out = "component( name = "+self.name+", version = "+self.version+", type = "+self.type + \
              ", build = " + self.build + ", nID = "+str(self.id)+")"
        return out

class Module(ArianeNode):

    EXTENSION_JAR = "jar"
    EXTENSION_WAR = "war"
    EXTENSION_POM = "pom"
    EXTENSION_NONE = "none"

    def __init__(self, name, version,  groupId="none", artifactId="none", id=0, order=0, deployable=True,
                 extension="jar"):
        super().__init__(name, version)
        self.node_type = self.__class__.__name__
        self.id = id
        self.groupId = groupId
        self.artifactId = artifactId
        self.order = order
        self.list_module = []
        self._old_version = self.version
        self.deployable = deployable if deployable is not None else True
        self.extension = extension if extension is not None else Module.EXTENSION_NONE
        self.dir = {"name": self.name, "version": self.version, "groupId": self.groupId,
                    "artifactId": self.artifactId, "order": self.order, "nID": self.id,
                    "deployable": self.deployable, "extension": self.extension}
        self.node = DeliveryTree.graph_dao.init_node(self.node_type, self.dir)

    def _get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "groupId": self.groupId,
                    "artifactId": self.artifactId, "order": self.order, "nID": self.id,
                    "deployable": self.deployable, "extension": self.extension}
        return self.dir

    def update(self, args):
        flag = False
        #print(args)
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
                elif key == "order" and self.order != args[key]:
                    self.order = args[key]
                elif key == "deployable" and self.deployable != args[key]:
                    self.deployable = args[key]
                elif key == "extension" and self.extension != args[key]:
                    self.extension = args[key]
                else:
                    continue
                flag = True
        return flag

    def save(self):
        if self.id == 0:
            for module in self.list_module:
                module.save()

            for fnode in self.list_files:
                fnode.save()

            self.node, self.id = DeliveryTree.graph_dao.create_node(self.node_type, self._get_dir())
            self._old_version = self.version

            for module in self.list_module:
                self.__create_relation(module)

            for fnode in self.list_files:
                self._create_file(fnode)

        else:
            dir = self._get_dir()
            dir["node"] = self.node
            self.node = DeliveryTree.graph_dao.save_node(dir)
            if self._old_version != self.version:
                DeliveryTree.module_service.update_arianenode_lists(self)
                for s in self.list_module:
                    s.version = self.version
                    s.save()
                self.update_filesname()

    def delete(self):
        """
        Delete its relationships and self from graph database.
        Notify component/Plugin Object (the parent node) in order to update its list of related nodes (component/Plugin
        related nodes are: Modules)
        :return: Nothing
        """
        if self._is_saved():
            DeliveryTree.module_service.update_arianenode_lists(self)
            for module in self.list_module.copy():
                module.delete()
            for f in self.list_files:
                f.delete()
            for rel in self.list_relation:
                DeliveryTree.graph_dao.delete(rel)
            DeliveryTree.graph_dao.delete(self.node)
            self._reset_node()

    def add_module(self, module):
        if isinstance(module, Module):
            self.list_module.append(module)
            if self._is_saved():
                self.__create_relation(module)

    def __create_relation(self, module):
        link_args = {"node": self.node, "relation": ArianeRelation.Module_Module, "linked_node": module.node}
        nid, rel = DeliveryTree.graph_dao.create_relation(link_args)
        self.list_relation.append(rel)
        if nid is not None:
            module.id = nid

    def isParent(self):
        ret = DeliveryTree.graph_dao.get_relation_between(self.id, label="Module") is not None
        if ret:
            self.list_module = DeliveryTree.module_service.get_all(self)
        return ret

    def set_groupid_artifact(self, mod_plug, sub_parent=None):
        grid_sufix = ""
        if isinstance(mod_plug, Component) or isinstance(mod_plug, Plugin):
            grid_sufix = self.pom_attr + mod_plug.get_directory_name()
        elif isinstance(mod_plug, Module):
            grid_sufix = mod_plug.artifactId
        else:
            raise "Given argument 'mod_plug' is an incorrect type. " \
                  "Expecting [Component, Plugin, Module], found " + type(mod_plug)

        self.groupId = '' + grid_sufix
        self.artifactId = self.groupId + '.' + self.name

        # if sub_parent is not None:
        #     sub_parent.set_groupid_artifact(mod_plug)
        #     self.groupId = sub_parent.groupId + '.' + sub_parent.name
        #     self.artifactId = self.groupId + '.' + self.name
        # else:
        #     self.groupId = '' + self.pom_attr + mod_plug.get_directory_name()
        #     self.artifactId = self.groupId + '.' + self.name

    def get_rest_endpoint(self):
        return "module"

    def get_properties(self, gettype=False):
        """
        @Overriding
        Get properties from self, calling recursively get_properties for each module in the "list_module" attribute.
        This method is made to be called by a REST Server.
        :param gettype: Boolean saying if it returns "node_type" and "list_module" properties
        :return: "prop": Dict containing database properties + "node_type" (used by UserInterface on client-side) +
                         "list_module" (empty or not)
        """
        prop = self._get_dir()
        if gettype:
            prop["node_type"] = self.get_rest_endpoint()
            mod_list_prop = []
            mod_list = DeliveryTree.module_service.get_all(self)
            if isinstance(mod_list, list) and len(mod_list) > 0:
                for m in mod_list:
                    mod_list_prop.append(m.get_properties(gettype=True))
                prop["list_module"] = mod_list_prop
        return prop

    def __repr__(self):
        out = "Module(name = " + str(self.name) + ", version = " + str(self.version) + ", groupId = " + str(self.groupId) + ", " \
              "artifactId = " + str(self.artifactId) + ", nID = "+str(self.id) + \
              ", deployable = " + str(self.deployable) + ", extension =  " + str(self.extension) + ")"
        return out

class Plugin(ArianeNode):

    def __init__(self, name, version, id=0, git_repos=""):
        super().__init__(name, version)
        self.node_type = self.__class__.__name__
        self.id = id
        self.type = "plugin"
        self.git_repos = self.__set_git_repos(git_repos)
        self.directory_name = ""
        self.list_module = []
        self.list_component_dependency = []
        self._len_list_module = 0
        self._len_list_mod_dep = 0
        self._old_version = version
        self.dir = {"name": self.name, "version": self.version, "git_repos": self.git_repos, "nID": self.id}
        self.node = DeliveryTree.graph_dao.init_node(self.node_type, self.dir)

    def _get_dir(self):
        self.dir = {"name": self.name, "version": self.version, "git_repos": self.git_repos, "nID": self.id}
        return self.dir

    def update(self, args):
        flag = False
        for key in args.keys():
            if self._check_current_property(key):
                if key == "name" and self.name != args[key]:
                    self.name = args[key]
                elif key == "version" and self.version != args[key]:
                    self.version = args[key]
                elif key == "git_repos" and self.git_repos != args[key]:
                    self.git_repos = args[key]
                else:
                    continue
                flag = True
        return flag

    def save(self):
        if self.id == 0:
            for module in self.list_module:
                module.save()

            for fnode in self.list_files:
                fnode.save()

            self.node, self.id = DeliveryTree.graph_dao.create_node(self.node_type, self._get_dir())
            self._old_version = self.version

            for module in self.list_module:
                self.__create_relation(module)
            self._len_list_module = len(self.list_module)

            for dep in self.list_component_dependency:
                self.__create_dependency(dep)
            self._len_list_mod_dep = len(self.list_component_dependency)

            for fnode in self.list_files:
                self._create_file(fnode)

        else:
            dir = self._get_dir()
            dir["node"] = self.node
            self.node = DeliveryTree.graph_dao.save_node(dir)

            if len(self.list_component_dependency) > self._len_list_mod_dep:
                for dep in self.list_component_dependency:
                    self.__create_dependency(dep)
                self._len_list_mod_dep = len(self.list_component_dependency)
            if len(self.list_module) > self._len_list_module:
                for module in self.list_module:
                    module.save()
                    self.__create_relation(module)
                self._len_list_module = len(self.list_module)

            if self._old_version != self.version:
                DeliveryTree.plugin_service.update_arianenode_lists(self)
                for s in self.list_module:
                    s.version = self.version
                    s.save()
                for f in self.list_files:
                    f.version = self.version
                self.update_filesname()
                self._old_version = self.version

    def delete(self):
        """
        Delete all related Modules, relationships and self from graph database.
        Notify Distribution Object (the parent node) in order to update its list of related nodes (Distribution related
        nodes are: component and Plugin)
        :return: Nothing
        """
        if self._is_saved():
            DeliveryTree.plugin_service.update_arianenode_lists(self)
            for module in self.list_module.copy():
                module.delete()
            for f in self.list_files:
                f.delete()
            for rel in self.list_relation:
                DeliveryTree.graph_dao.delete(rel)
            DeliveryTree.graph_dao.delete(self.node)
            self._reset_node()

    def add_module(self, module):
        if isinstance(module, Module):
            self.list_module.append(module)
            if self._is_saved():
                if not module._is_saved():
                    module.save()
                self.__create_relation(module)
                self._len_list_module = len(self.list_module)

    def __create_relation(self, module):
        link_args = {"node": self.node, "relation": ArianeRelation.Plugin_Module, "linked_node": module.node}
        nid, rel = DeliveryTree.graph_dao.create_relation(link_args)
        self.list_relation.append(rel)
        if nid is not None:
            module.id = nid

    def add_component_dependency(self, mod_args):
        """
        Add component to Plugin dependency.
        :param mod_args: dict with the following keys: "component": component object, "version_min": str, "version_max": str
        :return: Nothing
        """
        component = mod_args["component"]
        if isinstance(component, Component):
            if self._is_saved():
                self.__create_dependency(mod_args)
                self._len_list_mod_dep = len(self.list_component_dependency)

            properties = {"version_min": mod_args["version_min"], "version_max": mod_args["version_max"]}
            properties["component"] = component
            properties["version"] = component.version
            self.list_component_dependency.append(properties)

    def __create_dependency(self, mod_args):
        properties = {"version_min": mod_args["version_min"], "version_max": mod_args["version_max"]}
        component = mod_args["component"]
        link_args = {"node": self.node, "relation": ArianeRelation.Plugin_component, "linked_node": component.node, "properties": properties.copy()}

        nid, rel = DeliveryTree.graph_dao.create_relation(link_args)

        if nid is not None:
            component.id = nid

    def _set_dependency(self, rel):
        properties = {"version_min": rel.properties["version_min"], "version_max": rel.properties["version_max"]}
        properties["component"] = rel.end
        properties["version"] = rel.end.version
        if properties not in self.list_component_dependency:
            self.list_component_dependency.append(properties)

    def __set_git_repos(self, newrepos=""):
        if newrepos == "":
            repos = "https://github.com/echinopsii/net.echinopsii."
        else:
            repos = newrepos
        return str(repos).lower()

    def get_directory_name(self):
        if self.directory_name == "":
            self.directory_name = 'ariane.community.plugin.' + self.name
        return self.directory_name

    def get_rest_endpoint(self):
        return "plugin"

    def __repr__(self):
        out = "Plugin( name = "+self.name+", version = "+self.version+", nID = "+str(self.id)+")"
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
                          "vsh", "json_git_repos", "plantpl"]
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
        Notify component/Plugin Object (the parent node) in order to update its list of related nodes (component/Plugin
        related nodes are: Modules)
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

    def udpdate_name(self, version):
        self.version = version
        if self.type not in ["plantpl"]:
            if "SNAPSHOT" in version:
                version = "master.SNAPSHOT"
            if "-" in version:
                version = str(version).replace('-', '.')
            if "_" in version:
                version = str(version).replace('_', '.')

            if self.type in ["json_build", "json_dist", "json_plugin_dist", "pom_dist", "json_git_repos"]:
                tmp = self.name.split('-')
                if len(tmp) > 0:
                    prefix = tmp[:-1]
                    prefix = '-'.join(prefix)
                    sufix = tmp[len(tmp)-1]
                    sufix = sufix.split('.')
                    sufix = '.' + sufix[len(sufix)-1]
                else:
                    raise "Error, incorrect file name for {}".format(self)
                self.name = prefix + '-' + version + sufix
            elif self.type == "plan":
                tmp = self.name.split('_')
                if len(tmp) > 0:
                    prefix = tmp[:-1]
                    prefix = '-'.join(prefix)
                    sufix = tmp[len(tmp)-1]
                    sufix = sufix.split('.')
                    sufix = '.' + sufix[len(sufix)-1]
                else:
                    raise "Error, incorrect file name for {}".format(self)
                self.name = prefix + '_' + version + sufix

    @staticmethod
    def update_environment_filename(name, version):
        if name not in ["directory", "idm", "injector", "portal", "mapping", "messaging"]:
            return
        if "SNAPSHOT" not in version:
            return
        dist = DeliveryTree.distribution_service.get_dev_distrib()
        if not isinstance(dist, Distribution):
            return
        if "SNAPSHOT" not in dist.version:
            return
        components = DeliveryTree.component_service.get_all(dist)
        env = [m for m in components if m.name == "environment"]
        if not len(env) == 1:
            return
        env = env[0]
        env_files = DeliveryTree.get_files(env)
        file = None
        for f in env_files:
            if (f.type == "plantpl") and (name in f.name):
                file = f
                break
        if file is None:
            return

        tmp = file.name.split('_')
        if len(tmp) > 0:
            prefix = tmp[0]
            sufix = tmp[1]
            sufix = sufix[-len(".plan.tpl"):]
            version = version.replace('-', '.')
            file.name = prefix + '_' + version + sufix
            file.save()
        else:
            raise "Error, incorrect file name for {}".format(file)

    def is_versioned(self):
        return self.type in ["json_build", "json_dist", "json_plugin_dist", "pom_dist", "json_git_repos", "plan", "plantpl"]

    def get_properties(self, gettype=False):
        prop = self._get_dir()
        if gettype:
            prop["node_type"] = self.get_rest_endpoint()
        return prop

    def __get_relation(self):
        return DeliveryTree.graph_dao.get_relations({"relation": ["CONTAINS"], "node": self.node})

    def get_rest_endpoint(self):
        return "filenode"

    def __repr__(self):
        out = "FileNode(name = "+self.name+", version = "+self.version+", type = "+self.type+", path = "+self.path+"," \
                                                                                                                   " nID = "+str(self.id)+")"
        return out
