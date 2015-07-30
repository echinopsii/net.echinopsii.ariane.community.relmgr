import sys 

sys.path.append('/ECHINOPSII/srenia/ariane.community.deliverytool')

from ariane_deliverytool.dao import ariane_delivery
from ariane_deliverytool.generator import generator

args = {"login": "neo4j", "password": "password", "type": "neo4j"}

ariane = ariane_delivery.DeliveryTree(args)
output_directory = "/ECHINOPSII/srenia/"
templates_directory = "/ECHINOPSII/srenia/"
g = generator.Generator(ariane, output_directory, templates_directory)

g.generate_all_distribution("0.6.4-SNAPSHOT")
