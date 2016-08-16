# Ariane Release Manager
# Bootstrap test
# Generate new distribution
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

import sys

sys.path.append('/ECHINOPSII/srenia/ariane.community.relmgr')

from ariane_reltreelib.dao import ariane_delivery
from ariane_reltreelib.generator import generator

args = {"login": "neo4j", "password": "admin", "type": "neo4j"}
ariane = ariane_delivery.DeliveryTree(args)
output_directory = "/ECHINOPSII/srenia/"
templates_directory = "/ECHINOPSII/srenia/"
g = generator.Generator(ariane, {"outputs": output_directory, "templates": templates_directory})

# g.generate_all_distribution("0.6.4-SNAPSHOT")
idm = ariane.plugin_service.find({"name": "rabbitmq"})
idm = idm[0]
ariane.plugin_service.update_arianenode_lists(idm)
g.generate_pom(idm)
