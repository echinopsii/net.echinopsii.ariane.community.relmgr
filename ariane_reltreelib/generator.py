# Ariane Release Manager
# Ariane Release Tree Library
# Generator
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
import logging

import os
import json
from os.path import join, exists, getmtime
from collections import OrderedDict
import subprocess

from jinja2 import Environment, TemplateNotFound, BaseLoader
from ariane_reltreelib.arianeDefinitions import ArianeDefinitions

from ariane_reltreelib.dao import modelAndServices
import ariane_reltreelib
from ariane_reltreelib.dao.modelAndServices import Module, Component

__author__ = 'stanrenia'

LOGGER = logging.getLogger(__name__)


class MyLoader(BaseLoader):

    def __init__(self, path):
        self.path = path

    def get_source(self, environment, template):
        path = join(self.path, template)
        if not exists(path):
            raise TemplateNotFound(template)
        m_time = getmtime(path)
        with open(path) as f:
            source = f.read()
        return source, path, lambda: m_time == getmtime(path)


class GitTagHandler(object):

    @staticmethod
    def is_git_tagged(version, path=None):
        tag_flag = False
        tags = []
        if path is not None:
            if os.path.exists(path):
                LOGGER.debug("GitTagHandler.is_git_tagged - " + path)
                tags = subprocess.check_output("git tag", shell=True, cwd=path)
                LOGGER.debug("GitTagHandler.is_git_tagged - " + str(tags))
        else:
            tags = subprocess.check_output("git tag", shell=True)
        # check_output gives the command output in bytes format, so we decode it.
        if (isinstance(tags, bytes)) and (len(tags) > 0):
            tags = (tags.decode()).split('\n')
            if tags[-1] == '':
                tags = tags[:-1]
            for tag in tags:
                if tag == version:
                    tag_flag = True
                    break
        return tag_flag

