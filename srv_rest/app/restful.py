from flask import Flask, make_response, jsonify
from flask_restful import reqparse, abort, Api, Resource
from ariane_deliverytool.dao import ariane_delivery
import json

app = Flask(__name__)
api = Api(app)
ariane = ariane_delivery.DeliveryTree({"login": "neo4j", "password": "admin", "type": "neo4j"})

TODOS = {
    'todo1': {'task': 'build an API'},
    'todo2': {'task': '?????'},
    'todo3': {'task': 'profit!'},
}

dist = ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
modules = ariane.module_service.get_all(dist)

def abort_error(error, msg):
    if error == "BAD_REQUEST":
        abort(400, message=msg)

@app.after_request
def after_request(response):
    response.headers.add('Access-Control-Allow-Origin', '*')
    response.headers.add('Access-Control-Allow-Headers', 'Content-Type,Authorization')
    response.headers.add('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE')
    return response

# Todo
# shows a single todo item and lets you delete a todo item
class HelloWorld(Resource):
    def get(self):
        msg = {"msg": "Hello World !"}
        return jsonify(msg)
class RestDistribtuion(Resource):
    def get(self, version):
        print(version, type(version))
        d = ariane.distribution_service.get_unique({"version": version})
        print(d)
        # Handle not found
        return jsonify({"distrib": d.get_properties()})

class RestDistributionList(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        # self.reqparse.add_argument('name', type=str)
        self.reqparse.add_argument('name', type=str, help='Distribution name')
        self.reqparse.add_argument('version', type=str, help='Distribution version')
        self.reqparse.add_argument('nID', type=int, help='Distribution database ID named "nID"')
        # self.reqparse.add_argument('version', type=str)
        super(RestDistributionList, self).__init__()

    def get(self):
        dlist = ariane.distribution_service.get_all()
        d = [d.get_properties() for d in dlist]
        return jsonify({"distrib": d})

    def post(self):
        args = self.reqparse.parse_args()
        if args["nID"] is not None:
            d = ariane.distribution_service.get_unique({"nID": args["nID"]})
            if isinstance(d, ariane_delivery.Distribution):
                args.pop("nID")
                if d.update(args):
                    d.save()
                    d = d.get_properties()
                    return json.dumps({"distrib": d}), 200
                else:
                    abort_error("BAD_REQUEST", "Distribution {} already exists".format(args))
            else:
                abort_error("BAD_REQUEST", "Given parameters {} does not match any Distribition in database".format(args))
        else:
            dist_exists = ariane.distribution_service.get_unique({"name": args["name"], "version": args["version"]})
            if dist_exists is None:
                d = ariane_delivery.Distribution("", "")
                primary_key = ['name', 'version']
                if ariane_delivery.ArianeNode.check_args_init(primary_key, args.copy()):
                    args["nID"] = 0
                    d = ariane_delivery.ArianeNode.create_subclass("Distribution", args)
                    d.save()
                    d = d.get_properties()
                    return json.dumps({"distrib": d}), 201
                else:
                    d = d.get_properties()
                    d.pop("nID")
                    abort_error("BAD_REQUEST", "Parameters are missing. You must provide: {}".format(d.keys()))
            else:
                abort_error("BAD_REQUEST", "Distribution {} already exists".format(args))

    def delete(self):
        args = self.reqparse.parse_args()
        for key in args.copy().keys():
            if args[key] is None:
                args.pop(key)
        d = ariane.distribution_service.get_unique(args.copy())
        if isinstance(d, ariane_delivery.Distribution):
            d.delete()
            return {}, 200
        else:
            abort_error("BAD_REQUEST", "Distribution {} does not exist".format(args))
# TodoList
# shows a list of all todos, and lets you POST to add new tasks
# class TodoList(Resource):
#     def get(self):
#         return TODOS
#
#     def post(self):
#         args = parser.parse_args()
#         todo_id = int(max(TODOS.keys()).lstrip('todo')) + 1
#         todo_id = 'todo%i' % todo_id
#         TODOS[todo_id] = {'task': args['task']}
#         return TODOS[todo_id], 201

##
## Actually setup the Api resource routing here
##
# api.add_resource(TodoList, '/todos')
api.add_resource(RestDistributionList, '/rest/distrib')
api.add_resource(RestDistribtuion, '/rest/distrib/<version>')
api.add_resource(HelloWorld, '/helloworld', "/hello/world")

if __name__ == '__main__':
    app.run(debug=True)
