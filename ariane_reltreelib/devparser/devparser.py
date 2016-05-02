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
import xml.etree.ElementTree as xml
import os
from ariane_reltreelib.ariane_definitions import ArianeDefinitions

__author__ = 'mffrench'

class MavenParser(object):

    @staticmethod
    def get_submodules_from_pom(pom_file_path):
        submodules_list = []

        ns = "http://maven.apache.org/POM/4.0.0"
        tree = xml.ElementTree()
        tree.parse(ArianeDefinitions.PROJECT_ABS_PATH + os.sep + pom_file_path)
        modules = tree.getroot().find("{%s}modules" % ns)
        if modules is not None:
            for child in modules:
                submodules_list.append(child.text)

        return submodules_list

    @staticmethod
    def get_ariane_dependencies_from_pom(pom_file_path):
        dependencies_list = []

        ns = "http://maven.apache.org/POM/4.0.0"
        tree = xml.ElementTree()
        tree.parse(ArianeDefinitions.PROJECT_ABS_PATH + os.sep + pom_file_path)
        properties = tree.getroot().find("{%s}properties" % ns)
        if properties is not None:
            for child in properties:
                if "ariane" in child.tag:
                    if ArianeDefinitions.COMPONENT_DEPENDENCY_MIN_VERSION in child.tag or \
                            ArianeDefinitions.COMPONENT_DEPENDENCY_MIN_VERSION in child.tag:
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
        components_for_distrib = []
        git_repos = json.load(open(ArianeDefinitions.PROJECT_ABS_PATH + os.sep + dist_json_git_repos_file_path))
        for module in git_repos.keys():
            git_repo = git_repos[module]
            git_repo_type = git_repo[ArianeDefinitions.COMPONENT_TYPE]
            if git_repo_type == "core" or git_repo_type == "environment" or git_repo_type == "library":
                simple_name_idx = len(module.split(".")) - 1
                module_simple_name = module.split(".")[simple_name_idx]
                components_for_distrib.append({
                    ArianeDefinitions.COMPONENT_NAME: module_simple_name,
                    ArianeDefinitions.COMPONENT_TYPE: git_repo_type
                })
        return components_for_distrib
