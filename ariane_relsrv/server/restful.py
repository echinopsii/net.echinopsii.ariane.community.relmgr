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
import os
project_path = os.getcwd()
project_path = project_path[:project_path.index('/ariane.community.relmgr')]
import sys
sys.path.append(project_path)
sys.path.append(project_path+"/ariane.community.relmgr")
import shutil
from flask import Flask, make_response, render_template, send_from_directory
from flask_restful import reqparse, abort, Api, Resource
from ariane_reltreelib.dao import ariane_delivery
from ariane_reltreelib import exceptions as err
from bootstrap import command
import json
import subprocess
from datetime import datetime

app = Flask(__name__)
api = Api(app)
ariane = ariane_delivery.DeliveryTree({"login": "neo4j", "password": "admin", "type": "neo4j"})
srv_var_path = "/ariane.community.relmgr/ariane_relsrv/server/var/"

def abort_error(error, msg):
    if error == "BAD_REQUEST":
        abort(400, message=msg)
    elif error == "NOT_FOUND":
        abort(404, message=msg)
    elif error == "INTERNAL_ERROR":
        abort(500, message=msg)

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
headers_html = {'Content-Type': 'text/html'}

class UI(Resource):
    def get(self):
        return make_response(render_template('index.html'), 200, headers_html)
class HelloHtml(Resource):
    def get(self):
        return make_response(render_template('helloworld.html'), 200, headers_html)
class TempBaseEdit(Resource):
    def get(self):
        return make_response(render_template('baseEdition.html'), 200, headers_html)
class TempBaseRelA(Resource):
    def get(self):
        return make_response(render_template('baseReleaseA.html'), 200, headers_html)
class TempBaseRelB(Resource):
    def get(self):
        return make_response(render_template('baseReleaseB.html'), 200, headers_html)
class TempEditViewEdit(Resource):
    def get(self):
        return make_response(render_template('editionViewEdit.html'), 200, headers_html)
class TempEditDiff(Resource):
    def get(self):
        return make_response(render_template('editionDiff.html'), 200, headers_html)