class Generator(object):
    # TODO:clean
    ariane_deliverytool_module_path = os.path.dirname(ariane_reltreelib.__file__)

    # TODO Modifiy MyLoader path when release.
    def __init__(self, ariane_delivery_service, project_directory):
        self.jinja_env = Environment(loader=MyLoader(self.__refactor_path(project_directory["templates"])))
        self.ariane = ariane_delivery_service
        self.dir_output = self.__refactor_path(project_directory["outputs"])
        self.components_dict = {}
        self.plugin_dict = {}
        self.distrib_dict = {}

    def get_distrib(self, version, dep_type=ArianeDefinitions.DISTRIB_DEP_TYPE_MONOLITH):
        # if version not in self.distrib_dict.keys():
        self.distrib_dict[version] = self.ariane.get_unique(self.ariane.distribution_service, {
            ArianeDefinitions.DISTRIB_VERSION: version,
            ArianeDefinitions.DISTRIB_DEP_TYPE: dep_type
        })
        return self.distrib_dict[version]

    def get_components_list(self, version, dep_type=ArianeDefinitions.DISTRIB_DEP_TYPE_MONOLITH):
        if version not in self.components_dict.keys():
            self.components_dict[version] = self.ariane.component_service.get_all(
                self.get_distrib(version, dep_type=dep_type)
            )
        return [m for m in self.components_dict[version]]

    def get_plugins_list(self, version, dep_type=ArianeDefinitions.DISTRIB_DEP_TYPE_MONOLITH):
        if version not in self.plugin_dict.keys():
            self.plugin_dict[version] = self.ariane.plugin_service.get_all(self.get_distrib(version, dep_type=dep_type))
        return [p for p in self.plugin_dict[version]]

    @staticmethod
    def __refactor_path(arg_path):
        if not str(arg_path).endswith(os.sep):
            arg_path += os.sep
        return arg_path

    @staticmethod
    def __make_vmin_vmax(version):
        v = version.split('.')
        v[-1] = '0'
        vmin = '.'.join(v)
        v[1] = str(int(v[1]) + 1)
        vmax = '.'.join(v)
        return vmin, vmax

    def generate_all_distribution(self, version, dep_type=ArianeDefinitions.DISTRIB_DEP_TYPE_MONOLITH):
        self.generate_distribution_files(version, dep_type)
        self.generate_component_files(version, dep_type)
        self.generate_plugin_files(version, dep_type)

    def generate_core_files(self, version, dep_type=ArianeDefinitions.DISTRIB_DEP_TYPE_MONOLITH):
        self.generate_distribution_files(version, dep_type)
        self.generate_component_files(version, dep_type)

    def generate_distribution_files(self, version, dep_type=ArianeDefinitions.DISTRIB_DEP_TYPE_MONOLITH):
        LOGGER.warning("Generator.generate_distribution_files: {" + version + ", " + dep_type + "}")
        distrib = self.get_distrib(version, dep_type=dep_type)
        dist_files = self.ariane.get_files(distrib)
        for df in dist_files:
            if df.type == ArianeDefinitions.FILE_TYPE_DIST_POM:
                self.generate_pom_dist(version, dep_type, df)
            elif df.type == ArianeDefinitions.FILE_TYPE_DIST_JSON:
                self.generate_json_dist(version, dep_type, df)
            elif df.type == ArianeDefinitions.FILE_TYPE_DIST_GIT_REPOS:
                self.generate_json_git_repos(version, dep_type, df)

    def generate_distrib_plugin_files(self, version, dep_type=ArianeDefinitions.DISTRIB_DEP_TYPE_MONOLITH):
        distrib = self.get_distrib(version, dep_type=dep_type)
        dist_files = self.ariane.get_files(distrib)
        for df in dist_files:
            if df.type == "json_plugins":
                self.generate_json_plugins(version, df)
            elif df.type == "json_plugin_dist":
                self.generate_json_plugin_dist(version, dep_type, df)

    # TODO: RECURSIVITY ?
    def generate_component_files(self, version, dep_type):
        components = self.get_components_list(version, dep_type=dep_type)
        is_snapshot_version = ArianeDefinitions.SNAPSHOT_VERSION in version
        flag_clean_env = True

        for comp in components:
            LOGGER.debug("Generator.generate_component_files - " + comp.name + " " + comp.version + " files")
            if not is_snapshot_version:
                if GitTagHandler.is_git_tagged(comp.version, path=self.dir_output+comp.get_directory_name()):
                    LOGGER.debug("Generator.generate_component_files - git tagged !")
                    continue
            self.ariane.component_service.update_arianenode_lists(comp)
            mod_files = self.ariane.get_files(comp)
            for f in mod_files:
                LOGGER.debug("Generator.generate_component_files - " + f.name)
                if ArianeDefinitions.SNAPSHOT_VERSION in f.name and not is_snapshot_version:
                    continue
                elif f.type == ArianeDefinitions.FILE_TYPE_BUILD_JSON:
                    self.generate_lib_json(comp, f)
                elif f.type == ArianeDefinitions.FILE_TYPE_MVN_POM:
                    gr_id, art_id = self.__generate_pom_comp_plug(comp, f)

                    for sub in comp.list_module:
                        s_gr_id, s_art_id = self.__generate_pom_module(sub, gr_id, art_id)
                        if sub.is_parent():
                            self.__generate_pom_subparent(sub, s_gr_id, s_art_id)
                elif f.type == ArianeDefinitions.FILE_TYPE_KARAF_FEATURE:
                    self.generate_feature(comp, f)
                elif f.type == ArianeDefinitions.FILE_TYPE_VIRGO_SCRIPT:
                    self.generate_vsh_installer(version, components, f)
                elif f.type == ArianeDefinitions.FILE_TYPE_VIRGO_PLAN:
                    self.generate_plan(comp, f)
                elif f.type == ArianeDefinitions.FILE_TYPE_VIRGO_PLAN_TPL:
                    if is_snapshot_version:
                        if flag_clean_env:
                            self.__clean_environment_files(self.dir_output + f.path)
                            flag_clean_env = False
                        self.generate_plan_tpl(version, dep_type, f)

    def generate_plugin_files(self, version, dep_type="mno"):
        """ Generate all files for each plugin in the given distribution.
        :param version:
        :return:
        """
        is_dev = ArianeDefinitions.SNAPSHOT_VERSION in version
        plugins = self.get_plugins_list(version, dep_type=dep_type)

        for plug in plugins:
            if not is_dev:
                if GitTagHandler.is_git_tagged(plug.version, path=self.dir_output+plug.get_directory_name()):
                    continue
            # if plug.name in self.exception_release_plug:
            #     continue
            self.ariane.plugin_service.update_arianenode_lists(plug)
            plug_files = self.ariane.get_files(plug)
            for f in plug_files:
                if f.type == ArianeDefinitions.FILE_TYPE_VIRGO_PLAN:
                    self.generate_plan(plug, f)
                elif f.type == ArianeDefinitions.FILE_TYPE_BUILD_JSON:
                    self.generate_lib_json(plug, f)
                elif f.type == ArianeDefinitions.FILE_TYPE_VIRGO_SCRIPT:
                    self.generate_vsh_plugin(plug, f)
                elif f.type == ArianeDefinitions.FILE_TYPE_KARAF_FEATURE:
                    self.generate_feature(plug, f)
                elif f.type == ArianeDefinitions.FILE_TYPE_MVN_POM:
                    gr_id, art_id = self.__generate_pom_comp_plug(plug, f)
                    for sub in plug.list_module:
                        s_gr_id, s_art_id = self.__generate_pom_module(sub, gr_id, art_id)
                        if sub.is_parent():
                            self.__generate_pom_subparent(sub, s_gr_id, s_art_id)

    def generate_pom(self, comp_plug):
        """ Generate all poms (parent and children) for a given component or plugin.
        :param comp_plug: ariane_delivery.component or ariane_delivery.Plugin object stored in database
        :return: Nothing
        """
        if comp_plug.build == Component.BUILD_MVN or comp_plug.build == Component.BUILD_MVN_PYTHON3:
            if GitTagHandler.is_git_tagged(comp_plug.version, path=self.dir_output+comp_plug.get_directory_name()):
                return
            if type(comp_plug) is modelAndServices.Component:
                self.ariane.component_service.get_relations(comp_plug)
            elif type(comp_plug) is modelAndServices.Plugin:
                self.ariane.plugin_service.get_relations(comp_plug)

            mf = self.ariane.get_one_file(comp_plug, ArianeDefinitions.FILE_TYPE_MVN_POM)
            if not isinstance(mf, modelAndServices.FileNode):
                return
            if mf.type == ArianeDefinitions.FILE_TYPE_MVN_POM:
                gr_id, art_id = self.__generate_pom_comp_plug(comp_plug, mf)

                for sub in comp_plug.list_module:
                    s_gr_id, s_art_id = self.__generate_pom_module(sub, gr_id, art_id)
                    if sub.is_parent():
                        self.__generate_pom_subparent(sub, s_gr_id, s_art_id)

    def __generate_pom_module(self, sub, gr_id, art_id):
        fpom = self.ariane.get_one_file(sub, ArianeDefinitions.FILE_TYPE_MVN_POM)
        template = self.jinja_env.get_template(
            fpom.path + ArianeDefinitions.FILE_TYPE_MVN_POM + ArianeDefinitions.FILE_SUFFIX_JINJA
        )

        args = {
            ArianeDefinitions.MODULE_VERSION: sub.version,
            ArianeDefinitions.MODULE_GROUPID: gr_id,
            ArianeDefinitions.MODULE_ARTIFACTID: art_id,
            ArianeDefinitions.MODULE_NAME: sub.name
        }

        with open(self.dir_output+fpom.path+fpom.name, 'w') as target:
            target.write(template.render(args))
        LOGGER.info("Generator.__generate_pom_module - Maven pom (" + fpom.path+fpom.name + ") generated !")
        group_id = art_id
        artifact_id = art_id + '.' + sub.name

        return group_id, artifact_id

    def __generate_pom_subparent(self, sub, gr_id, art_id):
        sub.list_module = self.ariane.module_service.get_all(sub)
        for s in sub.list_module:
            s_gr_id, s_art_id = self.__generate_pom_module(s, gr_id, art_id)
            if s.is_parent():
                self.__generate_pom_subparent(s, s_gr_id, s_art_id)

    def __generate_pom_comp_plug(self, comp_plug, fpom):
        template = self.jinja_env.get_template(
            fpom.path + ArianeDefinitions.FILE_TYPE_MVN_POM + ArianeDefinitions.FILE_SUFFIX_JINJA
        )

        group_id = comp_plug.pom_attr + comp_plug.get_directory_name()
        group_id = str(group_id).replace('.'+comp_plug.name, '')
        artifact_id = group_id + "." + comp_plug.name
        version = comp_plug.version
        packaging = ArianeDefinitions.FILE_TYPE_MVN_POM
        comp_plug.list_module = sorted(comp_plug.list_module, key=lambda module: module.order)
        args = {
            ArianeDefinitions.DISTRIB_GROUPID: group_id, ArianeDefinitions.DISTRIB_ARTIFACTID: artifact_id,
            ArianeDefinitions.DISTRIB_VERSION: version, ArianeDefinitions.DISTRIB_PACKAGING: packaging,
            ArianeDefinitions.DISTRIB_COMPONENTS: comp_plug.list_module,
            ArianeDefinitions.DISTRIB_DEPENDENCIES: comp_plug.list_component_dependency
        }

        with open(self.dir_output+fpom.path+fpom.name, 'w') as target:
            target.write(template.render(args))
        LOGGER.info("Generator.__generate_pom_comp_plug - Maven pom (" + fpom.path+fpom.name + ") generated !")
        return group_id, artifact_id

    def generate_pom_dist(self, version, dep_type, f_pom):
        if GitTagHandler.is_git_tagged(version, path=self.dir_output+f_pom.path):
            return
        components = self.get_components_list(version, dep_type=dep_type)
        for m in components.copy():
            if m.build != Component.BUILD_MVN and m.build != Component.BUILD_MVN_PYTHON3:
                components.remove(m)
        components = sorted(components, key=lambda mod: mod.order)
        template = self.jinja_env.get_template(
            f_pom.path + ArianeDefinitions.FILE_PREFIX_JINJA_DISTRIB_POM + ArianeDefinitions.FILE_SUFFIX_JINJA
        )
        args = {ArianeDefinitions.DISTRIB_COMPONENTS: components, ArianeDefinitions.DISTRIB_VERSION: version}

        LOGGER.debug("Generator.generate_pom_dist - " + f_pom.name)
        with open(self.dir_output+f_pom.path+f_pom.name, 'w') as target:
            target.write(template.render(args))
        LOGGER.info("Generator.generate_pom_dist - Maven pom (" + f_pom.path+f_pom.name + ") generated !")

    def generate_feature(self, comp_plug, f_feature):
        if GitTagHandler.is_git_tagged(comp_plug.version, path=self.dir_output + f_feature.path):
            return

        if isinstance(comp_plug, modelAndServices.Component):
            d = comp_plug.get_parent_distrib()
            if os.path.isfile(self.dir_output + f_feature.path + "feature_" + comp_plug.name + "_" +
                              d.dep_type + "_template.jnj"):
                template_path = f_feature.path + "feature_" + comp_plug.name + "_" + d.dep_type + "_template.jnj"
                template = self.jinja_env.get_template(template_path)
            else:
                template_path = f_feature.path + "feature_" + comp_plug.name + "_template.jnj"
                template = self.jinja_env.get_template(template_path)
        else:
            template_path = f_feature.path + "feature_" + comp_plug.name + "_template.jnj"
            template = self.jinja_env.get_template(template_path)
        LOGGER.debug("Generator.generate_feature - Jinja Template: " + template_path)

        modules = [s for s in comp_plug.list_module]
        for s in modules:
            self.ariane.module_service.update_arianenode_lists(s)
        for s in modules.copy():
            if s.is_parent():
                modules.extend(s.list_module)
                modules.remove(s)
        for s in modules.copy():
            if not s.deployable:
                modules.remove(s)
        modules = sorted(modules, key=lambda module: module.order)
        LOGGER.debug("Generator.generate_feature - Modules:" + str(modules))
        cp_version = comp_plug.version
        args = {
            ArianeDefinitions.COMPONENT_VERSION: cp_version,
            ArianeDefinitions.COMPONENT: comp_plug,
            ArianeDefinitions.COMPONENT_SUBMODULES: modules
        }
        LOGGER.debug("Generator.generate_feature - Final Args: " + str(args))

        feature_final_path = self.dir_output + f_feature.path + f_feature.name
        LOGGER.debug("Generator.generate_feature - Feature Final Path: " + feature_final_path)
        with open(feature_final_path, 'w') as target:
            target.write(template.render(args))
        LOGGER.info("Generator.generate_feature - Karaf feature (" + f_feature.path + f_feature.name + ") generated !")

    # TODO: RECURSIVITY ?
    def generate_plan(self, comp_plug, fplan):
        if GitTagHandler.is_git_tagged(comp_plug.version, path=self.dir_output+fplan.path):
            return
        snapshot = False
        if ArianeDefinitions.SNAPSHOT_VERSION in comp_plug.version:
            snapshot = True

        if isinstance(comp_plug, modelAndServices.Component):
            d = comp_plug.get_parent_distrib()
            if os.path.isfile(self.dir_output + fplan.path + "plan_" + comp_plug.name + "_" +
                              d.dep_type + "_template.jnj"):
                template = self.jinja_env.get_template(fplan.path + "plan_" + comp_plug.name + "_" + d.dep_type +
                                                       "_template.jnj")
            else:
                template = self.jinja_env.get_template(fplan.path + "plan_" + comp_plug.name + "_template.jnj")
        else:
            template = self.jinja_env.get_template(fplan.path + "plan_" + comp_plug.name + "_template.jnj")

        modules = [s for s in comp_plug.list_module]
        for s in modules:
            self.ariane.module_service.update_arianenode_lists(s)
        for s in modules.copy():
            if s.is_parent():
                modules.extend(s.list_module)
                modules.remove(s)
        for s in modules.copy():
            if not s.deployable:
                modules.remove(s)
        modules = sorted(modules, key=lambda module: module.order)
        vmin, vmax = modelAndServices.ArianeRelation.make_vmin_vmax(comp_plug.version)
        if snapshot:
            if comp_plug.version.split("-").__len__() > 2:
                cp_version = comp_plug.version.split("-")[0] + "-" + comp_plug.version.split("-")[2]
            else:
                cp_version = comp_plug.version
            cp_version = str(cp_version).replace("-", ".")
        else:
            if comp_plug.version.split("-").__len__() > 1:
                cp_version = comp_plug.version.split("-")[0]
            else:
                cp_version = comp_plug.version
        args = {
            ArianeDefinitions.COMPONENT_VERSION: cp_version,
            ArianeDefinitions.COMPONENT: comp_plug,
            ArianeDefinitions.COMPONENT_DEPENDENCY_VMIN: vmin,
            ArianeDefinitions.COMPONENT_DEPENDENCY_VMAX: vmax,
            ArianeDefinitions.COMPONENT_SUBMODULES: modules
        }

        with open(self.dir_output+fplan.path+fplan.name, 'w') as target:
                target.write(template.render(args))
        LOGGER.info("Generator.generate_plan - Virgo plan (" + fplan.path + fplan.name + ") generated !")

    def generate_json_plugin_dist(self, version, dep_type, fjson):
        if GitTagHandler.is_git_tagged(version, path=self.dir_output+fjson.path):
            return
        elements = self.get_plugins_list(version, dep_type=dep_type)
        dictio = {}

        for e in elements:
            key = e.get_directory_name()
            if ArianeDefinitions.SNAPSHOT_VERSION in e.version:
                l = ["master.SNAPSHOT"]
            else:
                l = [e.version]
            dictio[key] = l

        with open(self.dir_output+fjson.path+fjson.name, 'w') as target:
            json.dump(dictio, target, indent=4)

        return self.dir_output+fjson.path+fjson.name

    def generate_json_dist(self, version, dep_type, fjson):
        if GitTagHandler.is_git_tagged(version, path=self.dir_output+fjson.path):
            return
        elements = self.get_components_list(version, dep_type=dep_type)
        LOGGER.debug("Generator.generate_json_dist - " + str(elements))
        dictio = {}
        snapshot = False
        if ArianeDefinitions.SNAPSHOT_VERSION in version:
            snapshot = True

        for e in elements:
            key = e.get_directory_name()
            if type(e) is modelAndServices.Component:
                if snapshot:
                    dictio[key] = e.branch + ".SNAPSHOT"
                else:
                    dictio[key] = e.version

        with open(self.dir_output+fjson.path+fjson.name, 'w') as target:
            json.dump(dictio, target, indent=4)

            return self.dir_output+fjson.path+fjson.name

    def generate_json_plugins(self, version,  fjson):
        if GitTagHandler.is_git_tagged(version, path=self.dir_output+fjson.path):
            return
        distribs = self.ariane.distribution_service.get_all()
        plugin_dict = {}
        version_order = []
        for d in distribs:
            plugins = self.ariane.plugin_service.get_all(d)
            if plugins is not None:
                for p in plugins:
                    if ArianeDefinitions.SNAPSHOT_VERSION in p.version:
                        p.version = "master.SNAPSHOT"
                    if ArianeDefinitions.SNAPSHOT_VERSION in d.version:
                        d.version = "master.SNAPSHOT"

                p_name = "ariane.community.plugin." + p.name
                if p_name not in plugin_dict.keys():
                    plugin_dict[p_name] = [{"pluginVersion": p.version, "distVersion": [d.version]}]
                    version_order.append(p.version)
                else:
                    flag_new_version = True
                    flag_append = False
                    rel = self.ariane.get_relation_between(p, d)
                    v_max, v_min = 0, 0
                    for sub_d in plugin_dict[p_name]:
                        flag_append = False
                        if sub_d["pluginVersion"] == p.version:
                            flag_new_version = False
                            flag_append = True
                        elif len(rel.properties) > 0:
                            if rel.properties["version_min"] == sub_d["pluginVersion"]:
                                flag_append = True
                                v_min += 1
                            elif rel.properties["version_max"] == sub_d["pluginVersion"]:
                                flag_append = True
                                v_max += 1
                        if flag_append:
                            if type(sub_d["distVersion"]) is not list:
                                sub_d["distVersion"] = [d.version]
                            else:
                                sub_d["distVersion"].append(d.version)

                    if len(rel.properties) > 0:
                        if (flag_append is False) and (v_max == 0):
                            plugin_dict[p_name].append({
                                "pluginVersion": rel.properties["version_max"], "distVersion": [d.version]
                            })
                            version_order.append(rel.properties["version_max"])
                        elif (flag_append is False) and (v_min == 0):
                            plugin_dict[p_name].append({
                                "pluginVersion": rel.properties["version_min"], "distVersion": [d.version]
                            })
                            version_order.append((rel.properties["version_min"]))
                    if flag_new_version:
                        plugin_dict[p_name].append({"pluginVersion": p.version, "distVersion": [d.version]})
                        version_order.append(p.version)

        # each distrib has the same directories tree, here 'd' is the last distrib from the list.
        version_order = sorted(version_order)
        plugin_dict_order = {}
        for dic in plugin_dict.keys():
            new_list = [v for v in version_order]
            ele_list = plugin_dict[dic]
            for l_dict in ele_list:
                tuple_list = []
                p_version = ""
                for key, value in l_dict.items():
                    if key == "pluginVersion":
                        p_version = value
                    tuple_list.append((key, value))
                tuple_list = sorted(tuple_list, key=lambda t: t[0], reverse=True)
                new_list[version_order.index(p_version)] = OrderedDict(tuple_list)
            plugin_dict_order[dic] = new_list

        with open(self.dir_output+fjson.path+fjson.name, 'w') as target:
            json.dump(plugin_dict_order, target, indent=4)

        return self.dir_output+fjson.path+fjson.name

    def generate_json_git_repos(self, version, dep_type, fjson):
        if GitTagHandler.is_git_tagged(version, path=self.dir_output+fjson.path):
            return

        dist = self.get_distrib(version, dep_type=dep_type)
        components = self.get_components_list(version, dep_type=dep_type)
        plugins = self.get_plugins_list(version, dep_type=dep_type)
        dictio = {}
        url = dist.url_repos
        for m in components:
            key = m.get_directory_name()
            # TODO: clear
            if m.type == "none":
                typ = Component.TYPE_CORE
            else:
                typ = m.type
            dictio[key] = {"type": typ, "url": url + key + '.git'}

        for p in plugins:
            key = p.get_directory_name()
            dictio[key] = {"type": "plugin", "url": url + key + '.git'}

        with open(self.dir_output+fjson.path+fjson.name, 'w') as target:
            json.dump(dictio, target, indent=4)

    # TODO : REAL RECURSIVE ALGO
    # TODO : use groupId + artifactId to compose maven deployable path
    def generate_lib_json(self, comp_plug, fjson):
        if GitTagHandler.is_git_tagged(comp_plug.version, path=self.dir_output+fjson.path):
            return
        list_lib = []
        for s in comp_plug.list_module:
            ext = s.extension
            if s.deployable and (ext == Module.EXTENSION_JAR or ext == Module.EXTENSION_WAR):
                # url = groupId.replace('.','/') + artifactId + version + '/'
                url = "net/echinopsii/" + str(comp_plug.get_directory_name()).replace('.', '/') + "/"
                url += ArianeDefinitions.ECHINOPSII_ARTIFACT_PREFIX+comp_plug.get_directory_name()+"."+s.name+"/" + \
                    comp_plug.version+ "/" + ArianeDefinitions.ECHINOPSII_ARTIFACT_PREFIX + \
                    comp_plug.get_directory_name() + "." + s.name + "-" + comp_plug.version + "." + ext
                list_lib.append(url)
            elif s.is_parent():
                for s_sub in s.list_module:
                    ext = s_sub.extension
                    if s_sub.deployable and (ext == Module.EXTENSION_JAR or ext == Module.EXTENSION_WAR):
                        url = "net/echinopsii/" + str(comp_plug.get_directory_name()).replace('.', '/') + "/"+s.name+"/"
                        url += ArianeDefinitions.ECHINOPSII_ARTIFACT_PREFIX + \
                            comp_plug.get_directory_name()+"."+s.name+"."+s_sub.name+"/" + \
                            comp_plug.version+"/net.echinopsii."+comp_plug.get_directory_name()+"."+s.name + \
                            "."+s_sub.name+"-"+comp_plug.version + "." + ext
                        list_lib.append(url)

            with open(self.dir_output+fjson.path+fjson.name, 'w') as target:
                json.dump(list_lib, target, indent=4)

    def generate_vsh_installer(self, version, components, fvsh):
        if GitTagHandler.is_git_tagged(version, path=self.dir_output+fvsh.path):
            return
        components = sorted(components, key=lambda mod: mod.order)
        components_list = []
        for component in components:
            v = component.version
            if ArianeDefinitions.SNAPSHOT_VERSION in v:
                if v.split("-").__len__() > 2:
                    v = v.split("-")[0] + "-" + v.split("-")[2]
                v = str(v).replace('-', '.')
            elif v.split("-").__len__() > 1:
                v = v.split("-")[0]
            components_list.append({
                ArianeDefinitions.COMPONENT_NAME: component.name,
                ArianeDefinitions.COMPONENT_VERSION: v,
                ArianeDefinitions.COMPONENT_TYPE: component.type
            })

        for component in components_list.copy():
            if component[ArianeDefinitions.COMPONENT_TYPE] == Component.TYPE_ENV:
                components_list.remove(component)

        template = self.jinja_env.get_template(
            fvsh.path + ArianeDefinitions.FILE_PREFIX_JINJA_DISTRIB_VSCRIPT + ArianeDefinitions.FILE_SUFFIX_JINJA
        )
        args = {ArianeDefinitions.DISTRIB_COMPONENTS: components_list}

        with open(self.dir_output+fvsh.path+fvsh.name, 'w') as target:
            target.write(template.render(args))
        LOGGER.info("Generator.generate_vsh_installer - Virgo Script (" + fvsh.path + fvsh.name + ") generated !")

    def generate_vsh_plugin(self, p, fvsh):
        if GitTagHandler.is_git_tagged(p.version, path=self.dir_output+fvsh.path):
            return
        v = p.version
        if ArianeDefinitions.SNAPSHOT_VERSION in p.version:
            v = str(v).replace('-', '.')
        template = self.jinja_env.get_template(
            fvsh.path + ArianeDefinitions.FILE_PREFIX_JINJA_PLUGIN_VSCRIPT + ArianeDefinitions.FILE_SUFFIX_JINJA
        )
        args = {
            ArianeDefinitions.PLUGIN: {
                ArianeDefinitions.PLUGIN_NAME: p.name,
                ArianeDefinitions.PLUGIN_VERSION: v
            }
        }

        with open(self.dir_output + fvsh.path + fvsh.name, 'w') as target:
            target.write(template.render(args))
        LOGGER.info("Generator.generate_vsh_plugin - Virgo Script (" + fvsh.path + fvsh.name + ") generated !")

    def generate_plan_tpl(self, version, dep_type, fplantpl):
        # Only for DEV generation
        if ArianeDefinitions.SNAPSHOT_VERSION not in version:
            return
        components = self.get_components_list(version, dep_type=dep_type)
        component = None
        for m in components:
            if m.name in fplantpl.name:
                component = m
                break
        if component is None:
            return
        if ArianeDefinitions.SNAPSHOT_VERSION not in component.version:
            return
        version_tag = component.version[:-len("-"+ArianeDefinitions.SNAPSHOT_VERSION)]
        if GitTagHandler.is_git_tagged(version_tag, path=self.dir_output+component.get_directory_name()):
            return

        tplname = fplantpl.name.split("_")[0] + "." + dep_type + ArianeDefinitions.FILE_SUFFIX_PLAN + \
            ArianeDefinitions.FILE_SUFFIX_TPL + ArianeDefinitions.FILE_SUFFIX_JINJA
        LOGGER.debug("Generator.generate_plan_tpl - tplname: " + str(tplname))
        if os.path.isfile(self.dir_output + fplantpl.path + tplname):
            template = self.jinja_env.get_template(fplantpl.path+tplname)
        else:
            tplname = fplantpl.name.split("_")[0] + ArianeDefinitions.FILE_SUFFIX_PLAN + \
                ArianeDefinitions.FILE_SUFFIX_TPL + ArianeDefinitions.FILE_SUFFIX_JINJA
            LOGGER.debug("Generator.generate_plan_tpl - tplname: " + str(tplname))
            template = self.jinja_env.get_template(fplantpl.path+tplname)

        co_version = component.version
        if component.version.split("-").__len__() > 2:
            t_version = component.version.split("-")[0] + "-" + component.version.split("-")[2]
            version_point = str(t_version).replace("-", ".")
        else:
            version_point = str(co_version).replace("-", ".")

        args = {
            ArianeDefinitions.COMPONENT_VERSION: co_version,
            ArianeDefinitions.COMPONENT_VERSION_POINT: version_point
        }

        with open(self.dir_output+fplantpl.path+fplantpl.name, 'w') as target:
            target.write(template.render(args))
        LOGGER.info("Generator.generate_plan_tpl - Virgo template plan (" + fplantpl.path + fplantpl.name + ") generated !")

    @staticmethod
    def __clean_environment_files(envpath):
        if os.path.exists(envpath):
            envfiles = []
            for (df, dp, fn) in os.walk(envpath):
                envfiles = [f for f in fn if f.endswith(ArianeDefinitions.FILE_SUFFIX_PLAN +
                                                        ArianeDefinitions.FILE_SUFFIX_TPL)]
                break
            for ef in envfiles:
                fpath = os.path.join(envpath, ef)
                if os.path.isfile(fpath):
                    os.remove(fpath)

    def compare_files(self, file_type, filename1, filename2):
        with open(filename1, 'r') as file1:
            with open(filename2, 'r') as file2:
                if file_type == ArianeDefinitions.FILE_TYPE_JSON:
                    return self.compare_json(file1, file2)
                elif file_type == ArianeDefinitions.FILE_TYPE_CJSON:
                    return self.compare_complex_json(file1, file2)
                elif file_type == ArianeDefinitions.FILE_TYPE_XML:
                    return self.compare_xml(file1, file2)
                else:
                    pass

    @staticmethod
    def compare_json(file1, file2):
        data1 = json.load(file1)
        data2 = json.load(file2)
        if (type(data1) is list) and (type(data2) is list):
            data1.sort()
            data2.sort()
        return data1 == data2

    @staticmethod
    def compare_complex_json(file1, file2):
        """
        Compare json files both composed of the following elements: {"key": [ {}, {}, ...], "key2": [{}, {}, ...], ...}
        a dictionary with list of dictionaries as values
        :param file1: 1st .json file
        :param file2: 2nd .json file
        :return: True if both .json files are equal
        """
        data1 = json.load(file1)
        data2 = json.load(file2)
        l = data1["ariane.community.plugin.rabbitmq"]
        l2 = data2["ariane.community.plugin.rabbitmq"]
        length = 0
        if len(l) == len(l2):
            for d in l:
                for d2 in l2:
                    if d == d2:
                        length += 1
                        break
            if length == len(l):
                return True

        return False

    @staticmethod
    def compare_xml(file1, file2):
        model = file1.read()
        flag = True
        for line in(l.strip() for l in file2.readlines()):
            if line in model:
                continue
            else:
                flag = False
        return flag
