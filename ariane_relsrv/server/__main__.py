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
import traceback

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
import argparse
from ariane_reltreelib.dao import modelAndServices
from ariane_reltreelib.arianeDefinitions import ArianeDefinitions
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
    logging.getLogger("passlib").setLevel(logging.WARNING)


if __name__ == '__main__':
    config_path = "/etc/ariane_relmgr/confsrv.json"

    parser = argparse.ArgumentParser()
    parser.add_argument("command", default="relmgr",
                        help="Command choice [relmgr, passwd]")
    parser.add_argument("-c", "--configuration", default=False,
                        help="define your Ariane ProcOS configuration file path")
    parser.add_argument("-p", "--password", default=False,
                        help="define your Ariane ProcOS configuration file path")
    parser.add_argument("-u", "--username", default=False,
                        help="define your Ariane ProcOS configuration file path")

    args = parser.parse_args()
    if args.configuration:
        if os.path.isfile(args.configuration):
            config_path = args.configuration

    RELMGR_CONFIG = None

    try:
        RELMGR_CONFIG = Config()
        RELMGR_CONFIG.parse(config_path)
    except Exception as e:
        print('Release Manager configuration issue: ' + e.__str__())
        exit(1)

    setup_logging(RELMGR_CONFIG.log_file)
    LOGGER = logging.getLogger(__name__)
    try:
        ariane = modelAndServices.DeliveryTree({"login": RELMGR_CONFIG.neo4j_login,
                                                "password": RELMGR_CONFIG.neo4j_password,
                                                "host": RELMGR_CONFIG.neo4j_host,
                                                "port": RELMGR_CONFIG.neo4j_port,
                                                "type": "neo4j"})
        from ariane_relsrv.server import restful
        myglobals = {"conf": RELMGR_CONFIG, "delivery_tree": ariane, "project_path": project_path,
                     "relmgr_path": relmgr_path}
        # TODO: REMOVE LOOP DEPENDENCIES
        if RELMGR_CONFIG.testing or args.command == "relmgr":
            ArianeDefinitions.set_project_abs_path(project_path)
            restful.start_relmgr(myglobals)
        elif args.command in ["passwd", "add_user"]:
            if args.username and args.password:
                from ariane_relsrv.server.usersMgr import User
                User.users_file = RELMGR_CONFIG.users_file
                if args.command == "passwd":
                    LOGGER.info("changing " + args.username + " password to " + args.password)
                    ret = User.change_password(args.username, args.password)
                    if ret == 0:
                        LOGGER.info("Password of '"+args.username+"' has been changed")
                    else:
                        LOGGER.warn("The password has not been changed")
                elif args.command == "add_user":
                    LOGGER.info("Adding user " + args.username)
                    ret = User.create_user(args.username, args.password)
                    if ret == 0:
                        LOGGER.info("User '"+args.username+"' has been added")
                    else:
                        LOGGER.warn("User has not been added")
            else:
                LOGGER.warn("You must provide username (-u) and password (-p) to update the user password")
                LOGGER.warn("Example: 'relmgr.sh new_password -u myusername -p mynewpwd'")
    except Exception as e:
        traceback.print_exc()
        print('Release Manager initialization issue: ' + e.__str__())
        exit(2)