class TempErr(Resource):
    def get(self):
        return make_response(render_template('err.html'), 200, headers_html)

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
            return make_response(json.dumps({"filenode": f.get_properties(gettype=True)}), 200, headers_json)
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
                flist = [f.get_properties(gettype=True) for f in flist]
                return make_response(json.dumps({"filenodes": flist}), 200, headers_json)
            else:
                abort_error("BAD_REQUEST", "Given parameters does not match to a FileNode's parent")
        else:
            abort_error("BAD_REQUEST", "Missing parameter 'version'")

    def post(self):
        args = self.reqparse.parse_args()
        if args["nID"] is not None and args["nID"] > 0:
            f = ariane_delivery.FileNode.get_file_by_nid(args["nID"])
            if ariane.is_dev_version(f):
                if isinstance(f, ariane_delivery.FileNode):
                    clear_args(args)
                    if f.update(args):
                        f.save()
                        f = f.get_properties(gettype=True)
                        return make_response(json.dumps({"filenode": f}), 200, headers_json)
                    else:
                        abort_error("BAD_REQUEST", "FileNode {} already exists".format(args))
                else:
                    abort_error("BAD_REQUEST", "Given parameters {} does not match any FileNode in database".format(args))
            else:
                abort_error("BAD_REQUEST", "Can not modify Distribution which is not in SNAPSHOT Version")
        elif args["filenode"] is not None and args["parent"] is None:
            arg_p = json.loads(args["filenode"])
            f = ariane_delivery.FileNode.get_file_by_nid(arg_p["nID"])
            if ariane.is_dev_version(f):
                if isinstance(f, ariane_delivery.FileNode):
                    if f.update(arg_p):
                        f.save()

                        return make_response(json.dumps({"filenode": f.get_properties(gettype=True)}), 200, headers_json)
                    else:
                        abort_error("BAD_REQUEST", "FileNode {} already exists".format(f.get_properties()))
                else:
                    abort_error("BAD_REQUEST", "Given parameter 'filenode' is not a FileNode")
            else:
                abort_error("BAD_REQUEST", "Can not modify Distribution which is not in SNAPSHOT Version")
        else:
            fmodel = ariane_delivery.FileNode("", "", "", "")
            for key in args.keys():
                if key not in ["filenode", "nID"] and args[key] is None:
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
                        return make_response(json.dumps({"filenode": f.get_properties(gettype=True)}), 201, headers_json)
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
        if isinstance(p, ariane_delivery.Plugin):
            return make_response(json.dumps({"plugin": p.get_properties(gettype=True)}), 200, headers_json)
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
            if plist is not None:
                p = [p.get_properties(gettype=True) for p in plist]
            else:
                p = {}
            return make_response(json.dumps({"plugins": p}), 200, headers_json)
        else:
            abort_error("BAD_REQUEST", "Missing parameter 'version'")

    def post(self):
        args = self.reqparse.parse_args()
        if args["nID"] is not None and args["nID"] > 0:
            p = ariane.plugin_service.get_unique({"nID": args["nID"]})
            if ariane.is_dev_version(p):
                if isinstance(p, ariane_delivery.Plugin):
                    clear_args(args)
                    if p.update(args):
                        p.save()
                        p = p.get_properties(gettype=True)
                        return make_response(json.dumps({"plugin": p}), 200, headers_json)
                    else:
                        abort_error("BAD_REQUEST", "Plugin {} already exists".format(args))
                else:
                    abort_error("BAD_REQUEST", "Given parameters {} don't match any Plugin in database".format(args))
            else:
                abort_error("BAD_REQUEST", "Can not modify Distribution which is not in SNAPSHOT Version")
        elif args["plugin"] is not None:
            arg_p = json.loads(args["plugin"])
            p = ariane.plugin_service.get_unique(arg_p)
            if ariane.is_dev_version(p):
                if isinstance(p, ariane_delivery.Plugin):
                    if p.update(arg_p):
                        p.save()
                        return make_response(json.dumps({"plugin": p.get_properties(gettype=True)}), 200, headers_json)
                else:
                    abort_error("BAD_REQUEST", "Given parameters {} don't match any Plugin in database".format(arg_p))
            else:
                abort_error("BAD_REQUEST", "Can not modify Distribution which is not in SNAPSHOT Version")
        else:
            p = ariane_delivery.Plugin("", "")
            for key in args.keys():
                if key not in ["plugin", "nID"] and args[key] is None:
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
                        p = p.get_properties(gettype=True)
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
            return make_response(json.dumps({"submodule": s.get_properties(gettype=True)}), 200, headers_json)
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
                    sp = s.get_properties(gettype=True)
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
            if ariane.is_dev_version(s):
                if isinstance(s, ariane_delivery.SubModule) or isinstance(s, ariane_delivery.SubModuleParent):
                    clear_args(args)
                    if s.update(args):
                        s.save()
                        sp = s.get_properties(gettype=True)
                        if isinstance(s, ariane_delivery.SubModuleParent):
                            sp["issubparent"] = True
                        else:
                            sp["issubparent"] = False
                        return make_response(json.dumps({"submodule": sp}), 200, headers_json)
                    else:
                        abort_error("BAD_REQUEST", "Submodule {} already exists".format(args))
                else:
                    abort_error("BAD_REQUEST", "Given parameters {} does not match any Submodule in database".format(args))
            else:
                abort_error("BAD_REQUEST", "Can not modify Distribution which is not in SNAPSHOT Version")
        elif args["submodule"] is not None:
            arg_s = json.loads(args["submodule"])
            s = ariane.submodule_service.get_unique(arg_s)
            if s is None:
                s = ariane.submodule_parent_service.get_unique(arg_s)
            if ariane.is_dev_version(s):
                if isinstance(s, ariane_delivery.SubModule) or isinstance(s, ariane_delivery.SubModuleParent):
                    if s.update(arg_s):
                        s.save()
                        sp = s.get_properties(gettype=True)
                        if isinstance(s, ariane_delivery.SubModuleParent):
                            sp["issubparent"] = True
                        else:
                            sp["issubparent"] = False
                        return json.dumps({"submodule": sp}), 200
                    else:
                        abort_error("BAD_REQUEST", "Nothing to update, values are the same")
                else:
                    abort_error("BAD_REQUEST", "Given parameter {} does not match any submodule".format(arg_s))
            else:
                abort_error("BAD_REQUEST", "Can not modify Distribution which is not in SNAPSHOT Version")
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
            s = sub.get_properties(gettype=True)
            if isinstance(sub, ariane_delivery.SubModuleParent):
                s["issubparent"] = True
            else:
                s["issubparent"] = False
            return make_response(json.dumps({"submodule": s}), 201, headers_json)

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
            return make_response(json.dumps({"module": m.get_properties(gettype=True)}), 200, headers_json)
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
                m = [m.get_properties(gettype=True) for m in mlist]
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
            if ariane.is_dev_version(m):
                if isinstance(m, ariane_delivery.Module):
                    clear_args(args)
                    if m.update(args):
                        m.save()
                        m = m.get_properties(gettype=True)
                        return make_response(json.dumps({"module": m}), 200, headers_json)
                    else:
                        abort_error("BAD_REQUEST", "Module {} already exists".format(args))
                else:
                    abort_error("BAD_REQUEST", "Given parameters {} does not match any Module in database".format(args))
            else:
                abort_error("BAD_REQUEST", "Can not modify Distribution which is not in SNAPSHOT Version")
        elif args["module"] is not None:
            arg_m = json.loads(args["module"])
            m = ariane.module_service.get_unique(arg_m)
            if ariane.is_dev_version(m):
                if isinstance(m, ariane_delivery.Module):
                    if m.update(arg_m):
                        m.save()
                        return make_response(json.dumps({"module": m.get_properties(gettype=True)}), 200, headers_json)
            else:
                abort_error("BAD_REQUEST", "Can not modify Distribution which is not in SNAPSHOT Version")
        else:
            m = ariane_delivery.Module("", "", "")
            for key in args.keys():
                if key not in ["module", "nID"] and args[key] is None:
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
                        m = m.get_properties(gettype=True)
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
            return make_response(json.dumps({"distrib": d.get_properties(gettype=True)}), 200, headers_json)
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
        dev = ariane.distribution_service.get_dev_distrib()
        dprop = [d.get_properties(gettype=True) for d in dlist]
        for d in dprop:
            if d["nID"] == dev.id:
                d["snapshot"] = True
            else:
                d["snapshot"] = False
        return make_response(json.dumps({"distribs": dprop}), 200, headers_json)

    def post(self):
        args = self.reqparse.parse_args()
        if args["nID"] is not None:
            d = ariane.distribution_service.get_unique({"nID": args["nID"]})
            dev = ariane.distribution_service.get_dev_distrib()
            if d == dev:
                if isinstance(d, ariane_delivery.Distribution):
                    args.pop("nID")
                    if d.update(args):
                        d.save()
                        d = d.get_properties(gettype=True)
                        return make_response(json.dumps({"distrib": d}), 200, headers_json)
                    else:
                        abort_error("BAD_REQUEST", "Distribution {} already exists".format(args))
                else:
                    abort_error("BAD_REQUEST", "Given parameters {} does not match any Distribition in database".format(args))
            else:
                abort_error("BAD_REQUEST", "Can not modify Distribution which is not in SNAPSHOT Version")
        elif args["distrib"] is not None:
            arg_d = json.loads(args["distrib"])
            d = ariane.distribution_service.get_unique(arg_d)
            dev = ariane.distribution_service.get_dev_distrib()
            if d == dev:
                if isinstance(d, ariane_delivery.Distribution):
                    arg_d.pop("nID")
                    if d.update(arg_d):
                        d.save()
                        return make_response(json.dumps({"distrib": d.get_properties(gettype=True)}), 200, headers_json)
            else:
                abort_error("BAD_REQUEST", "Can not modifiy Distribution which is not in SNAPSHOT Version")
        else:
            dist_exists = ariane.distribution_service.get_unique({"name": args["name"], "version": args["version"]})
            if dist_exists is None:
                d = ariane_delivery.Distribution("", "")
                primary_key = ['name', 'version']
                if ariane.check_args_init(primary_key, args.copy()):
                    args["nID"] = 0
                    d = ariane_delivery.ArianeNode.create_subclass("Distribution", args)
                    d.save()
                    d = d.get_properties(gettype=True)
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
class FilesInfo(object):
    zipfile = ""
    path_zip = ""

    def __init__(self):
        pass

