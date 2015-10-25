# Ariane Release Manager
# Ariane Release Server
# REST Server
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
import re

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
from ariane_reltreelib.generator import generator
from bootstrap import command
import json
import subprocess
from datetime import datetime
import logging
from ariane_relsrv.server.log import log_setup as srvlog

app = Flask(__name__)
api = Api(app)
with open(project_path + "/ariane.community.relmgr/bootstrap/confsrv.json", "r") as configfile:
    conf = json.load(configfile)

ariane = ariane_delivery.DeliveryTree({"login": conf["NEO4J_LOGIN"], "password": conf["NEO4J_PASSWORD"], "type": "neo4j"})
neo4j_path = conf["NEO4J_PATH"]
db_export_path = project_path + conf["EXPORT_DB"]

srvlog.setup_logging("log/relsrv_logging_conf.json")
LOGGER = logging.getLogger(__name__)
MODULES_TO_TAG = []
PLUGINS_TO_TAG = []


def abort_error(error, msg):
    LOGGER.error("(HTTP RESPONSE CODE: '"+error+"') " + msg)
    if error == "BAD_REQUEST":
        abort(400, message=msg)
    elif error == "NOT_FOUND":
        abort(404, message=msg)
    elif error == "INTERNAL_ERROR":
        abort(500, message=msg)
    elif error == "FORBIDDEN":
        abort(403, message=msg)

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
class TempBaseEdit(Resource):
    def get(self):
        return make_response(render_template('baseEdition.html'), 200, headers_html)
class TempBaseRelA(Resource):
    def get(self):
        return make_response(render_template('baseReleaseA.html'), 200, headers_html)
class TempBaseRelB(Resource):
    def get(self):
        return make_response(render_template('baseReleaseB.html'), 200, headers_html)
class TempBaseRelC(Resource):
    def get(self):
        return make_response(render_template('baseReleaseC.html'), 200, headers_html)
class TempBaseRelD(Resource):
    def get(self):
        return make_response(render_template('baseReleaseD.html'), 200, headers_html)
class TempBaseRelE(Resource):
    def get(self):
        return make_response(render_template('baseReleaseE.html'), 200, headers_html)
