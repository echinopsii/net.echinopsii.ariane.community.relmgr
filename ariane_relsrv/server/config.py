# Ariane Release Manager
# Ariane Release Server
# Server Config
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

__author__ = 'stan renia'

import os
import json
import ariane_reltreelib.exceptions as err

class Config(object):
    def __init__(self):
        self.config_file_path = None
        self.db_export_path = None
        self.neo4j_path = None
        self.neo4j_login = None
        self.neo4j_password = None
        self.neo4j_host = None
        self.neo4j_port = None
        self.build_timeout = None
        self.ui_running_mode = None
        self.url_slack = None
        self.log_file = None
        self.users_file = None
        self.testing = None
        self.relmgr_host = None
        self.relmgr_port = None
        self.relmgr_url = None

    def parse(self, config_file_path):
        if not os.path.isfile(config_file_path):
            raise err.ServerConfigFileNotFoundError(config_file_path)

        with open(config_file_path, "r") as configfile:
            conf = json.load(configfile)
            conf_keys = ["NEO4J_LOGIN", "NEO4J_PASSWORD", "NEO4J_HOST", "NEO4J_PORT", "NEO4J_PATH", "DB_EXPORT_PATH",
                         "BUILD_TIMEOUT", "LOG_CONFIG_FILE_PATH"]
            forgotten_keys = []
            for k in conf_keys:
                if k not in conf.keys():
                    forgotten_keys.append(k)
            if len(forgotten_keys) > 0:
                raise err.ServerConfigFileError(config_file_path, forgotten_keys)

            self.db_export_path = conf["DB_EXPORT_PATH"]
            self.neo4j_path = conf["NEO4J_PATH"]
            self.neo4j_login = conf["NEO4J_LOGIN"]
            self.neo4j_password = conf["NEO4J_PASSWORD"]
            self.neo4j_host = conf["NEO4J_HOST"]
            self.neo4j_port = conf["NEO4J_PORT"]
            self.build_timeout = conf["BUILD_TIMEOUT"]
            self.ui_running_mode = conf["UI_RUNNING_MODE"]
            self.url_slack = conf["URL_SLACK"]
            self.log_file = conf["LOG_CONFIG_FILE_PATH"]
            self.users_file = conf["RELMGR_PASSWD_FILE_PATH"]
            self.testing = conf["TESTING"]
            self.relmgr_host = conf["RELMGR_HOST"]
            self.relmgr_port = conf["RELMGR_PORT"]
            self.relmgr_url = conf["RELMGR_URL"]
            self.config_file_path = config_file_path