class RestCheckout(Resource):
    """
    Do a 'git checkout' on each generated file in order to go back to the last clean version.
    """
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('version', type=str)
        super(RestCheckout, self).__init__()

    def post(self):
        args = self.reqparse.parse_args()
        if args["version"] is not None:
            version = args["version"]
            dist = ariane.distribution_service.get_unique({"version": version})
            if isinstance(dist, ariane_delivery.Distribution):
                backpath = os.getcwd()
                dfiles = ariane.get_files(dist)
                flag_dir = True
                dpath = ""
                for df in dfiles:
                    if flag_dir:  # Get distrib path directory (i.e: ariane.community.distrib/) from this distrib's file path
                        if df.path.startswith('/'):
                            df.path = df.path[1:]
                        dpath = df.path.split('/')
                        dpath = dpath[0] + '/'
                        os.chdir(os.path.join(project_path, dpath))
                        flag_dir = False
                    print("PRINT ", os.getcwd(), "git checkout " + df.path[len(dpath):]+df.name)
                    os.system("git checkout " + df.path[len(dpath):]+df.name)
                modules = ariane.module_service.get_all(dist)
                plugins = ariane.plugin_service.get_all(dist)

                def gitcheckout(m, flag, mpath=""):
                    mfiles = m.list_files
                    if flag:  # Get module/plugin path directory (i.e: ariane.community.core.directory/) from its own file path
                        mpath = [f.path for f in mfiles if str(f.path).endswith(m.name+'/')]
                        if len(mpath) > 0:
                            mpath = mpath[0]
                            os.chdir(os.path.join(project_path, mpath))
                            flag = False
                        else:
                            return  # module/plugin must have at least one file
                    for f in mfiles:
                        print("PRINT ", os.getcwd(), "git checkout " + f.path[len(mpath):]+f.name)
                        os.system("git checkout " + f.path[len(mpath):]+f.name)
                    if not isinstance(m, ariane_delivery.SubModule):
                        for s in m.list_submod:
                            if isinstance(s, ariane_delivery.SubModule):
                                ariane.submodule_service.update_arianenode_lists(s)
                            elif isinstance(s, ariane_delivery.SubModuleParent):
                                ariane.submodule_parent_service.update_arianenode_lists(s)
                            gitcheckout(s, flag, mpath)  # Recursive call for SubModuleParent

                for m in modules:
                    if m.name != "relmgr":  # We don't want to checkout ariane.community.relmgr
                        ariane.module_service.update_arianenode_lists(m)
                        gitcheckout(m, True)
                for p in plugins:
                    ariane.plugin_service.update_arianenode_lists(p)
                    gitcheckout(p, True)

                os.chdir(backpath)
                return make_response(json.dumps({"message": "git checkout done"}), 200, headers_json)
            else:
                abort_error("BAD_REQUEST", "Given Distribution version ({})does not exists".format(version))
        else:
            abort_error("BAD_REQUEST", "You must provide the parameter 'version' ")