class TempBaseRelDEV(Resource):
    def get(self):
        return make_response(render_template('baseReleaseDEV.html'), 200, headers_html)
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
        self.reqparse.add_argument('copy', type=bool)
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
            if args["copy"] is not None:
                copy = args["copy"]
                if not isinstance(copy, bool):
                    abort_error("BAD_REQUEST", "Argument 'copy' must be a boolean")
            else:
                copy = False
            arg_d = json.loads(args["distrib"])
            d = ariane.distribution_service.get_unique(arg_d)
            if not isinstance(d, ariane_delivery.Distribution):
                abort_error("BAD_REQUEST", "Given parameter {} must be a Distribution".format(d))
            dev = ariane.distribution_service.get_dev_distrib()
            if dev == d:
                if copy:
                    LOGGER.info("Creating a copy this distribution in order to work on it")
                    cd = ReleaseTools.create_distrib_copy(d)
                    if cd is None:
                        abort_error("FORBIDDEN", "Distribution copy already exists in database")
                    return make_response(json.dumps({"distrib": cd.get_properties(gettype=True)}), 200, headers_json)
                else:
                    arg_d.pop("nID")
                    if d.update(arg_d):
                        if (d.version == dev.version):
                            abort_error("BAD_REQUEST", "Can not save this Distribution. The version: {} already exists".format(d.version))
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
class ReleaseTools(object):
    zipfile = ""
    path_zip = ""
    distrib_copy_id = 0

    def __init__(self):
        pass

    @staticmethod
    def get_distrib_path(dist):
        dfile = (ariane.get_files(dist))[0]
        dpath = dfile.path.split('/')[0] + '/'
        return dpath

    @staticmethod
    def make_modules_to_tag_list():
        dist = ariane.distribution_service.get_dev_distrib()
        if dist.editable == "true":
            ariane.distribution_service.update_arianenode_lists(dist)
            for m in dist.list_module:
                mpath = os.path.join(project_path, m.get_directory_name())
                last_tag = generator.Degenerator.get_last_tag(path=mpath)
                if m.version > last_tag:
                    MODULES_TO_TAG.append(m.name)

    @staticmethod
    def create_distrib_copy(d):
        dev = ariane.distribution_service.get_dev_distrib()
        if dev.editable == "true":
            distribs = ariane.distribution_service.get_all()
            exist_cpy = [d for d in distribs if "copyTemp" in d.version]
            if len(exist_cpy) > 0:
                return -1
            cd = ariane_delivery.DistributionService.copy_distrib(d)
            # Modify current Distrib name but save this name by adding 'copyTemp' before
            ReleaseTools.distrib_copy_id = d.id
            d.name = "copyTemp" + d.name
            d.version = "copyTemp" + d.version
            d.editable = "false"
            d.save()
            return cd
        return None

    @staticmethod
    def create_dev_distrib():
        """
        :return 0: success, 1: interal error, can not find the actual DEV Distribution, 2 | 3: The actual DEV Distribution is already in a '-SNAPSHOT' version
        """
        snapshot = "-SNAPSHOT"
        dev = ariane.distribution_service.get_dev_distrib()
        if not isinstance(dev, ariane_delivery.Distribution):
            return 1  # abort_error("INTERNAL_ERROR", "Server can not find the actual DEV Distribution")

        if dev.editable != "true":
            return 2  # The actual DEV Distribution is already in a '-SNAPSHOT' version

        if snapshot in dev.version:
            return 3  # Same as 2

        dev.editable = "false"
        dev.save()
        newdev = ariane_delivery.DistributionService.copy_distrib(dev)
        newdev.editable = "true"
        newdev.version += snapshot
        modules = ariane.module_service.get_all(newdev)
        plugins = ariane.plugin_service.get_all(newdev)
        for m in modules:
            m.version += snapshot
            m.save()
        for p in plugins:
            p.version += snapshot
            p.save()
        newdev.save()
        return newdev

    @staticmethod
    def remove_genuine_distrib():
        dcopies = ariane.distribution_service.get_all()
        if len(dcopies) > 0:
            dcopies = [d for d in dcopies if "copyTemp" in d.version]
            for d in dcopies:
                d.delete()

    @staticmethod
    def remove_distrib_copy(cd):
        if (isinstance(cd, ariane_delivery.Distribution)) and (cd.editable == "true"):
            cd.delete()
        else:
            cd = ariane.distribution_service.find({"editable": "true"})
            if isinstance(cd, ariane_delivery.Distribution):
                cd.delete()
            elif isinstance(cd, list):
                for c in cd:
                    c.delete()
            else:
                return -1
        dist = ariane.distribution_service.get_unique({"nID": ReleaseTools.distrib_copy_id})
        if isinstance(dist, ariane_delivery.Distribution):
            dist.name = dist.name[len("copyTemp"):]
            dist.version = dist.version[len("copyTemp"):]
            dist.editable = "true"
            dist.save()
            return 0
        distribs = ariane.distribution_service.get_all()
        for d in distribs:
            if "copyTemp" in d.version:
                d.version = d.version[len("copyTemp"):]
                if "copyTemp" in d.name:
                    d.name = d.name[len("copyTemp"):]
                d.editable = "true"
                d.save()
                return 0
        return 1

    @staticmethod
    def reset_dev_distrib():
        dev = ariane.distribution_service.get_dev_distrib()
        if not isinstance(dev, ariane_delivery.Distribution):
            return 1
        if dev.editable != "true":
            return 2
        cpy_dev = ariane.distribution_service.get_all()
        cpy_dev = [cd for cd in cpy_dev if "copyTemp" in cd.version]
        if len(cpy_dev) == 0:
            return 3
        if len(cpy_dev) > 1:
            return 4

        cpy_dev = cpy_dev[0]
        cpy_mod = ariane.module_service.get_all(cpy_dev)
        dev_mod = ariane.module_service.get_all(dev)
        cpy_plug = ariane.plugin_service.get_all(cpy_dev)
        dev_plug = ariane.plugin_service.get_all(dev)
        for m in cpy_mod:
            for dm in dev_mod:
                if m.name == dm.name:
                    dm.version = m.version
                    dm.save()
        for p in cpy_plug:
            for dp in dev_plug:
                if p.name == dp.name:
                    dp.version = p.version
                    dp.save()

        dev.version = cpy_dev.version[len("copyTemp"):]
        dev.save()


