# Ariane Release Manager
# Templates directory creation
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

import os
import unittest
from ariane_reltreelib.dao import ariane_delivery
from tests import create_db_from_file

__author__ = 'stanrenia'

# This file is used only to create directories for tests.

class MakeDir(object):
    def __init__(self):
        self.ariane = ariane_delivery.DeliveryTree({"login": "neo4j", "password": "admin", "type": "neo4j"})

    def make(self):
        d = self.ariane.distribution_service.get_unique({"version": '0.6.2'})
        modules = self.ariane.module_service.get_all(d)
        plugins = self.ariane.plugin_service.get_all(d)

        def make_sub_dir(mod_plug):
            os.mkdir('templates/' + mod_plug.get_directory_name() + '/distrib')
            os.mkdir('templates/' + mod_plug.get_directory_name() + '/distrib' + '/db')
            os.mkdir('templates/' + mod_plug.get_directory_name() + '/distrib' + '/db' + '/resources')
            os.mkdir('templates/' + mod_plug.get_directory_name() + '/distrib' + '/db' + '/resources' + '/builds')
            os.mkdir('templates/' + mod_plug.get_directory_name() + '/distrib' + '/db' + '/resources' + '/virgo')
            os.mkdir('templates/' + mod_plug.get_directory_name() + '/distrib' + '/db' + '/resources' + '/virgo' + '/repository')
            if mod_plug.node_type == "Module":
                os.mkdir('templates/' + mod_plug.get_directory_name() + '/distrib' + '/db' + '/resources' + '/virgo' + '/repository' + '/ariane-core')
            else:
                os.mkdir('templates/' + mod_plug.get_directory_name() + '/distrib' + '/db' + '/resources' + '/virgo' + '/repository' + '/ariane-plugins')

        for mod in modules:
            if mod.name not in ["environment", "installer"]:
                make_sub_dir(mod)

        for p in plugins:
            make_sub_dir(p)


class TestMakeDir(unittest.TestCase):

    def test_mk_dir(self):
        mkdir = MakeDir()
        print(os.path.exists('templates/ariane.community.messaging'))
        mkdir.make()
