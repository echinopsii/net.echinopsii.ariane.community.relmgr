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

    COMPONENT_NAME = "name"
    COMPONENT_TYPE = "type"
    COMPONENT_ORDER = "order"
    COMPONENT_BUILD = "build"
    COMPONENT_BUILD_MAVEN = "maven"
    COMPONENT_BUILD_MAVEN_PYTHON = "maven_python"
    COMPONENT_BUILD_NONE = "none"
    COMPONENT_TYPE_CORE = "core"
    COMPONENT_TYPE_LIBRARY = "library"
    COMPONENT_TYPE_ENVIRONMENT = "environment"
    COMPONENT_VERSION = "version"

    COMPONENT_DEPENDENCY_NAME = "name"
    COMPONENT_DEPENDENCY_CURRENT_VERSION = "version"
    COMPONENT_DEPENDENCY_MAX_VERSION = "max"
    COMPONENT_DEPENDENCY_MIN_VERSION = "min"

    MODULE_NAME = "name"
    MODULE_VERSION = "version"
    MODULE_GROUPID = "groupId"
    MODULE_ARTIFACTID = "artifactId"
    MODULE_ORDER = "order"
    MODULE_EXTENSION = "extension"
    MODULE_DEPLOYABLE = "deployable"

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