class RestDistributionManager(Resource):
    """ REST endpoint for Managing Distributions stored in database.
        mode = DEV: Validation of the newly released distribution and creation of the new DEV distribution based on the
        newly released. Differences only concern the version changes: 'version' => 'version-SNAPSHOT'. Now the
        UI allows to validate the new DEV distribution: Generate and push new files on git repositories.

        mode = copy: Do a copy of the DEV distribution. The genuine DEV distribution's name
        and version are renamed with 'copyTemp' at the beginning. The copy is not renamed but its attribute 'editable'
        is set to 'true' (which is a string and not a boolean). Now the copy is editable with UI. If a Rollback is
        executed, the copy is deleted and the genuine distribution is reinitialized (be removing 'copyTemp' from its
        name and version). The copy can be released but user has to remove 'SNAPSHOT' from the version (because it is
        not a release of a DEV distribution).
    """
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('distrib', location='json')
        self.reqparse.add_argument('mode', type=str)
        self.reqparse.add_argument('action', type=str)
        super(RestDistributionManager, self).__init__()

    def post(self):
        args = self.reqparse.parse_args()
        action = None
        if args["action"] is not None:
            action = args["action"]

        if args["mode"] is None:
            abort_error("BAD_REQUEST", "You must provide the 'mode' parameter")
        mode = args["mode"]
        if mode == "DEV":
            LOGGER.info("Creating the new DEV Distribution...")
            newdev = ReleaseTools.create_dev_distrib()
            if not isinstance(newdev, ariane_delivery.Distribution):
                if newdev == 1:
                    abort_error("INTERNAL_ERROR", "Server can not find the actual DEV Distribution")
                elif newdev in [2, 3]:
                    abort_error("BAD_REQUEST", "The actual DEV Distribution is already in a '-SNAPSHOT' version")
            LOGGER.info("DEV Distribution created in database. Now removing the copy...")
            ReleaseTools.remove_genuine_distrib()
            LOGGER.info("Old Distribution copy was removed")
            newdevcp = ReleaseTools.create_distrib_copy(newdev)
            if not isinstance(newdev, ariane_delivery.Distribution):
                if newdevcp == -1:
                    abort_error("INTERNAL_ERROR", "Error occured while copying the New DEV Distribution into the "
                                                  "database: A copy already exists.")
                abort_error("INTERNAL_ERROR", "Error occured while copying the New DEV Distribution into the database")

            LOGGER.info("New Distribution copy was created. Now working on the DEV Distribution copy")
            return make_response(json.dumps({"distrib": newdevcp.get_properties(gettype=True)}), 200, headers_json)

        elif action == "getDEV":
            dev = ariane.distribution_service.get_dev_distrib()
            if not isinstance(dev, ariane_delivery.Distribution):
                abort_error("BAD_REQUEST", "No DEV Distribution in database")
            return make_response(json.dumps({"distrib": dev.get_properties(gettype=True)}), 200, headers_json)

        elif action == "removeDEVcopy":
            ReleaseTools.remove_genuine_distrib()
            return make_response(json.dumps({}), 200, headers_json)

        else:
            abort_error("BAD_REQUEST", "Given parameter 'mode' is invalid")


class RestReset(Resource):
    def post(self):
        alldistrib_file = "all.cypher"
        if os.path.isfile(db_export_path + alldistrib_file):
            ariane.delete_all()
            os.system(neo4j_path+"/bin/neo4j-shell -file " + db_export_path + alldistrib_file)
            LOGGER.info("Successful database reset")
            return make_response(json.dumps({"message": "All distributions have been imported: Database is reset"}),
                                 200, headers_json)
        else:
            abort_error("INTERNAL_ERROR", "Error while importing '"+db_export_path+alldistrib_file+"', file was not "
                        "found")



