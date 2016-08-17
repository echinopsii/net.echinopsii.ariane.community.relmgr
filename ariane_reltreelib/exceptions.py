# Ariane Release Manager
# Ariane Release Tree Library
# Exceptions
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

__author__ = 'stanrenia'


class NeoDAOError(Exception):
    def __repr__(self):
        return "Unspecified NeoDAO Error has occured"


class GraphFabricError(Exception):
    def __repr__(self):
        return "Graph fabric has raised an error: Invalid Graph type"


class NeoDAOAuthError(NeoDAOError):
    def __repr__(self):
        return self.args[0] + " is an incorrect Login/Password"


class NeoDAOTypeError(NeoDAOError):
    def __repr__(self):
        return self.args[0] + " is a wrong object type. It should be an ArianeNode subclass object"


class NeoDAOPropertyError(NeoDAOError):
    def __repr__(self):
        return self.args[0] + " is a wrong property. It should be an existent property in a Neo4j database's node"


class NeoDAODataFromDbError(NeoDAOError):
    def __repr__(self):
        return self.args[0] + "Data retrieved from database are corrupted. Compare Database's Data with data Model"


class NeoDAOFileNotFound(NeoDAOError):
    def __repr__(self):
        return self.args[0] + " file not found"


class CommandError(Exception):
    def __repr__(self):
        return "Unspecified Command Error has occured: "


class ServerConfigFileNotFoundError(Exception):
    def __repr__(self):
        return self.args[0] + " does not exist"


class ServerConfigFileError(Exception):
    def __repr__(self):
        return "The following configuration parameters are missing in " + self.args[0] + " : " + self.args[1]
