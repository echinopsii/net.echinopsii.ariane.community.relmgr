from flask import Flask
from flask_restful import Api
from ariane_reltreelib.dao import ariane_delivery

app = Flask(__name__)
api = Api(app)
ariane = ariane_delivery.DeliveryTree({"login": "neo4j", "password": "admin", "type": "neo4j"})
# from srv_rest.app import views
from ariane_relsrv.app import restful