class RestCommit(Resource):
    module_test = ariane_delivery.Module("testrepos", "testversion")
    commit_comment = ""

    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('isdistrib', type=bool)
        self.reqparse.add_argument('isplugin', type=bool)
        self.reqparse.add_argument('mode', type=str)
        self.reqparse.add_argument('task', type=str)
        self.reqparse.add_argument('comment', type=str)
        super(RestCommit, self).__init__()

    @staticmethod
    def commit_element(m, mpath, commit, task, comment, mode):
        rets = {"path_errs": ""}
        errs = ""
        warns = ""
        if os.path.exists(mpath):
            os.chdir(mpath)
            if subprocess.call("git add ./", shell=True) != 0:
                LOGGER.error("error_on_add("+m.name+");")
                errs += "error_on_add("+m.name+"); "
            else:
                LOGGER.info(m.name+"("+m.version+") added")
                pipe = subprocess.Popen(commit, shell=True, stdout=subprocess.PIPE)
                git_cmd_out = pipe.communicate()[0]
                # Handle 'git tag' errors or warnings. (Warning if 'nothing to tag' is returned by the command)
                if (isinstance(git_cmd_out, bytes)) and (len(git_cmd_out) > 0):
                    git_cmd_out = (git_cmd_out.decode()).split('\n')
                else:
                    git_cmd_out = ""
                for line in git_cmd_out:
                    if "nothing" in line:
                        warns += "warning_on_tag("+m.name+" "+m.version+"): "+line+"; "
                        LOGGER.warn("warning_on_tag("+m.name+" "+m.version+"): "+line+"; ")
                        break
                    if "error" in line:
                        LOGGER.error("error_on_commit("+m.name+"): "+task + " "+ comment + ""+line+"; ")
                        errs += "error_on_commit("+m.name+"): "+task + " "+ comment + ""+line+"; "
                        break
                if errs == "":
                    if subprocess.call("git push ", shell=True) != 0:
                        LOGGER.error("error_on_push("+m.name+"): " + m.version + ";")
                        errs += "error_on_push("+m.name+"): " + m.version + "; "
                    else:
                        LOGGER.info(m.name+"("+m.version+") pushed")
                        if mode == "Release":
                            LOGGER.info(m.name+"("+m.version+") commited")
                            if subprocess.call("git tag " + m.version, shell=True) != 0:
                                LOGGER.error("error_on_tag("+m.name+" "+m.version+"); ")
                                errs += "error_on_tag("+m.name+" "+m.version+"); "
                            else:
                                LOGGER.info(m.name+"("+m.version+") tagged")
                                if subprocess.call("git push origin " + m.version, shell=True) != 0:
                                    LOGGER.error("error_on_push_origin("+m.name+"): " + m.version + ";")
                                    errs += "error_on_push_origin("+m.name+"): " + m.version + "; "
                                else:
                                    LOGGER.info(m.name+"("+m.version+") origin pushed")
        else:
            rets["path_errs"] = mpath
        rets["errs"] = errs
        rets["warns"] = warns
        return rets

    def post(self):
        args = self.reqparse.parse_args()
        if args["isdistrib"] is None:
            LOGGER.warn("You must provide 'isdistrib' parameter")
            abort_error("BAD_REQUEST", "You must provide 'isdistrib' parameter")
        if args["isplugin"] is None:
            LOGGER.warn("You must provide 'isplugin' parameter")
            abort_error("BAD_REQUEST", "You must provide 'isplugin' parameter")
        if args["mode"] is None:
            LOGGER.warn("You must provide 'mode' parameter")
            abort_error("BAD_REQUEST", "You must provide 'mode' parameter")
        if args["task"] is None:
            LOGGER.warn("You must provide 'task' parameter")
            abort_error("BAD_REQUEST", "You must provide 'task' parameter")
        if args["comment"] is None:
            LOGGER.warn("You must provide 'comment' parameter")
            abort_error("BAD_REQUEST", "You must provide 'comment' parameter")

        isdistrib = args["isdistrib"]
        isplugin = args["isplugin"]
        mode = args["mode"]
        task = args["task"]
        comment = args["comment"]

        # git commit -m "task comment" ./
        # git tag version_module
        # git push origin  version_module

        dist = ariane.distribution_service.get_dev_distrib()
        if not isinstance(dist, ariane_delivery.Distribution):
            abort_error("INTERNAL_ERROR", "Server can not find the current Distribution to commit")

        LOGGER.info("Start " + mode + " Distribution("+dist.version+") commit-tag-push ...")
        errs = ""
        warns = ""
        path_errs = []
        RestCommit.commit_comment = task+" "+comment
        commit = "git commit -m \""+RestCommit.commit_comment+"\" ./"

        if isdistrib:
            rets = RestCommit.commit_element(dist, os.path.join(project_path, ReleaseTools.get_distrib_path(dist)), commit, task, comment, mode)
            errs += rets["errs"]
            warns += rets["warns"]
            if rets["path_errs"] != "":
                path_errs.append(rets["path_errs"])
        else:
            if isplugin:
                mod_plugs = ariane.plugin_service.get_all(dist)
            else:
                mod_plugs = ariane.module_service.get_all(dist)
            for m in mod_plugs:
                if isplugin:
                    if m.name not in PLUGINS_TO_TAG:
                        LOGGER.warn(m.name+"("+m.version+") not in plugins to tag")
                        continue
                else:
                    if m.name not in MODULES_TO_TAG:
                        LOGGER.warn(m.name+"("+m.version+") not in modules to tag")
                        continue
                    mpath = os.path.join(project_path, m.get_directory_name())
                    rets = RestCommit.commit_element(m, mpath, commit, task, comment, mode)
                    errs += rets["errs"]
                    warns += rets["warns"]
                    if rets["path_errs"] != "":
                        path_errs.append(rets["path_errs"])

        if len(path_errs) > 0:
            errs += " Error: Following paths does not exist {} ; ".format(path_errs)
        if len(errs) > 0:
            message = "Errors occured while commiting the Distribution. Please correct them manually " \
                      "(Check Warning logs for more information).\n" + errs
            abort_error("INTERNAL_ERROR", message)
        else:
            if isdistrib:
                message = "'distrib' module from" + mode + "Distribution ("+dist.version+") Commit-Tag-Push done"
            elif isplugin:
                message = "Plugins from  " + mode + " Distribution ("+dist.version+") Commit-Tag-Push done"
            else:
                message = "Modules from  " + mode + " Distribution ("+dist.version+") Commit-Tag-Push done"
        LOGGER.info(message)
        return make_response(json.dumps({"message": message + warns}), 200, headers_json)


