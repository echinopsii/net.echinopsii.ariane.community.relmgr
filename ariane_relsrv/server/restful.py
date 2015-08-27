# Ariane Release Manager
# Ariane Release Server
# REST Server
#
# Copyright (C) 2015 echinopsii
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

from flask import Flask, make_response, jsonify, render_template
from flask_restful import reqparse, abort, Api, Resource
from ariane_reltreelib.dao import ariane_delivery
import json

app = Flask(__name__)
api = Api(app)
ariane = ariane_delivery.DeliveryTree({"login": "neo4j", "password": "admin", "type": "neo4j"})

# TODO Gérer argument json reçu. Factoriser les class

dist = ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
modules = ariane.module_service.get_all(dist)

def abort_error(error, msg):
    if error == "BAD_REQUEST":
        abort(400, message=msg)
    elif error == "NOT_FOUND":
        abort(404, message=msg)

def clear_args(args):
    keys = [k for k in args.keys()]
    for key in keys:
        if args[key] is None:
            args.pop(key)

@app.after_request
def after_request(response):
    response.headers.add('Access-Control-Allow-Origin', '*')
    response.headers.add('Access-Control-Allow-Headers', 'Content-Type,Authorization')
    response.headers.add('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE')
    return response

headers_json = {'Content-Type': 'application/json'}

class UI(Resource):
    def get(self):
        headers = {'Content-Type': 'text/html'}
        return make_response(render_template('index.html'), 200, headers)
class HelloHtml(Resource):
    def get(self):
        headers = {'Content-Type': 'text/html'}
        return make_response(render_template('helloworld.html'), 200, headers)

