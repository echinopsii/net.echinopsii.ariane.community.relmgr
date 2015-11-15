# Ariane Release Manager
# Ariane Release Server
# Server main
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

import logging.config
import json
import os

project_path = os.getcwd()
project_path = project_path[:project_path.index('/ariane.community.relmgr')]
relmgr_path = os.path.join(project_path, "ariane.community.relmgr")
import sys
sys.path.append(project_path)
sys.path.append(relmgr_path)
import logging
from ariane_reltreelib.dao import ariane_delivery
from ariane_relsrv.server.config import Config


def setup_logging(default_path='misc/relsrv_logging_conf.json', default_level=logging.INFO):
    path = default_path
    if os.path.exists(path):
        with open(path, 'r') as f:
            config = json.load(f)
        logging.config.dictConfig(config)
    else:
        logging.basicConfig(level=default_level)

    logging.getLogger("py2neo").setLevel(logging.WARNING)
    logging.getLogger("httpstream").setLevel(logging.WARNING)

RELMGR_CONFIG = None

try:
    RELMGR_CONFIG = Config()
    RELMGR_CONFIG.parse(os.path.join(relmgr_path, "ariane_relsrv", "server", "misc", "confsrv.json"))
except Exception as e:
    print('Release Manager configuration issue: ' + e.__str__())
    exit(1)

setup_logging(RELMGR_CONFIG.log_file)
LOGGER = logging.getLogger(__name__)
try:
    ariane = ariane_delivery.DeliveryTree({"login": RELMGR_CONFIG.neo4j_login, "password": RELMGR_CONFIG.neo4j_password,
                                           "host": RELMGR_CONFIG.neo4j_host, "port": RELMGR_CONFIG.neo4j_port,
                                           "type": "neo4j"})
except Exception as e:
    print('Release Manager Neo4j connection issue: ' + e.__str__())
    exit(2)

from ariane_relsrv.server import restful
myglobals = {"conf": RELMGR_CONFIG, "delivery_tree": ariane, "logger": LOGGER, "project_path": project_path,
             "relmgr_path": relmgr_path}

if __name__ == '__main__':
    restful.start_relmgr(myglobals)