class RestCheckout(Resource):
    """
    Do a 'git checkout' on each generated file in order to go back to the last clean version.
    if mode = 'files': checkout only generated files and also remove the Distribution copy (come back to initial state).
    """
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('version', type=str)
        self.reqparse.add_argument('mode', type=str)
        self.reqparse.add_argument('isdistrib', type=bool)
        self.reqparse.add_argument('isplugin', type=bool)
        super(RestCheckout, self).__init__()

    def post(self):
        args = self.reqparse.parse_args()
        if args["version"] is None:
            abort_error("BAD_REQUEST", "You must provide the parameter 'version' ")

        version = args["version"]
        dist = ariane.distribution_service.get_unique({"version": version})
        if not isinstance(dist, ariane_delivery.Distribution):
            abort_error("BAD_REQUEST", "Given Distribution version ({})does not exists".format(version))

        if args["isdistrib"] is None:
            abort_error("BAD_REQUEST", "You must specify 'isdistrib' parameter for the Checkout WebService")
        isdistrib = args["isdistrib"]

        if args["isplugin"] is None:
            abort_error("BAD_REQUEST", "You must specify 'isdistrib' parameter for the Checkout WebService")
        isplugin = args["isplugin"]

        if args["mode"] is None:
            abort_error("BAD_REQUEST", "You must specify a mode for the Checkout WebService")
        mode = args["mode"]
        if mode in ["files", "files_DEV"]:
            LOGGER.info("Start files checkout ...")
            # First Checkout 'ariane.community.distrib' files: most of these files are versioned so we need to
            # remove them.
            dirpath = os.path.join(project_path, ReleaseTools.get_distrib_path(dist))
            subprocess.call("git clean -f", shell=True, cwd=dirpath)
            subprocess.call("git checkout .", shell=True, cwd=dirpath)
            LOGGER.info("distrib clean and checkout")
            # Second, Checkout all other Modules/Plugins files. There are 2 verisoned files (.plan et .json build)
            # so we remove them. For the not versioned files we use 'git checkout'. Plugin checkout is optionnal
            modules = ariane.module_service.get_all(dist)
            if isplugin:
                plugins = ariane.plugin_service.get_all(dist)
                modules.extend(plugins)

            for m in modules:
                dirpath = os.path.join(project_path, m.get_directory_name() + '/')
                subprocess.call("git clean -f", shell=True, cwd=dirpath)
                subprocess.call("git checkout .", shell=True, cwd=dirpath)
                LOGGER.info(m.name + " clean and checkout")

            # Delete copy distrib and rename Initial distrib
            if mode == "files":
                LOGGER.info("Removing the working copy...")
                cd = ariane.distribution_service.get_unique({"version": version})
                if not isinstance(cd, ariane_delivery.Distribution):
                    abort_error("BAD_REQUEST", "Temporary Distribution version {} was not found. Can not remove it".format(version))
                ret_rmcompy = ReleaseTools.remove_distrib_copy(cd)
                if ret_rmcompy == 1:
                    abort_error("BAD_REQUEST", "Distribution copy model was not found. Can not reinitialize the Database")
                elif ret_rmcompy == -1:
                    abort_error("BAD_REQUEST", "Given distribution {} is not the copy, Can not reinitialize the Database".format(cd))
                LOGGER.info("Working copy was removed")

            elif mode == "files_DEV":
                LOGGER.info("Reseting the working copy...")
                ret = ReleaseTools.reset_dev_distrib()
                if ret == 1:
                    abort_error("BAD_REQUEST", "DEV Distribution was not found")
                elif ret == 2:
                    abort_error("BAD_REQUEST", "DEV Distribution is not editable")
                elif ret == 3:
                    abort_error("BAD_REQUEST", "No copy was found. Can not reset the DEV Distribution")
                elif ret == 4:
                    abort_error("BAD_REQUEST", "Multiple copies were found in database")
                LOGGER.info("Working copy was reseted")
            LOGGER.info("git checkout done. Database reinitialized")
            return make_response(json.dumps({"message": "git checkout done. Database reinitialized."}), 200, headers_json)

        elif mode == "directories":
            LOGGER.info("Start repositories git checkout and git pull")
            paths = [ReleaseTools.get_distrib_path(dist)]
            modules = ariane.module_service.get_all(dist)
            plugins = ariane.plugin_service.get_all(dist)
            paths.extend([os.path.join(project_path, m.get_directory_name()) for m in modules])
            paths.extend([os.path.join(project_path, p.get_directory_name()) for p in plugins])
            errs = ""
            for p in paths:
                if os.path.exists(p):
                    if subprocess.call('git checkout ./', shell=True, cwd=p) != 0:
                        errs += "error while git checkout {}-".format(p)
                    if subprocess.call('git pull', shell=True, cwd=p) != 0:
                        errs += "error while git pull {}-".format(p)
            if errs != "":
                LOGGER.warn("Git Checkout done but errors occured for some repositories: "+errs)
            else:
                LOGGER.info("Git Checkout done")

            return make_response(json.dumps({"message": "git checkout and pull done. " + errs}), 200, headers_json)

        elif mode == "tags":
            # git tag -d version_module
            # git push origin :refs/tags/version_module
            # if git log -1 --pretty=%B | grep "last commit ticket + last commit comment" == 0
            #    git reset --hard HEAD~1
            backpath = os.getcwd()
            LOGGER.info("Start Tags reset")
            dist = ariane.distribution_service.get_dev_distrib()
            if not isinstance(dist, ariane_delivery.Distribution):
                abort_error("INTERNAL_ERROR", "Server can not find the current Distribution to commit")

            # FOR TEST :
            # modules = [RestCommit.module_test]
            # FOR RELEASE:
            if isplugin:
                mod_plugs = ariane.plugin_service.get_all(dist)
            else:
                mod_plugs = ariane.module_service.get_all(dist)
            errs = ""
            path_errs = []
            # Handle 'distrib' module
            if isdistrib:
                dpath = os.path.join(project_path, ReleaseTools.get_distrib_path(dist))
                if os.path.exists(dpath):
                    os.chdir(dpath)
                    if subprocess.call("git tag -d " + dist.version, shell=True) != 0:
                        errs += "error_on_tag: distrib(" + dist.version + "); "
                    else:
                        if subprocess.call("git push origin :refs/tags/" + dist.version, shell=True) != 0:
                            errs += "error_on_push_origin: distrib( " + dist.version + "); "
                        else:
                            if subprocess.call("git log -1 --pretty=%B | grep '" +
                                                re.escape(RestCommit.commit_comment) + "'", shell=True) != 0:
                                LOGGER.info("No need to reset last commit in distrib repository")
                            else:
                                if subprocess.call("git reset --hard HEAD~1", shell=True) != 0:
                                    errs += "error_on_reset:distrib( " + dist.version + "); "
                                else:
                                    if subprocess.call("git push --force origin master", shell=True) != 0:
                                        errs += "error_on_reset_commit: distrib(" + dist.version + "); "
                                    else:
                                        LOGGER.info("Last commit was reset in distrib repository")

            for m in mod_plugs:
                if isplugin:
                    if m.name not in PLUGINS_TO_TAG:
                        continue
                else:
                    if m.name not in MODULES_TO_TAG:
                        continue
                    mpath = os.path.join(project_path, m.get_directory_name())
                    if os.path.exists(mpath):
                        os.chdir(mpath)
                        if subprocess.call("git tag -d " + m.version, shell=True) != 0:
                            errs += "error_on_tag: "+m.name+"(" + m.version + "); "
                        else:
                            if subprocess.call("git push origin :refs/tags/" + m.version, shell=True) != 0:
                                errs += "error_on_push_origin: "+m.name+"(" + m.version + "); "
                            else:
                                if subprocess.call("git log -1 --pretty=%B | grep '" +
                                                   re.escape(RestCommit.commit_comment) + "'",
                                                   shell=True) != 0:
                                    LOGGER.info("No need to reset last commit in "+m.name+" repository")
                                else:
                                    if subprocess.call("git reset --hard HEAD~1", shell=True) != 0:
                                        errs += "error_on_reset: "+m.name+"(" + m.version + "); "
                                    else:
                                        if subprocess.call("git push --force origin master", shell=True) != 0:
                                            errs += "error_on_reset_commit: "+m.name+"(" + m.version + "); "
                                        else:
                                            LOGGER.info("Last commit was reset in "+m.name+" repository")
                    else:
                        path_errs.append(mpath)

            os.chdir(backpath)
            if len(path_errs) > 0:
                errs += " Error: Following paths does not exist {} ; ".format(path_errs)
            if len(errs) > 0:
                message = "Errors occured. Please correct them manually.\n" + errs
                abort_error("INTERNAL_ERROR", message)
            else:
                message = "Tags reset done."
            LOGGER.info(message)
            return make_response(json.dumps({"message": message}), 200, headers_json)

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
                    flag_diff = True
                    out = subprocess.check_output("git diff " + f.name, shell=True, cwd=full_path)
                    out = (out.decode()).split('\n')
                    if out[-1] == '':
                        out = out[:-1]
                    if len(out) == 0:
                        flag_diff = False
                        out = subprocess.check_output("cat " + f.name, shell=True, cwd=full_path)
                        out = (out.decode()).split('\n')
                        if out[-1] == '':
                            out = out[:-1]
                    return make_response(json.dumps({"diff": out, "isDiff": flag_diff}), 200, headers_json)
            else:
                abort_error("BAD_REQUEST", "Given parameter {} does not match an existing file in database".format(fnode))

