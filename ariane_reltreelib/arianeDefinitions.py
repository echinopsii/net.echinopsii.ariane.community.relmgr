# Ariane Release Manager
# Ariane Release Tree Library
# Ariane static definitions
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
__author__ = 'mffrench'

class ArianeDefinitions(object):
    PROJECT_ABS_PATH = ""

    GRAPH_ARGS_TYPE = "args_type"
    GRAPH_LABEL = "label"
    GRAPH_LINKED_NODE = "linked_node"
    GRAPH_NODE = "node"
    GRAPH_NODE_ID = "nID"
    GRAPH_NODE_TYPE = "node_type"
    GRAPH_NODE_TYPE_DISTRIB = "Distribution"
    GRAPH_NODE_TYPE_PLUGIN = "Plugin"
    GRAPH_NODE_TYPE_COMPONENT = "Component"
    GRAPH_NODE_TYPE_MODULE = "Module"
    GRAPH_OBJ_TYPE_NODE = "Node"
    GRAPH_PROPERTIES = "properties"
    GRAPH_REL_START = "start"
    GRAPH_REL_START_NID = "start_nID"
    GRAPH_REL_START_PROPS = "start_properties"
    GRAPH_REL_START_LABEL = "start_label"
    GRAPH_REL_END = "end"
    GRAPH_REL_END_NID = "end_nID"
    GRAPH_REL_END_PROPS = "end_properties"
    GRAPH_REL_END_LABEL = "end_label"
    GRAPH_REL = "relation"
    GRAPH_REL_PROPS = "rel_properties"
    GRAPH_REL_NODE = "rel_node"
    GRAPH_REL_TYPE_CONTAINS = "CONTAINS"
    GRAPH_REVERSE = "reverse"

    CMD_NEOJ_IMPORT_FILE = "/bin/neo4j-shell -file "

    SNAPSHOT_VERSION = "SNAPSHOT"

    DISTRIB = "distrib"
    DISTRIB_NAME = "name"
    DISTRIB_VERSION = "version"
    DISTRIB_EDITABLE = "editable"
    DISTRIB_URL_REPOS = "url_repos"
    DISTRIB_DEP_TYPE = "dep_type"
    DISTRIB_DEP_TYPE_MONOLITH = "mno"
    DISTRIB_DEP_TYPE_FRONT = "frt"
    DISTRIB_DEP_TYPE_MAPPING_MS = "mms"
    DISTRIB_GROUPID = "groupId"
    DISTRIB_ARTIFACTID = "artifactId"
    DISTRIB_PACKAGING = "packaging"
    DISTRIB_COMPONENTS = "components"
    DISTRIB_DEPENDENCIES = "dependencies"

    PLUGIN = "plugin"
    PLUGIN_NAME = "name"
    PLUGIN_VERSION = "version"
    PLUGIN_PROPERTIES = "properties"
    PLUGIN_GIT_REPOS = "git_repos"

    COMPONENT = "component"
    COMPONENT_NAME = "name"
    COMPONENT_TYPE = "type"
    COMPONENT_ORDER = "order"
    COMPONENT_BUILD = "build"
    COMPONENT_BRANCH = "branch"
    COMPONENT_BUILD_MAVEN = "maven"
    COMPONENT_BUILD_MAVEN_PYTHON = "maven_python"
    COMPONENT_BUILD_NONE = "none"
    COMPONENT_TYPE_CORE = "core"
    COMPONENT_TYPE_LIBRARY = "library"
    COMPONENT_TYPE_ENVIRONMENT = "environment"
    COMPONENT_VERSION = "version"
    COMPONENT_VERSION_POINT = "version_point"
    COMPONENT_GROUPID = "groupId"
    COMPONENT_ARTIFACTID = "artifactId"
    COMPONENT_SUBMODULES = "submodules"

    COMPONENT_DEPENDENCY_NAME = "name"
    COMPONENT_DEPENDENCY_CURRENT_VERSION = "version"
    COMPONENT_DEPENDENCY_MAX_VERSION = "max"
    COMPONENT_DEPENDENCY_VMAX = "vmax"
    COMPONENT_DEPENDENCY_VERSION_MAX = "version_max"
    COMPONENT_DEPENDENCY_MIN_VERSION = "min"
    COMPONENT_DEPENDENCY_VMIN = "vmin"
    COMPONENT_DEPENDENCY_VERSION_MIN = "version_min"

    MODULE = "module"
    MODULE_NAME = "name"
    MODULE_VERSION = "version"
    MODULE_GROUPID = "groupId"
    MODULE_ARTIFACTID = "artifactId"
    MODULE_ORDER = "order"
    MODULE_EXTENSION = "extension"
    MODULE_DEPLOYABLE = "deployable"

    FILE_NAME = "name"
    FILE_VERSION = "version"
    FILE_TYPE = "type"
    FILE_PATH = "path"

    FILE_PREFIX_JINJA_DISTRIB_VSCRIPT = "installer_vsh"
    FILE_PREFIX_JINJA_DISTRIB_POM = "pom_distrib"
    FILE_PREFIX_JINJA_PLUGIN_VSCRIPT = "plugin_vsh"

    FILE_SUFFIX_JINJA = ".jnj"
    FILE_SUFFIX_JSON = ".json"
    FILE_SUFFIX_PLAN = ".plan"
    FILE_SUFFIX_TPL = ".tpl"
    FILE_SUFFIX_VSH = ".vsh"
    FILE_SUFFIX_XML = ".xml"

    FILE_TYPE_BUILD_JSON = "json_build"
    FILE_TYPE_DIST_JSON = "json_dist"
    FILE_TYPE_DIST_PLUGIN_JSON = "json_plugin_dist"
    FILE_TYPE_DIST_GIT_REPOS = "json_git_repos"
    FILE_TYPE_DIST_POM = "pom_dist"
    FILE_TYPE_KARAF_FEATURE = "feature"
    FILE_TYPE_MVN_POM = "pom"
    FILE_TYPE_CJSON = "c_json"
    FILE_TYPE_JSON = "json"
    FILE_TYPE_PLUGINS_JSON = "json_plugins"
    FILE_TYPE_XML = "xml"
    FILE_TYPE_VIRGO_PLAN = "plan"
    FILE_TYPE_VIRGO_PLAN_TPL = "plantpl"
    FILE_TYPE_VIRGO_SCRIPT = "vsh"

    MAVEN_NS = "http://maven.apache.org/POM/4.0.0"
    MAVEN_MODULES = "modules"
    MAVEN_MODULE_GROUPID = "groupId"
    MAVEN_MODULE_ARTIFACTID = "artifactId"
    MAVEN_MODULE_PACKAGING = "packaging"
    MAVEN_MODULE_VERSION = "version"
    MAVEN_PARENT = "parent"
    MAVEN_PROPERTIES = "properties"
    MAVEN_PACKAGING_POM = "pom"
    MAVEN_PACKAGING_WAR = "war"
    MAVEN_PACKAGING_JAR = "jar"
    MAVEN_PACKAGING_BND = "bundle"

    @staticmethod
    def set_project_abs_path(project_abs_path):
        ArianeDefinitions.PROJECT_ABS_PATH = project_abs_path