class RestFileNode(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('parent')
        self.reqparse.add_argument('nID', type=int, help='Distribution database ID named "nID"')
        super(RestFileNode, self).__init__()

    def __get_file(self, unique_key):
        f = None
        if isinstance(unique_key, int):
            f = ariane_delivery.FileNode.get_file_by_nid(unique_key)
        else:
            if isinstance(unique_key, str):
                args = self.reqparse.parse_args()
                if args["parent"] is not None:
                    parent = json.loads(args["parent"])
                    parent = ariane.find_without_label(parent)
                    if issubclass(parent.__class__, ariane_delivery.ArianeNode):
                        f = ariane.get_one_file(parent, unique_key)
        return f

    def get(self, unique_key):
        f = self.__get_file(unique_key)
        if f is not None:
            return make_response(json.dumps({"filenode": f.get_properties()}), 200, headers_json)
        else:
            abort_error("NOT_FOUND", "Error, Wrong URL")

    def delete(self, unique_key):
        p = self.__get_file(unique_key)
        if p is not None:
            p.delete()
            return make_response(json.dumps({}), 200, headers_json)
        else:
            abort_error("NOT_FOUND", "Error, Wrong URL")

class RestFileNodeList(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('name', type=str, help='Distribution name')
        self.reqparse.add_argument('version', type=str, help='Distribution version')
        self.reqparse.add_argument('type', type=str, help='Distribution version')
        self.reqparse.add_argument('path', type=str, help='Distribution version')
        self.reqparse.add_argument('nID', type=int, help='Distribution database ID named "nID"')
        self.reqparse.add_argument('filenode')
        self.reqparse.add_argument('parent')
        super(RestFileNodeList, self).__init__()

    def get(self):
        args = self.reqparse.parse_args()
        if args["parent"] is not None:
            parent = json.loads(args["parent"])
            parent = ariane.find_without_label(parent)
            if issubclass(parent.__class__, ariane_delivery.ArianeNode):
                flist = ariane.get_files(parent)
                flist = [f.get_properties() for f in flist]
                return make_response(json.dumps({"filenodes": flist}), 200, headers_json)
            else:
                abort_error("BAD_REQUEST", "Given parameters does not match to a FileNode's parent")
        else:
            abort_error("BAD_REQUEST", "Missing parameter 'version'")

    def post(self):
        args = self.reqparse.parse_args()
        if args["nID"] is not None and args["nID"] > 0:
            f = ariane_delivery.FileNode.get_file_by_nid(args["nID"])
            if isinstance(f, ariane_delivery.FileNode):
                clear_args(args)
                if f.update(args):
                    f.save()
                    f = f.get_properties()
                    return make_response(json.dumps({"filenode": f}), 200, headers_json)
                else:
                    abort_error("BAD_REQUEST", "FileNode {} already exists".format(args))
            else:
                abort_error("BAD_REQUEST", "Given parameters {} does not match any FileNode in database".format(args))
        elif args["filenode"] is not None and args["parent"] is None:
            arg_p = json.loads(args["filenode"])
            f = ariane_delivery.FileNode.get_file_by_nid(arg_p["nID"])
            if isinstance(f, ariane_delivery.FileNode):
                if f.update(arg_p):
                    f.save()

                    return make_response(json.dumps({"filenode": f.get_properties()}), 200, headers_json)
                else:
                    abort_error("BAD_REQUEST", "FileNode {} already exists".format(f.get_properties()))
            else:
                abort_error("BAD_REQUEST", "Given parameter 'filenode' is not a FileNode")
        else:
            fmodel = ariane_delivery.FileNode("", "", "", "")
            for key in args.keys():
                if key != "filenode" and args[key] is None:
                    abort_error("BAD_REQUEST", "Parameters are missing. You must provide: {}".format(
                                fmodel.get_properties().keys()))
            file_exists = ariane.find_without_label({"name": args["name"], "version": args["version"],
                                                     "type": args["type"], "path": args["path"]})
            if file_exists is None:
                parent = json.loads(args["parent"])
                parent = ariane.find_without_label({"nID": parent["nID"]})
                if issubclass(parent.__class__, ariane_delivery.ArianeNode):
                    args.pop("parent")
                    primary_key = ['name', 'version', 'type', 'path']
                    if ariane.check_args_init(primary_key, args.copy()):
                        args["nID"] = 0
                        f = ariane_delivery.FileNode.create(args)
                        parent.add_file(f)
                        parent.save()
                        return make_response(json.dumps({"filenode": f.get_properties()}), 201, headers_json)
                    else:
                        abort_error("BAD_REQUEST", "Parameters are missing. You must provide: {}".format(
                                    fmodel.get_properties().keys()))
            else:
                abort_error("BAD_REQUEST", "FileNode {} already exists".format(args))

class RestPlugin(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('version', type=str, help='Distribution version')
        self.reqparse.add_argument('nID', type=int, help='Distribution database ID named "nID"')
        super(RestPlugin, self).__init__()

    def __get_plugin(self, unique_key, unique_key2):
        p = None
        if unique_key2 is None:
            if isinstance(unique_key, int):
                p = ariane.plugin_service.get_unique({"nID": unique_key})
        else:
            if isinstance(unique_key, str) and isinstance(unique_key2, str):
                p = ariane.plugin_service.get_unique({"name": unique_key, "version": unique_key2})
        return p

    def get(self, unique_key, unique_key2=None):
        p = self.__get_plugin(unique_key, unique_key2)
        if p is not None:
            return make_response(json.dumps({"plugin": p.get_properties()}), 200, headers_json)
        else:
            if unique_key2 is None:
                abort_error("BAD_REQUEST", "No Module found with given parameters {}".format(unique_key))
            else:
                abort_error("BAD_REQUEST", "No Module found with given parameters {} {}".format(unique_key, unique_key2))

    def delete(self, unique_key, unique_key2=None):
        p = self.__get_plugin(unique_key, unique_key2)
        if p is not None:
            p.delete()
            return make_response(json.dumps({}), 200, headers_json)
        else:
            abort_error("NOT_FOUND", "Error, Wrong URL")

class RestPluginList(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('name', type=str, help='Distribution name')
        self.reqparse.add_argument('version', type=str, help='Distribution version')
        self.reqparse.add_argument('nID', type=int, help='Distribution database ID named "nID"')
        self.reqparse.add_argument('dist_version')
        self.reqparse.add_argument('plugin')
        super(RestPluginList, self).__init__()

    def get(self):
        args = self.reqparse.parse_args()
        if args["version"] is not None:
            d = ariane.distribution_service.get_unique({"version": args["version"]})
            plist = ariane.plugin_service.get_all(d)
            p = [p.get_properties() for p in plist]
            return make_response(json.dumps({"plugins": p}), 200, headers_json)
        else:
            abort_error("BAD_REQUEST", "Missing parameter 'version'")

    def post(self):
        args = self.reqparse.parse_args()
        if args["nID"] is not None and args["nID"] > 0:
            p = ariane.plugin_service.get_unique({"nID": args["nID"]})
            if isinstance(p, ariane_delivery.Plugin):
                clear_args(args)
                if p.update(args):
                    p.save()
                    p = p.get_properties()
                    return make_response(json.dumps({"plugin": p}), 200, headers_json)
                else:
                    abort_error("BAD_REQUEST", "Plugin {} already exists".format(args))
            else:
                abort_error("BAD_REQUEST", "Given parameters {} don't match any Plugin in database".format(args))
        elif args["plugin"] is not None:
            arg_p = json.loads(args["plugin"])
            p = ariane.plugin_service.get_unique(arg_p)
            if isinstance(p, ariane_delivery.Plugin):
                if p.update(arg_p):
                    p.save()
                    return make_response(json.dumps({"plugin": p.get_properties()}), 200, headers_json)
            else:
                abort_error("BAD_REQUEST", "Given parameters {} don't match any Plugin in database".format(arg_p))
        else:
            p = ariane_delivery.Plugin("", "")
            for key in args.keys():
                if key != "plugin" and args[key] is None:
                    abort_error("BAD_REQUEST", "Parameters are missing. You must provide: {}".format(
                        p.get_properties().keys()))
            plug_exists = ariane.plugin_service.get_unique({"name": args["name"], "version": args["version"]})
            if plug_exists is None:
                dist = ariane.distribution_service.get_unique({"version": args["dist_version"]})
                if isinstance(dist, ariane_delivery.Distribution):
                    primary_key = ['name', 'version']
                    if ariane.check_args_init(primary_key, args.copy()):
                        args["nID"] = 0
                        p = ariane_delivery.ArianeNode.create_subclass("Plugin", args)
                        dist.add_plugin(p)
                        dist.save()
                        p = p.get_properties()
                        return make_response(json.dumps({"plugin": p}), 201, headers_json)
                    else:
                        abort_error("BAD_REQUEST", "Parameters are missing. You must provide: {}".format(
                                    p.get_properties().keys()))
                else:
                    abort_error("BAD_REQUEST",
                                "Given parameter 'dist_version' does not match any Distribution's version")
            else:
                abort_error("BAD_REQUEST", "Plugin {} already exists".format(args))


class RestSubModule(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('parent', type=str, help='Submodule parent')
        super(RestSubModule, self).__init__()

    def __get_submodule(self, unique_key):
        s = None
        if isinstance(unique_key, int):
            s = ariane.submodule_service.get_unique({"nID": unique_key})
            if s is None:
                s = ariane.submodule_parent_service.get_unique({"nID": unique_key})
        elif isinstance(unique_key, str):
            if unique_key.count('.') > 0:
                s = ariane.submodule_service.get_unique({"artifactId": unique_key})
                if s is None:
                    s = ariane.submodule_parent_service.get_unique({"artifactId": unique_key})
            else:
                args = self.reqparse.parse_args()
                if args["parent"] is not None:
                    args["parent"] = json.loads(args["parent"])
                    par = ariane.module_service.get_unique(args["parent"])
                    if par is None:
                        par = ariane.plugin_service.get_unique(args["parent"])
                    if par is None:
                        par = ariane.submodule_parent_service.get_unique(args["parent"])
                    if par is not None:
                        slists = ariane.submodule_service.get_all(par)
                        slists.extend(ariane.submodule_parent_service.get_all(par))
                        for sub in slists:
                            if sub.name == unique_key:
                                s = sub
        return s

    def get(self, unique_key):
        s = self.__get_submodule(unique_key)
        if s is not None:
            return make_response(json.dumps({"submodule": s.get_properties()}), 200, headers_json)
        else:
            abort_error("NOT_FOUND", "Error, Wrong URL")

    def delete(self, unique_key):
        s = self.__get_submodule(unique_key)
        if s is not None:
            s.delete()
            return make_response(json.dumps({}), 200, headers_json)
        else:
            abort_error("NOT_FOUND", "Error, Wrong URL")

class RestSubModuleList(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('name', type=str, help='Submodule name')
        self.reqparse.add_argument('version', type=str, help='Submodule version')
        self.reqparse.add_argument('groupId', type=str)
        self.reqparse.add_argument('artifactId', type=str)
        self.reqparse.add_argument('nID', type=int, help='Submodule database ID named "nID"')
        self.reqparse.add_argument('order', type=int)
        self.reqparse.add_argument('submodule')
        self.reqparse.add_argument('parent')
        self.reqparse.add_argument('isSubModuleParent')
        super(RestSubModuleList, self).__init__()

    def get(self):
        args = self.reqparse.parse_args()
        if args["parent"] is not None:
            args["parent"] = json.loads(args["parent"])
            par = ariane.module_service.get_unique(args["parent"])
            if par is None:
                par = ariane.plugin_service.get_unique(args["parent"])
            if par is None:
                par = ariane.submodule_parent_service.get_unique(args["parent"])
            if par is not None:
                slist = ariane.submodule_service.get_all(par)
                slist.extend(ariane.submodule_parent_service.get_all(par))
                slist_ret = []
                for s in slist:
                    sp = s.get_properties()
                    if isinstance(s, ariane_delivery.SubModuleParent):
                        sp["issubparent"] = True
                    else:
                        sp["issubparent"] = False
                    slist_ret.append(sp)
                return make_response(json.dumps({"submodules": slist_ret}), 200, headers_json)
            abort_error("BAD_REQUEST", "Given parameter 'parent' {} does not match any Submodule's parent".format(
                        args["parent"]))
        abort_error("BAD_REQUEST", "Missing parameter 'parent'")

    def post(self):
        args = self.reqparse.parse_args()
        if args["nID"] is not None and args["nID"] > 0:
            s = ariane.submodule_service.get_unique({"nID": args["nID"]})
            if s is None:
                s = ariane.submodule_parent_service.get_unique({"nID": args["nID"]})
            if isinstance(s, ariane_delivery.SubModule) or isinstance(s, ariane_delivery.SubModuleParent):
                clear_args(args)
                if s.update(args):
                    s.save()
                    s = s.get_properties()
                    return make_response(json.dumps({"submodule": s}), 200, headers_json)
                else:
                    abort_error("BAD_REQUEST", "Submodule {} already exists".format(args))
            else:
                abort_error("BAD_REQUEST", "Given parameters {} does not match any Submodule in database".format(args))
        elif args["submodule"] is not None:
            arg_s = json.loads(args["submodule"])
            s = ariane.submodule_service.get_unique(arg_s)
            if s is None:
                s = ariane.submodule_parent_service.get_unique(arg_s)
            if isinstance(s, ariane_delivery.SubModule) or isinstance(s, ariane_delivery.SubModuleParent):
                if s.update(arg_s):
                    s.save()
                    return json.dumps({"submodule": s.get_properties()}), 200
                else:
                    abort_error("BAD_REQUEST", "Nothing to update, values are the same")
            else:
                abort_error("BAD_REQUEST", "Given parameter {} does not match any submodule".format(arg_s))
        else:
            for key in args.keys():
                if key in ["isSubModuleParent", "name", "parent"] and args[key] is None:
                    abort_error("BAD_REQUEST", "Parameters are missing. "
                                               "You must provide: 'isSubModuleParent', 'name', 'parent'")
            args["parent"] = json.loads(args["parent"])
            par = ariane.find_without_label({"nID": args["parent"]["nID"]})
            if par is None:
                abort_error("BAD_REQUEST", "Given parent {} does not exist in database".format(args["parent"]))
            if isinstance(par, list):
                abort_error("BAD_REQUEST", "Given parent {} does not match a unique Parent in database".format(
                            args["parent"]))
            slist = ariane.submodule_service.get_all(par)
            slist.extend(ariane.submodule_parent_service.get_all(par))
            for s in slist:
                if args["name"] == s.name:
                    abort_error("BAD_REQUEST", "Given Submodule named '{}' already exists in parent '{}'".format(
                                args["name"], args["parent"]))
            if str(args["isSubModuleParent"]).lower() == "yes":
                sub = ariane_delivery.SubModuleParent(args["name"], par.version, order=args["order"])
                sub.set_groupid_artifact(par)
            else:
                sub = ariane_delivery.SubModule(args["name"], par.version, order=args["order"])
                if not isinstance(par, ariane_delivery.SubModuleParent):
                    sub.set_groupid_artifact(par)
                else:
                    parpar = ariane.submodule_parent_service.get_parent(par)
                    sub.set_groupid_artifact(parpar, par)
            sub.save()
            par.add_submodule(sub)

            return make_response(json.dumps({"submodule": sub.get_properties()}), 201, headers_json)

class RestModule(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('version', type=str, help='Distribution version')
        self.reqparse.add_argument('nID', type=int, help='Distribution database ID named "nID"')
        super(RestModule, self).__init__()

    def __get_module(self, unique_key, unique_key2):
        m = None
        if unique_key2 is None:
            if isinstance(unique_key, int):
                m = ariane.module_service.get_unique({"nID": unique_key})
        else:
            if isinstance(unique_key, str) and isinstance(unique_key2, str):
                m = ariane.module_service.get_unique({"name": unique_key, "version": unique_key2})
        return m

    def get(self, unique_key, unique_key2=None):
        m = self.__get_module(unique_key, unique_key2)
        if m is not None:
            return make_response(json.dumps({"module": m.get_properties()}), 200, headers_json)
        else:
            if unique_key2 is None:
                abort_error("BAD_REQUEST", "No Module found with given parameters {}".format(unique_key))
            else:
                abort_error("BAD_REQUEST", "No Module found with given parameters {} {}".format(unique_key, unique_key2))

    def delete(self, unique_key, unique_key2=None):
        m = self.__get_module(unique_key, unique_key2)
        if m is not None:
            m.delete()
            return {}, 200
        else:
            abort_error("NOT_FOUND", "Error, Wrong URL")

class RestModuleList(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        # self.reqparse.add_argument('name', type=str)
        self.reqparse.add_argument('name', type=str, help='Module name')
        self.reqparse.add_argument('version', type=str, help='Module version')
        self.reqparse.add_argument('type', type=str, help='Module version')
        self.reqparse.add_argument('order', type=int, help="Module order for Installer .vsh file")
        self.reqparse.add_argument('nID', type=int, help='Module database ID named "nID"')
        self.reqparse.add_argument('dist_version')
        self.reqparse.add_argument('module')
        # self.reqparse.add_argument('version', type=str)
        super(RestModuleList, self).__init__()

    def get(self):
        args = self.reqparse.parse_args()
        if args["version"] is not None:
            d = ariane.distribution_service.get_unique({"version": args["version"]})
            if d is not None:
                mlist = ariane.module_service.get_all(d)
                m = [m.get_properties() for m in mlist]
                return make_response(json.dumps({"modules": m}), 200, headers_json)
            else:
                abort_error("BAD_REQUST", "Given parameter {} does not match any Distribution version".format(
                            args["version"]))
        else:
            abort_error("BAD_REQUEST", "Missing parameter 'version'")

    def post(self):
        args = self.reqparse.parse_args()
        if args["nID"] is not None and args["nID"] > 0:
            m = ariane.module_service.get_unique({"nID": args["nID"]})
            if isinstance(m, ariane_delivery.Module):
                clear_args(args)
                if m.update(args):
                    m.save()
                    m = m.get_properties()
                    return make_response(json.dumps({"module": m}), 200, headers_json)
                else:
                    abort_error("BAD_REQUEST", "Module {} already exists".format(args))
            else:
                abort_error("BAD_REQUEST", "Given parameters {} does not match any Module in database".format(args))
        elif args["module"] is not None:
            arg_m = json.loads(args["module"])
            m = ariane.module_service.get_unique(arg_m)
            if isinstance(m, ariane_delivery.Module):
                if m.update(arg_m):
                    m.save()
                    return make_response(json.dumps({"module": m.get_properties()}), 200, headers_json)
        else:
            m = ariane_delivery.Module("", "", "")
            for key in args.keys():
                if key != "module" and args[key] is None:
                    abort_error("BAD_REQUEST", "Parameters are missing. You must provide: {}".format(
                        m.get_properties().keys()))
            mod_exists = ariane.module_service.get_unique({"name": args["name"], "version": args["version"], "type": args["type"]})
            if mod_exists is None:
                dist = ariane.distribution_service.get_unique({"version": args["dist_version"]})
                if isinstance(dist, ariane_delivery.Distribution):
                    primary_key = ['name', 'version']
                    if ariane.check_args_init(primary_key, args.copy()):
                        args["nID"] = 0
                        m = ariane_delivery.ArianeNode.create_subclass("Module", args)
                        dist.add_module(m)
                        dist.save()
                        m = m.get_properties()
                        return make_response(json.dumps({"module": m}), 201, headers_json)
                    else:
                        abort_error("BAD_REQUEST", "Parameters are missing or incorrect. You must provide: {}".format(
                                    m.get_properties().keys()))
                else:
                    abort_error("BAD_REQUEST", "Given parameter 'version' does not match any Distribution versions")
            else:
                abort_error("BAD_REQUEST", "Module {} already exists".format(args))


class RestDistribution(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('version', type=str, help='Distribution version')
        self.reqparse.add_argument('nID', type=int, help='Distribution database ID named "nID"')
        super(RestDistribution, self).__init__()

    def __get_distrib(self, unique_key):
        d = None
        if isinstance(unique_key, str):
            d = ariane.distribution_service.get_unique({"version": unique_key})
        elif isinstance(unique_key, int):
            d = ariane.distribution_service.get_unique({"nID": unique_key})
        return d

    def get(self, unique_key):
        d = self.__get_distrib(unique_key)
        if d is not None:
            return make_response(json.dumps({"distrib": d.get_properties()}), 200, headers_json)
        else:
            abort_error("NOT_FOUND", "Error, Wrong URL")

    def delete(self, unique_key):
        d = self.__get_distrib(unique_key)
        if d is not None:
            d.delete()
            return make_response(json.dumps({"distrib": {}}), 200, headers_json)
        else:
            abort_error("NOT_FOUND", "Error, Wrong URL")

class RestDistributionList(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        # self.reqparse.add_argument('name', type=str)
        self.reqparse.add_argument('name', type=str, help='Distribution name')
        self.reqparse.add_argument('version', type=str, help='Distribution version')
        self.reqparse.add_argument('nID', type=int, help='Distribution database ID named "nID"')
        self.reqparse.add_argument('distrib', location='json')
        # self.reqparse.add_argument('version', type=str)
        super(RestDistributionList, self).__init__()

    def get(self):
        dlist = ariane.distribution_service.get_all()
        d = [d.get_properties() for d in dlist]
        return make_response(json.dumps({"distribs": d}), 200, headers_json)

    def post(self):
        args = self.reqparse.parse_args()
        if args["nID"] is not None:
            d = ariane.distribution_service.get_unique({"nID": args["nID"]})
            if isinstance(d, ariane_delivery.Distribution):
                args.pop("nID")
                if d.update(args):
                    d.save()
                    d = d.get_properties()
                    return make_response(json.dumps({"distrib": d}), 200, headers_json)
                else:
                    abort_error("BAD_REQUEST", "Distribution {} already exists".format(args))
            else:
                abort_error("BAD_REQUEST", "Given parameters {} does not match any Distribition in database".format(args))
        elif args["distrib"] is not None:
            arg_d = json.loads(args["distrib"])
            d = ariane.distribution_service.get_unique(arg_d)
            if isinstance(d, ariane_delivery.Distribution):
                arg_d.pop("nID")
                if d.update(arg_d):
                    d.save()
                    return make_response(json.dumps({"distrib": d.get_properties()}), 200, headers_json)
        else:
            dist_exists = ariane.distribution_service.get_unique({"name": args["name"], "version": args["version"]})
            if dist_exists is None:
                d = ariane_delivery.Distribution("", "")
                primary_key = ['name', 'version']
                if ariane.check_args_init(primary_key, args.copy()):
                    args["nID"] = 0
                    d = ariane_delivery.ArianeNode.create_subclass("Distribution", args)
                    d.save()
                    d = d.get_properties()
                    return make_response(json.dumps({"distrib": d}), 201, headers_json)
                else:
                    d = d.get_properties()
                    d.pop("nID")
                    abort_error("BAD_REQUEST", "Parameters are missing. You must provide: {}".format(d.keys()))
            else:
                abort_error("BAD_REQUEST", "Distribution {} already exists".format(args))

    # def delete(self):
    #     args = self.reqparse.parse_args()
    #     for key in args.copy().keys():
    #         if args[key] is None:
    #             args.pop(key)
    #     d = ariane.distribution_service.get_unique(args.copy())
    #     if isinstance(d, ariane_delivery.Distribution):
    #         d.delete()
    #         return {}, 200
    #     else:
    #         abort_error("BAD_REQUEST", "Distribution {} does not exist".format(args))


api.add_resource(RestDistributionList, '/rest/distrib')
api.add_resource(RestDistribution, '/rest/distrib/<int:unique_key>', '/rest/distrib/<unique_key>')
api.add_resource(RestModuleList, '/rest/module')
api.add_resource(RestModule, '/rest/module/<int:unique_key>', '/rest/module/<unique_key>/<unique_key2>')
api.add_resource(RestPlugin, '/rest/plugin/<int:unique_key>', '/rest/plugin/<unique_key>/<unique_key2>')
api.add_resource(RestPluginList, '/rest/plugin')
api.add_resource(RestSubModuleList, '/rest/submodule')
api.add_resource(RestSubModule, '/rest/submodule/<int:unique_key>', '/rest/submodule/<unique_key>')
api.add_resource(RestFileNodeList, '/rest/filenode')
api.add_resource(RestFileNode, '/rest/filenode/<int:unique_key>', '/rest/filenode/<unique_key>')
api.add_resource(UI, '/', "/index", "/index.html")
api.add_resource(HelloHtml, '/hellohtml')

if __name__ == '__main__':
    app.run(debug=True)
