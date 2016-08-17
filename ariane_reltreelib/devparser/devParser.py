# Ariane Release Manager
# Ariane Release Tree Library
# Dev Parser
#
# Copyright (C) 2016 echinopsii
# Author: mathilde.ffrench@echinopsii.net
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
import json
import xml.etree.ElementTree as ELTree
import os
from ariane_reltreelib.arianeDefinitions import ArianeDefinitions

__author__ = 'mffrench'


class MavenParser(object):

    @staticmethod
    def get_module_definition_from_pom(pom_file_path):
        module_definition = None
        if os.path.isfile(ArianeDefinitions.PROJECT_ABS_PATH + os.sep + pom_file_path):
            module_definition = {}
            ns = ArianeDefinitions.MAVEN_NS
            tree = ELTree.ElementTree()
            tree.parse(ArianeDefinitions.PROJECT_ABS_PATH + os.sep + pom_file_path)
            if tree.getroot().find(("{%s}" + ArianeDefinitions.MAVEN_MODULE_GROUPID) % ns) is not None:
                module_definition[ArianeDefinitions.MODULE_GROUPID] = tree.getroot().find(
                    ("{%s}" + ArianeDefinitions.MAVEN_MODULE_GROUPID) % ns
                ).text
            else:
                # VERSION PROBABLY DEFINED IN PARENT
                p = tree.getroot().find(("{%s}" + ArianeDefinitions.MAVEN_PARENT) % ns)
                if p is not None:
                    if p.find(("{%s}" + ArianeDefinitions.MAVEN_MODULE_GROUPID) % ns) is not None:
                        module_definition[ArianeDefinitions.MODULE_GROUPID] = p.find(
                            ("{%s}" + ArianeDefinitions.MAVEN_MODULE_GROUPID) % ns
                        ).text

            if tree.getroot().find(("{%s}" + ArianeDefinitions.MAVEN_MODULE_ARTIFACTID) % ns) is not None:
                module_definition[ArianeDefinitions.MODULE_ARTIFACTID] = tree.getroot().find(
                    ("{%s}" + ArianeDefinitions.MAVEN_MODULE_ARTIFACTID) % ns
                ).text

            if tree.getroot().find(("{%s}" + ArianeDefinitions.MAVEN_MODULE_VERSION) % ns) is not None:
                module_definition[ArianeDefinitions.MODULE_VERSION] = tree.getroot().find(
                    ("{%s}" + ArianeDefinitions.MAVEN_MODULE_VERSION) % ns
                ).text
            else:
                # VERSION PROBABLY DEFINED IN PARENT
                p = tree.getroot().find(("{%s}" + ArianeDefinitions.MAVEN_PARENT) % ns)
                if p is not None:
                    if p.find(("{%s}" + ArianeDefinitions.MAVEN_MODULE_VERSION) % ns) is not None:
                        module_definition[ArianeDefinitions.MODULE_VERSION] = p.find(
                            ("{%s}" + ArianeDefinitions.MAVEN_MODULE_VERSION) % ns
                        ).text

            if tree.getroot().find(("{%s}" + ArianeDefinitions.MAVEN_MODULE_PACKAGING) % ns) is not None:
                if tree.getroot().find(
                        ("{%s}" + ArianeDefinitions.MAVEN_MODULE_PACKAGING) % ns
                ).text == ArianeDefinitions.MAVEN_PACKAGING_BND:
                    module_definition[ArianeDefinitions.MODULE_EXTENSION] = ArianeDefinitions.MAVEN_PACKAGING_JAR
                else:
                    module_definition[ArianeDefinitions.MODULE_EXTENSION] = tree.getroot().find(
                        ("{%s}" + ArianeDefinitions.MAVEN_MODULE_PACKAGING) % ns).text
        return module_definition

    @staticmethod
    def get_submodules_from_pom(pom_file_path):
        submodules_list = None
        if os.path.isfile(ArianeDefinitions.PROJECT_ABS_PATH + os.sep + pom_file_path):
            submodules_list = []
            ns = ArianeDefinitions.MAVEN_NS
            parent_tree = ELTree.ElementTree()
            parent_tree.parse(ArianeDefinitions.PROJECT_ABS_PATH + os.sep + pom_file_path)
            modules = parent_tree.getroot().find(("{%s}" + ArianeDefinitions.MAVEN_MODULES) % ns)
            if modules is not None:
                for child in modules:
                    sub_module_pom_file_path = pom_file_path.split('pom.xml')[0] + child.text + os.sep + "pom.xml"
                    sub_module = MavenParser.get_module_definition_from_pom(sub_module_pom_file_path)
                    if sub_module is None:
                        sub_module = {ArianeDefinitions.MODULE_GROUPID: "", ArianeDefinitions.MODULE_ARTIFACTID: "",
                                      ArianeDefinitions.MODULE_VERSION: "", ArianeDefinitions.MODULE_EXTENSION: ""}
                    sub_module[ArianeDefinitions.MODULE_NAME] = child.text
                    if ArianeDefinitions.MODULE_EXTENSION not in sub_module or \
                            sub_module[ArianeDefinitions.MODULE_EXTENSION] == "" or \
                            sub_module[ArianeDefinitions.MODULE_EXTENSION] == "none" or \
                            sub_module[ArianeDefinitions.MODULE_EXTENSION] == "pom":
                        sub_module[ArianeDefinitions.MODULE_DEPLOYABLE] = False
                    else:
                        sub_module[ArianeDefinitions.MODULE_DEPLOYABLE] = True
                    submodules_list.append(sub_module)
        return submodules_list

    @staticmethod
    def get_ariane_dependencies_from_pom(pom_file_path):
        dependencies_list = None
        if os.path.isfile(ArianeDefinitions.PROJECT_ABS_PATH + os.sep + pom_file_path):
            dependencies_list = []
            ns = ArianeDefinitions.MAVEN_NS
            tree = ELTree.ElementTree()
            tree.parse(ArianeDefinitions.PROJECT_ABS_PATH + os.sep + pom_file_path)
            properties = tree.getroot().find(("{%s}" + ArianeDefinitions.MAVEN_PROPERTIES) % ns)
            if properties is not None:
                for child in properties:
                    if "ariane" in child.tag:
                        if ArianeDefinitions.COMPONENT_DEPENDENCY_MIN_VERSION in child.tag or \
                                ArianeDefinitions.COMPONENT_DEPENDENCY_MAX_VERSION in child.tag:
                            child_tag_component_name_idx = len(child.tag.split(".")) - 2
                        else:
                            child_tag_component_name_idx = len(child.tag.split(".")) - 1
                        dependency_name = child.tag.split(".")[child_tag_component_name_idx]

                        ariane_dependency = None
                        for dependency in dependencies_list:
                            if dependency[ArianeDefinitions.COMPONENT_DEPENDENCY_NAME] == dependency_name:
                                ariane_dependency = dependency
                                break

                        if ariane_dependency is None:
                            ariane_dependency = {ArianeDefinitions.COMPONENT_DEPENDENCY_NAME: dependency_name}
                            dependencies_list.append(ariane_dependency)

                        if ArianeDefinitions.COMPONENT_DEPENDENCY_MIN_VERSION in child.tag:
                            ariane_dependency[ArianeDefinitions.COMPONENT_DEPENDENCY_MIN_VERSION] = child.text
                        elif ArianeDefinitions.COMPONENT_DEPENDENCY_MAX_VERSION in child.tag:
                            ariane_dependency[ArianeDefinitions.COMPONENT_DEPENDENCY_MAX_VERSION] = child.text
                        else:
                            ariane_dependency[ArianeDefinitions.COMPONENT_DEPENDENCY_CURRENT_VERSION] = child.text
        return dependencies_list


class DistParser(object):

    @staticmethod
    def get_components_for_distrib(dist_json_git_repos_file_path):
        components_for_distrib = None
        if os.path.isfile(ArianeDefinitions.PROJECT_ABS_PATH + os.sep + dist_json_git_repos_file_path):
            components_for_distrib = []
            git_repos = json.load(open(ArianeDefinitions.PROJECT_ABS_PATH + os.sep + dist_json_git_repos_file_path))
            for module in git_repos.keys():
                git_repo = git_repos[module]
                git_repo_type = git_repo[ArianeDefinitions.COMPONENT_TYPE]
                if git_repo_type == ArianeDefinitions.COMPONENT_TYPE_CORE or \
                        git_repo_type == ArianeDefinitions.COMPONENT_TYPE_ENVIRONMENT or \
                        git_repo_type == ArianeDefinitions.COMPONENT_TYPE_LIBRARY:
                    simple_name_idx = len(module.split(".")) - 1
                    module_simple_name = module.split(".")[simple_name_idx]
                    components_for_distrib.append({
                        ArianeDefinitions.COMPONENT_NAME: module_simple_name,
                        ArianeDefinitions.COMPONENT_TYPE: git_repo_type
                    })
        return components_for_distrib
