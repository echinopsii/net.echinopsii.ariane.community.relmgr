import sys 

sys.path.append('/ECHINOPSII/srenia/ariane.community.deliverytool')

from ariane_reltreelib.dao import ariane_delivery
from ariane_reltreelib.generator import generator

args = {"login": "neo4j", "password": "admin", "type": "neo4j"}
ariane = ariane_delivery.DeliveryTree(args)
output_directory = "/ECHINOPSII/srenia/"
templates_directory = "/ECHINOPSII/srenia/"
g = generator.Generator(ariane, output_directory, templates_directory)

# g.generate_all_distribution("0.6.4-SNAPSHOT")
idm = ariane.plugin_service.find({"name": "rabbitmq"})
idm = idm[0]
ariane.plugin_service.update_arianenode_lists(idm)
g.generate_pom(idm)