class RestGetDelZip(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('version', type=str, help='Version of Zip file')
        super(RestGetDelZip, self).__init__()

    def post(self):
        path_zip = ReleaseTools.path_zip
        zipfile = ReleaseTools.zipfile
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
            
    def delete(self):
        zipfile = ReleaseTools.zipfile
        path_zip = ReleaseTools.path_zip
        args = self.reqparse.parse_args()
        if args["version"] is None:
            abort_error("BAD_REQUEST", "You must provide the 'version' parameter, the zip file version to remove.")
        
        version = args["version"]
        if version not in zipfile:
            abort_error("BAD_REQUEST", "Given parameter 'version' {} does not match the latest Zip file created".format(version))
        
        # If file exist, remove. If not, it is already removed so do nothing.
        if os.path.isfile(path_zip+zipfile):
            os.remove(path_zip+zipfile)
        return make_response(json.dumps({"message": "Zip file {} has been removed".format(zipfile), "zip": zipfile}), 200, headers_json)

class RestBuildZip(Resource):
    def __init__(self):
        self.path_zip = project_path + "/artifacts/"
        self.zipfile = ""
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('version', type=str, help='Version of Distribution to build')
        self.reqparse.add_argument('tags', type=bool, help='True if building .zip from Git tags')
        super(RestBuildZip, self).__init__()

    def get(self):
        pass # return send_from_directory(self.path_zip, self.zipfile, as_attachment=True, mimetype="application/zip")

    def post(self):
        """
        Use a subprocess calling "bootstrap/command.py 'command (arguments for command.py)'" to execute the File Generation.
        command.py handles the change of working directory
        :return:
        """
        LOGGER.info("Start Zip Build")
        args = self.reqparse.parse_args()
        if args["version"] is None:
            abort_error("BAD_REQUEST", "You must provide the parameter 'version'")

        if args["tags"] is None:
            abort_error("BAD_REQUEST", "You must provide the parameter 'tags' (boolean)")

        version = args["version"]
        from_tags = args["tags"]

        # Command is either 'distpkgr master.SNAPSHOT'
        # or 'distpkgr {version}.SNAPSHOT' where {version} is version's value (i.e version= '0.6.4')
        if "SNAPSHOT" in version:
            version = "master.SNAPSHOT"
            version_cmd = version
        else:
            if from_tags:
                version_cmd = version
            else:
                version_cmd = version + ".SNAPSHOT"

        path_zip = self.path_zip
        ReleaseTools.path_zip = path_zip
        # Rename existing zip
        filenames = []
        for (dp, dn, fn) in os.walk(path_zip):
            filenames = fn
            break
        number_files = len(filenames)
        tmp_copyname = "tmp_renamed_zip.zip"
        if os.path.isfile(path_zip + tmp_copyname):
            os.remove(path_zip + tmp_copyname)
        backup_name = ""
        if number_files > 0:
            search_name = "ariane.community.distrib-" + version
            for fn in filenames:
                if search_name in fn:
                    backup_name = fn
                    shutil.move(path_zip+fn, path_zip+tmp_copyname)
                    break
            if backup_name != "":
                filenames[filenames.index(backup_name)] = tmp_copyname

        # Build new zip with distribManager and print build info into 'infobuild.txt' file
        ftmp_fname = "infobuildDistpkgr.txt"
        # remove infobuild.txt if already exists
        if os.path.isfile(ftmp_fname):
            os.remove(ftmp_fname)
        os.system("touch "+ftmp_fname)
        subprocess.Popen("./distribManager.py distpkgr " + version_cmd
                         + " > "+project_path+"/ariane.community.relmgr/ariane_relsrv/server/"+ftmp_fname,
                         shell=True,
                         cwd=project_path + "/ariane.community.distrib")
        #print("Build Info in "+ftmp_fname)
        # Check end of building
        if from_tags:
            timeout = 6 * 60
        else:
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
            ReleaseTools.zipfile = zipfile
            # delete copied file or rename it as before
            if number_files > 0:
                if (zipfile == backup_name) and (tmp_copyname in new_filenames):
                    os.remove(path_zip+tmp_copyname)
                else:
                    if (zipfile != backup_name) and (tmp_copyname in new_filenames):
                        shutil.move(path_zip+tmp_copyname, path_zip+backup_name)
            LOGGER.info("Build success")
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
         ** Note: 'distrib_plugin_only' command is used to only generate distribution plugin files (2 files). **
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
            if ReleaseTools.make_modules_to_tag_list() == -1:
                abort_error("INTERNAL_ERROR", "There is no copy of the master SNAPSHOT Distribution")
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
api.add_resource(RestGetDelZip, '/rest/getdelzip')
api.add_resource(RestFileDiff, '/rest/filediff')
api.add_resource(RestCheckout, '/rest/checkout')
api.add_resource(RestCommit, '/rest/commit')
api.add_resource(RestDistributionManager, '/rest/distribmanager')
api.add_resource(RestReset, '/rest/reset')
# Templates
api.add_resource(TempBaseEdit, '/baseEdition.html')
api.add_resource(TempBaseRelA, '/baseRelA.html')
api.add_resource(TempBaseRelB, '/baseRelB.html')
api.add_resource(TempBaseRelC, '/baseRelC.html')
api.add_resource(TempBaseRelD, '/baseRelD.html')
api.add_resource(TempBaseRelE, '/baseRelE.html')
api.add_resource(TempBaseRelDEV, '/baseRelDEV.html')
api.add_resource(TempEditViewEdit, '/editionViewEdit.html')
api.add_resource(TempEditDiff, '/editionDiff.html')
api.add_resource(TempErr, '/err.html')
# Tests
api.add_resource(UI, '/', "/index", "/index.html")

if __name__ == '__main__':
    app.run(debug=True)