class RestFileDiff(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('filenode', help="Filenode from which you get diff")
        self.diffrec_filename = "gitdiff.txt"
        super(RestFileDiff, self).__init__()

    def get(self):
        args = self.reqparse.parse_args()
        if args["filenode"] is not None:
            fnode = json.loads(args["filenode"])
            f = ariane.find_without_label({"nID": fnode["nID"]})
            if f is not None:
                full_path = os.path.join(project_path, f.path)
                if os.path.exists(full_path):
                    backup_path = os.getcwd()
                    os.chdir(full_path)
                    if os.path.isfile(project_path+srv_var_path+self.diffrec_filename):
                        os.remove(project_path+srv_var_path+self.diffrec_filename)
                    os.system("touch "+project_path+srv_var_path+self.diffrec_filename)
                    os.system("git diff " + f.name + " > " + project_path + srv_var_path + self.diffrec_filename)
                    os.chdir(backup_path)
                    diffrec = ""
                    with open(project_path+srv_var_path+self.diffrec_filename, "r") as openfile:
                        diffrec = openfile.readlines()
                    if os.path.isfile(project_path+srv_var_path+self.diffrec_filename):
                        os.remove(project_path+srv_var_path+self.diffrec_filename)
                    return make_response(json.dumps({"diff": diffrec}), 200, headers_json)
                else:
                    abort_error("BAD_REQUEST", "Path of file {} does not exist in project arborescence".format(f))
            else:
                abort_error("BAD_REQUEST", "Given parameter {} does not match an existing file in database".format(fnode))

class RestDownZip(Resource):
    def __init__(self):
        super(RestDownZip, self).__init__()

    def post(self):
        path_zip = FilesInfo.path_zip
        zipfile = FilesInfo.zipfile
        checked = False
        if os.path.exists(path_zip):
            for (dp, dn, fn) in os.walk(path_zip):
                if zipfile in fn:
                    checked = True
                break
        if checked:
            return send_from_directory(path_zip, zipfile, as_attachment=True, mimetype="application/zip")
        else:
            abort_error('BAD_REQUEST', "Zip file Path and Name does not match any existing zip file")

class RestBuildZip(Resource):
    def __init__(self):
        self.path_zip = project_path + "/artifacts/"
        self.zipfile = ""
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('command', type=str, help='Command of File Generation')
        super(RestBuildZip, self).__init__()

    def get(self):
        pass # return send_from_directory(self.path_zip, self.zipfile, as_attachment=True, mimetype="application/zip")

    def post(self):
        """
        Use a subprocess calling "bootstrap/command.py 'command (arguments for command.py)'" to execute the File Generation.
        command.py handles the change of working directory
        :return:
        """
        args = self.reqparse.parse_args()
        if args["command"] is not None:
            version = args["command"]
            if "SNAPSHOT" in version:
                version = "master.SNAPSHOT"

            path_zip = self.path_zip
            FilesInfo.path_zip = path_zip
            # Rename existing zip
            filenames = []
            for (dp, dn, fn) in os.walk(path_zip):
                filenames = fn
                break
            number_files = len(filenames)
            tmp_copyname = "tmp_renamed_zip.zip"
            backup_name = ""
            if number_files > 0:
                search_name = "ariane.community.distrib-" + version
                for fn in filenames:
                    if search_name in fn:
                        backup_name = fn
                        shutil.move(path_zip+fn, path_zip+tmp_copyname)
                if backup_name != "":
                    filenames[filenames.index(backup_name)] = tmp_copyname

            # Build new zip with distribManager and print build info into 'infobuild.txt' file
            ftmp_fname = "infobuild.txt"
            ftmp_path = "/ariane.community.relmgr/ariane_relsrv/server/var/"
            # remove infobuild.txt if already exists
            if os.path.isfile(project_path + ftmp_path + ftmp_fname):
                os.remove(project_path + ftmp_path + ftmp_fname)
            os.system("touch " + project_path + ftmp_path + ftmp_fname)
            cur_path = os.getcwd()
            os.chdir(project_path + "/ariane.community.distrib")
            # myenv = os.environ.copy()
            # myenv["PATH"] = make new PATH or myenv[”JAVA_HOME"] = make new JAVA_HOME, same thing for MAVEN_HOME
            subprocess.Popen("./distribManager.py distpkgr " + version + " "
                                                                         "> "+project_path + ftmp_path + ftmp_fname, shell=True)
            os.chdir(cur_path)
            #os.system(project_path + "/ariane.community.distrib/distribManager.py distpkgr " + version + " "
            #         "> "+project_path + ftmp_path + ftmp_fname)
            #subprocess.call(project_path + "/ariane.community.distrib/distribManager.py distpkgr " + version + " "
            #              "> "+project_path + ftmp_path + ftmp_fname, shell=True)
            # Popen creates child process
            # my_env = os.environ.copy()
            # my_env["JAVA_HOME"] = "/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home"
            #subprocess.Popen(project_path + "/ariane.community.distrib/distribManager.py distpkgr " + version + " "
            #                "> "+project_path + ftmp_path + ftmp_fname, shell=True, env=my_env)

            # Check end of building
            timeout = 2 * 60
            time = datetime.now().time()
            stime = time.hour * 3600 + time.minute * 60 + time.second
            build_done = False
            new_filenames = []
            while not build_done:
                for (dp, dn, fn) in os.walk(path_zip): # TIMEOUT loop
                    # if a new file is created, building is done
                    if len(fn) > number_files:
                        build_done = True
                        new_filenames = fn
                # timeout condition
                stime2 = datetime.now().time()
                stime2 = stime2.hour * 3600 + stime2.minute * 60 + stime2.second
                timediff = stime2 - stime
                if timediff > timeout:
                    break
                    #if timediff > 3:  # FOR TEST
                    #    shutil.copy(path_zip+filenames[0], path_zip+'aladin.zip')
            if build_done:
                # get name of the new file
                zipfile = [f for f in new_filenames if f not in filenames][0]
                FilesInfo.zipfile = zipfile
                # delete copied file or rename it as before
                if number_files > 0:
                    if (zipfile == backup_name) and (tmp_copyname in new_filenames):
                        os.remove(path_zip+tmp_copyname)
                    else:
                        if (zipfile != backup_name) and (tmp_copyname in new_filenames):
                            shutil.move(path_zip+tmp_copyname, path_zip+backup_name)
                return make_response(json.dumps({"zip": zipfile, "message": "Build Success"}), 200, headers_json)
            else:
                abort_error("INTERNAL_ERROR", "Error while building")

class RestGeneration(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('command', type=str, help='Command of File Generation')
        super(RestGeneration, self).__init__()

    def post(self):
        """
        Use a subprocess calling "bootstrap/command.py 'command (arguments for command.py)'" to execute the File Generation.
        command.py handles the change of working directory
        :return:
        """
        args = self.reqparse.parse_args()
        if args["command"] is not None:
            cmd = command.Command()
            params = args["command"].split(' ')
            if params[0] == "testOK":
                return make_response(json.dumps({"message": args["command"]}), 200, headers_json)
            elif params[0] == "testNOK":
                abort_error("BAD_REQUEST", "TEST: the Error test has succeded")
            if len(params) >= 2:
                if len(params) == 2:
                    params.append(None)
                try:
                    cmd.execute(params[0], params[1], params[2])
                except err.CommandError as cmderr:
                    abort_error("BAD_REQUEST", "{} (Given command {} is incorrect)".format(cmderr, args))
            else:
                abort_error("BAD_REQUEST", "Too few arguments in the given command {}".format(args))
            # Working solution: subprocess.call('python3 ../../bootstrap/command.py ' + args["command"], shell=True)
            return make_response(json.dumps({"message": args["command"]}), 200, headers_json)


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
api.add_resource(RestGeneration, '/rest/generation')
api.add_resource(RestBuildZip, '/rest/buildzip')
api.add_resource(RestDownZip, '/rest/downloadzip')
api.add_resource(RestFileDiff, '/rest/filediff')
api.add_resource(RestCheckout, '/rest/checkout')
# Templates
api.add_resource(TempBaseEdit, '/baseEdition.html')
api.add_resource(TempBaseRelA, '/baseRelA.html')
api.add_resource(TempBaseRelB, '/baseRelB.html')
api.add_resource(TempEditViewEdit, '/editionViewEdit.html')
api.add_resource(TempEditDiff, '/editionDiff.html')
api.add_resource(TempErr, '/err.html')
# Tests
api.add_resource(UI, '/', "/index", "/index.html")
api.add_resource(HelloHtml, '/hellohtml')

if __name__ == '__main__':
    app.run(debug=True)
