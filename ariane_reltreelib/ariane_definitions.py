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

    COMPONENT_DEPENDENCY_NAME = "name"
    COMPONENT_DEPENDENCY_CURRENT_VERSION = "version"
    COMPONENT_DEPENDENCY_MAX_VERSION = "max"
    COMPONENT_DEPENDENCY_MIN_VERSION = "min"

    @staticmethod
    def set_project_abs_path(project_abs_path):
        ArianeDefinitions.PROJECT_ABS_PATH = project_abs_path
