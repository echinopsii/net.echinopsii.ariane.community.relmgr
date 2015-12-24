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


import json
from flask import Flask, make_response, render_template, send_from_directory
from flask_restful import reqparse, abort, Api, Resource
from ariane_reltreelib.dao import ariane_delivery
from ariane_relsrv.server.users_mgr import User
from ariane_relsrv.server.release_tools import DatabaseManager, GitManager, InitReleaseTools, BuildManager, \
                                                FileGenManager, ReleaseTools

app = Flask(__name__)
api = Api(app)

RELMGR_CONFIG = None
ariane = None
LOGGER = None
project_path = None
relmgr_path = None

def start_relmgr(myglobals):
    global RELMGR_CONFIG, ariane, LOGGER, project_path, relmgr_path
    RELMGR_CONFIG = myglobals["conf"]
    ariane = myglobals["delivery_tree"]
    LOGGER = myglobals["logger"]
    project_path = myglobals["project_path"]
    relmgr_path = myglobals["relmgr_path"]
    User.users_file = RELMGR_CONFIG.users_file
    InitReleaseTools.set_globals(myglobals)
    if RELMGR_CONFIG.testing:
        app.run(host=RELMGR_CONFIG.relmgr_host, port=RELMGR_CONFIG.relmgr_port, debug=True)
    else:
        app.run(host=RELMGR_CONFIG.relmgr_host, port=RELMGR_CONFIG.relmgr_port)

# import this after config declarations
from ariane_relsrv.server import auth as relmgrAuth

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
    @relmgrAuth.requires_auth
    def get(self):
        return make_response(render_template('index.html', url=RELMGR_CONFIG.relmgr_url, port=RELMGR_CONFIG.relmgr_port,
                                             mode=RELMGR_CONFIG.ui_running_mode), 200, headers_html)
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
                abort_error("BAD_REQUEST", "No component found with given parameters {}".format(unique_key))
            else:
                abort_error("BAD_REQUEST", "No component found with given parameters {} {}".format(unique_key, unique_key2))

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
        self.reqparse.add_argument('name', type=str, help='Plugin name')
        self.reqparse.add_argument('version', type=str, help='Plugin version')
        self.reqparse.add_argument('git_repos', type=str, help='Plugin git repository url')
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

class RestModule(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('parent', type=str, help='Module parent')
        super(RestModule, self).__init__()

    def __get_module(self, unique_key):
        s = None
        if isinstance(unique_key, int):
            s = ariane.module_service.get_unique({"nID": unique_key})
            if s is None:
                s = ariane.module_parent_service.get_unique({"nID": unique_key})
        elif isinstance(unique_key, str):
            if unique_key.count('.') > 0:
                s = ariane.module_service.get_unique({"artifactId": unique_key})
                if s is None:
                    s = ariane.module_parent_service.get_unique({"artifactId": unique_key})
            else:
                args = self.reqparse.parse_args()
                if args["parent"] is not None:
                    args["parent"] = json.loads(args["parent"])
                    par = ariane.component_service.get_unique(args["parent"])
                    if par is None:
                        par = ariane.plugin_service.get_unique(args["parent"])
                    if par is None:
                        par = ariane.module_parent_service.get_unique(args["parent"])
                    if par is not None:
                        slists = ariane.module_service.get_all(par)
                        slists.extend(ariane.module_parent_service.get_all(par))
                        for sub in slists:
                            if sub.name == unique_key:
                                s = sub
        return s

    def get(self, unique_key):
        s = self.__get_module(unique_key)
        if s is not None:
            return make_response(json.dumps({"module": s.get_properties(gettype=True)}), 200, headers_json)
        else:
            abort_error("NOT_FOUND", "Error, Wrong URL")

    def delete(self, unique_key):
        s = self.__get_module(unique_key)
        if s is not None:
            s.delete()
            return make_response(json.dumps({}), 200, headers_json)
        else:
            abort_error("NOT_FOUND", "Error, Wrong URL")

class RestModuleList(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('name', type=str, help='Module name')
        self.reqparse.add_argument('version', type=str, help='Module version')
        self.reqparse.add_argument('groupId', type=str)
        self.reqparse.add_argument('artifactId', type=str)
        self.reqparse.add_argument('nID', type=int, help='Module database ID named "nID"')
        self.reqparse.add_argument('order', type=int)
        self.reqparse.add_argument('module')
        self.reqparse.add_argument('parent')
        self.reqparse.add_argument('isModuleParent')
        super(RestModuleList, self).__init__()

    def get(self):
        args = self.reqparse.parse_args()
        if args["parent"] is not None:
            args["parent"] = json.loads(args["parent"])
            par = ariane.component_service.get_unique(args["parent"])
            if par is None:
                par = ariane.plugin_service.get_unique(args["parent"])
            if par is None:
                par = ariane.module_parent_service.get_unique(args["parent"])
            if par is not None:
                slist = ariane.module_service.get_all(par)
                slist.extend(ariane.module_parent_service.get_all(par))
                slist_ret = []
                for s in slist:
                    sp = s.get_properties(gettype=True)
                    if isinstance(s, ariane_delivery.ModuleParent):
                        sp["issubparent"] = True
                    else:
                        sp["issubparent"] = False
                    slist_ret.append(sp)
                return make_response(json.dumps({"modules": slist_ret}), 200, headers_json)
            abort_error("BAD_REQUEST", "Given parameter 'parent' {} does not match any Module's parent".format(
                        args["parent"]))
        abort_error("BAD_REQUEST", "Missing parameter 'parent'")

    def post(self):
        args = self.reqparse.parse_args()
        if args["nID"] is not None and args["nID"] > 0:
            s = ariane.module_service.get_unique({"nID": args["nID"]})
            if s is None:
                s = ariane.module_parent_service.get_unique({"nID": args["nID"]})
            if ariane.is_dev_version(s):
                if isinstance(s, ariane_delivery.Module) or isinstance(s, ariane_delivery.ModuleParent):
                    clear_args(args)
                    if s.update(args):
                        s.save()
                        sp = s.get_properties(gettype=True)
                        if isinstance(s, ariane_delivery.ModuleParent):
                            sp["issubparent"] = True
                        else:
                            sp["issubparent"] = False
                        return make_response(json.dumps({"module": sp}), 200, headers_json)
                    else:
                        abort_error("BAD_REQUEST", "Module {} already exists".format(args))
                else:
                    abort_error("BAD_REQUEST", "Given parameters {} does not match any Module in database".format(args))
            else:
                abort_error("BAD_REQUEST", "Can not modify Distribution which is not in SNAPSHOT Version")
        elif args["module"] is not None:
            arg_s = json.loads(args["module"])
            s = ariane.module_service.get_unique(arg_s)
            if s is None:
                s = ariane.module_parent_service.get_unique(arg_s)
            if ariane.is_dev_version(s):
                if isinstance(s, ariane_delivery.Module) or isinstance(s, ariane_delivery.ModuleParent):
                    if s.update(arg_s):
                        s.save()
                        sp = s.get_properties(gettype=True)
                        if isinstance(s, ariane_delivery.ModuleParent):
                            sp["issubparent"] = True
                        else:
                            sp["issubparent"] = False
                        return json.dumps({"module": sp}), 200
                    else:
                        abort_error("BAD_REQUEST", "Nothing to update, values are the same")
                else:
                    abort_error("BAD_REQUEST", "Given parameter {} does not match any module".format(arg_s))
            else:
                abort_error("BAD_REQUEST", "Can not modify Distribution which is not in SNAPSHOT Version")
        else:
            for key in args.keys():
                if key in ["isModuleParent", "name", "parent"] and args[key] is None:
                    abort_error("BAD_REQUEST", "Parameters are missing. "
                                               "You must provide: 'isModuleParent', 'name', 'parent'")
            args["parent"] = json.loads(args["parent"])
            par = ariane.find_without_label({"nID": args["parent"]["nID"]})
            if par is None:
                abort_error("BAD_REQUEST", "Given parent {} does not exist in database".format(args["parent"]))
            if isinstance(par, list):
                abort_error("BAD_REQUEST", "Given parent {} does not match a unique Parent in database".format(
                            args["parent"]))
            slist = ariane.module_service.get_all(par)
            slist.extend(ariane.module_parent_service.get_all(par))
            for s in slist:
                if args["name"] == s.name:
                    abort_error("BAD_REQUEST", "Given Module named '{}' already exists in parent '{}'".format(
                                args["name"], args["parent"]))
            if str(args["isModuleParent"]).lower() == "yes":
                sub = ariane_delivery.ModuleParent(args["name"], par.version, order=args["order"])
                sub.set_groupid_artifact(par)
            else:
                sub = ariane_delivery.Module(args["name"], par.version, order=args["order"])
                if not isinstance(par, ariane_delivery.ModuleParent):
                    sub.set_groupid_artifact(par)
                else:
                    parpar = ariane.module_parent_service.get_parent(par)
                    sub.set_groupid_artifact(parpar, par)
            sub.save()
            par.add_module(sub)
            s = sub.get_properties(gettype=True)
            if isinstance(sub, ariane_delivery.ModuleParent):
                s["issubparent"] = True
            else:
                s["issubparent"] = False
            return make_response(json.dumps({"module": s}), 201, headers_json)

class RestComponent(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('version', type=str, help='Distribution version')
        self.reqparse.add_argument('nID', type=int, help='Distribution database ID named "nID"')
        super(RestComponent, self).__init__()

    def __get_component(self, unique_key, unique_key2):
        m = None
        if unique_key2 is None:
            if isinstance(unique_key, int):
                m = ariane.component_service.get_unique({"nID": unique_key})
        else:
            if isinstance(unique_key, str) and isinstance(unique_key2, str):
                m = ariane.component_service.get_unique({"name": unique_key, "version": unique_key2})
        return m

    def get(self, unique_key, unique_key2=None):
        m = self.__get_component(unique_key, unique_key2)
        if m is not None:
            return make_response(json.dumps({"component": m.get_properties(gettype=True)}), 200, headers_json)
        else:
            if unique_key2 is None:
                abort_error("BAD_REQUEST", "No component found with given parameters {}".format(unique_key))
            else:
                abort_error("BAD_REQUEST", "No component found with given parameters {} {}".format(unique_key, unique_key2))

    def delete(self, unique_key, unique_key2=None):
        m = self.__get_component(unique_key, unique_key2)
        if m is not None:
            m.delete()
            return {}, 200
        else:
            abort_error("NOT_FOUND", "Error, Wrong URL")

class RestComponentList(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        # self.reqparse.add_argument('name', type=str)
        self.reqparse.add_argument('name', type=str, help='component name')
        self.reqparse.add_argument('version', type=str, help='component version')
        self.reqparse.add_argument('type', type=str, help='component version')
        self.reqparse.add_argument('order', type=int, help="component order for Installer .vsh file")
        self.reqparse.add_argument('nID', type=int, help='component database ID named "nID"')
        self.reqparse.add_argument('dist_version')
        self.reqparse.add_argument('component')
        # self.reqparse.add_argument('version', type=str)
        super(RestComponentList, self).__init__()

    def get(self):
        args = self.reqparse.parse_args()
        if args["version"] is not None:
            d = ariane.distribution_service.get_unique({"version": args["version"]})
            if d is not None:
                mlist = ariane.component_service.get_all(d)
                m = [m.get_properties(gettype=True) for m in mlist]
                return make_response(json.dumps({"components": m}), 200, headers_json)
            else:
                abort_error("BAD_REQUST", "Given parameter {} does not match any Distribution version".format(
                            args["version"]))
        else:
            abort_error("BAD_REQUEST", "Missing parameter 'version'")

    def post(self):
        args = self.reqparse.parse_args()
        if args["nID"] is not None and args["nID"] > 0:
            m = ariane.component_service.get_unique({"nID": args["nID"]})
            if ariane.is_dev_version(m):
                if isinstance(m, ariane_delivery.Component):
                    clear_args(args)
                    if m.update(args):
                        m.save()
                        m = m.get_properties(gettype=True)
                        return make_response(json.dumps({"component": m}), 200, headers_json)
                    else:
                        abort_error("BAD_REQUEST", "component {} already exists".format(args))
                else:
                    abort_error("BAD_REQUEST", "Given parameters {} does not match any component in database".format(args))
            else:
                abort_error("BAD_REQUEST", "Can not modify Distribution which is not in SNAPSHOT Version")
        elif args["component"] is not None:
            arg_m = json.loads(args["component"])
            m = ariane.component_service.get_unique(arg_m)
            if ariane.is_dev_version(m):
                if isinstance(m, ariane_delivery.Component):
                    if m.update(arg_m):
                        m.save()
                        return make_response(json.dumps({"component": m.get_properties(gettype=True)}), 200, headers_json)
            else:
                abort_error("BAD_REQUEST", "Can not modify Distribution which is not in SNAPSHOT Version")
        else:
            m = ariane_delivery.Component("", "", "")
            for key in args.keys():
                if key not in ["component", "nID"] and args[key] is None:
                    abort_error("BAD_REQUEST", "Parameters are missing. You must provide: {}".format(
                        m.get_properties().keys()))
            mod_exists = ariane.component_service.get_unique({"name": args["name"], "version": args["version"], "type": args["type"]})
            if mod_exists is None:
                dist = ariane.distribution_service.get_unique({"version": args["dist_version"]})
                if isinstance(dist, ariane_delivery.Distribution):
                    primary_key = ['name', 'version']
                    if ariane.check_args_init(primary_key, args.copy()):
                        args["nID"] = 0
                        m = ariane_delivery.ArianeNode.create_subclass("Component", args)
                        dist.add_component(m)
                        dist.save()
                        m = m.get_properties(gettype=True)
                        return make_response(json.dumps({"component": m}), 201, headers_json)
                    else:
                        abort_error("BAD_REQUEST", "Parameters are missing or incorrect. You must provide: {}".format(
                                    m.get_properties().keys()))
                else:
                    abort_error("BAD_REQUEST", "Given parameter 'version' does not match any Distribution versions")
            else:
                abort_error("BAD_REQUEST", "component {} already exists".format(args))

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
        self.reqparse.add_argument('editable', type=bool, help='Distribution editable flag')
        self.reqparse.add_argument('url_repos', type=str, help='Distribution repository URL')
        self.reqparse.add_argument('nID', type=int, help='Distribution database ID named "nID"')
        self.reqparse.add_argument('distrib', location='json')
        # self.reqparse.add_argument('copy', type=bool)
        # self.reqparse.add_argument('version', type=str)
        super(RestDistributionList, self).__init__()

    def get(self):
        dlist = ariane.distribution_service.get_all()
        dev = ariane.distribution_service.get_dev_distrib()
        if (dlist is None) or (dev is None):
            abort_error("BAD_REQUEST", "No Distribution was found in the database")
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
            if not isinstance(d, ariane_delivery.Distribution):
                abort_error("BAD_REQUEST", "Given parameter {} must be a Distribution".format(d))
            dev = ariane.distribution_service.get_dev_distrib()
            if dev == d:
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
            dev = ariane.distribution_service.get_dev_distrib()
            if "-SNAPSHOT" in dev.version:
                cpy_dev = DatabaseManager.get_distrib_copies()
                if len(cpy_dev) != 1:
                    abort_error("BAD_REQUEST", "No copy was found in database, can not continue")
                return make_response(json.dumps({"distrib": dev.get_properties(gettype=True)}), 200, headers_json)

            newdevcp = DatabaseManager.make_dev_distrib()
            if newdevcp == 1:
                abort_error("INTERNAL_ERROR", "Server can not find the actual DEV Distribution")
            elif newdevcp == 2:
                abort_error("BAD_REQUEST", "A component of the actual DEV Distribution is already in a '-SNAPSHOT' version")
            elif newdevcp == 3:
                abort_error("INTERNAL_ERROR", "Error occured while copying the New DEV Distribution into the "
                                              "database: A copy already exists.")
            elif newdevcp == 4:
                abort_error("INTERNAL_ERROR", "Error occured while copying the New DEV Distribution into the database")

            return make_response(json.dumps({"distrib": newdevcp.get_properties(gettype=True)}), 200, headers_json)
        elif mode == "RELEASE":
            if args["distrib"] is None:
                abort_error("BAD_REQUEST", "You must provide the 'distrib' parameter")
            arg_d = json.loads(args["distrib"])
            d = ariane.distribution_service.get_unique(arg_d)
            if not isinstance(d, ariane_delivery.Distribution):
                abort_error("BAD_REQUEST", "Given parameter {} must be a Distribution".format(d))

            err, cd = DatabaseManager.make_release_distrib(d)
            if err == 1:
                abort_error("FORBIDDEN", "Distribution copy already exists in database")
            else:
                return make_response(json.dumps({"distrib": cd.get_properties(gettype=True)}), 200, headers_json)

        elif action == "getDEV":
            dev = ariane.distribution_service.get_dev_distrib()
            if not isinstance(dev, ariane_delivery.Distribution):
                abort_error("BAD_REQUEST", "No DEV Distribution in database")
            return make_response(json.dumps({"distrib": dev.get_properties(gettype=True)}), 200, headers_json)

        elif action == "removeDEVcopy":
            err = ReleaseTools.remove_genuine_distrib()
            if err < 0:
                abort_error("INTERNAL_ERROR", "UNABLE TO REMOVE THE DATABASE DISTRIBTUTION COPY")
            LOGGER.info("The current distribution copy in database was removed")
            ReleaseTools.export_new_distrib()
            return make_response(json.dumps({}), 200, headers_json)

        elif action == "getConfig":
            run_mode = ReleaseTools.get_ui_running_mode()
            relmgr_url = RELMGR_CONFIG.relmgr_url
            return make_response(json.dumps({"run_mode": run_mode, "relmgr_url": relmgr_url}), 200, headers_json)

        elif action == "exportDB":
            err = ReleaseTools.export_new_distrib(True)
            if err:
                abort_error("BAD_REQUEST", "Could not have exported the new database")
            return make_response(json.dumps({}), 200, headers_json)

        else:
            abort_error("BAD_REQUEST", "Given parameter 'mode' is invalid")

class RestReset(Resource):
    def post(self):
        print("reset begin")
        err, fpath = DatabaseManager.reset_database()
        if err == 0:
            print("reset done")
            return make_response(json.dumps({"message": "All distributions have been imported: Database is reset"}),
                                 200, headers_json)
        else:
            print("reset error")
            abort_error("INTERNAL_ERROR", "Error while importing '"+fpath+"', file was not found")

class RestCommit(Resource):

    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('isdistrib', type=bool)
        self.reqparse.add_argument('isplugin', type=bool)
        self.reqparse.add_argument('mode', type=str)
        self.reqparse.add_argument('task', type=str)
        self.reqparse.add_argument('comment', type=str)
        super(RestCommit, self).__init__()

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

        err, message, warns = GitManager.commit_distrib(args)

        if err == 1:
            abort_error("INTERNAL_ERROR", "Server can not find the current Distribution to commit")
        elif err == 2:
            abort_error("INTERNAL_ERROR", message)
        else:
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
            err = GitManager.checkout_distrib(dist, isplugin)
            if err == 1:
                abort_error("BAD_REQUEST", "Given Distribution version ({})does not exists".format(version))
            # Delete copy distrib and rename Initial distrib
            if mode == "files":
                LOGGER.info("Removing the working copy...")
                ret_rmcompy = DatabaseManager.remove_distrib_copy(dist)
                if ret_rmcompy == 1:
                    abort_error("BAD_REQUEST", "Distribution copy model was not found. Can not reinitialize the Database")
                elif ret_rmcompy == -1:
                    abort_error("BAD_REQUEST", "Given distribution {} is not the copy, "
                                               "Can not reinitialize the Database".format(dist))
                LOGGER.info("Working copy was removed")

            elif mode == "files_DEV":
                LOGGER.info("Reseting the working copy...")
                ret = DatabaseManager.reset_dev_distrib()
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
            err, errmsg = GitManager.pull_checkout_distrib(dist, isplugin)
            return make_response(json.dumps({"message": "git checkout and pull done. " + errmsg}), 200, headers_json)

        elif mode == "tags":
            err, message = GitManager.checkout_tags(isdistrib, isplugin)
            if err == 1:
                abort_error("INTERNAL_ERROR", "Server can not find the current Distribution to commit")
            elif err == 2:
                abort_error("INTERNAL_ERROR", message)
            else:
                return make_response(json.dumps({"message": message}), 200, headers_json)

class RestFileDiff(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('filenode', help="Filenode from which you get diff")
        super(RestFileDiff, self).__init__()

    def get(self):
        args = self.reqparse.parse_args()
        if args["filenode"] is not None:
            fnode = json.loads(args["filenode"])
            err, out, flag_diff = FileGenManager.get_file_diff(fnode["nID"])
            if err == 1:
                abort_error("BAD_REQUEST", "Given parameter {} does not match an existing file"
                                           " in database".format(fnode))
            else:
                return make_response(json.dumps({"diff": out, "isDiff": flag_diff}), 200, headers_json)
        else:
            abort_error("BAD_REQUEST", "You must provide the 'filenode' parameter")

class RestGetDelZip(Resource):
    def __init__(self):
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('version', type=str, help='Version of Zip file')
        super(RestGetDelZip, self).__init__()

    def post(self):
        path_zip = BuildManager.path_zip
        zipfile = BuildManager.zipfile
        err = BuildManager.check_for_zip()
        if err == 1:
            abort_error('BAD_REQUEST', "Zip file Path and Name does not match any existing zip file")
        else:
            return send_from_directory(path_zip, zipfile, as_attachment=True, mimetype="application/zip")

    def delete(self):
        zipfile = BuildManager.zipfile
        args = self.reqparse.parse_args()
        if args["version"] is None:
            abort_error("BAD_REQUEST", "You must provide the 'version' parameter, the zip file version to remove.")
        
        version = args["version"]
        if version not in zipfile:
            abort_error("BAD_REQUEST", "Given parameter 'version' {} does not match the latest Zip file created".format(version))
        
        err = BuildManager.delete_zip()
        if err == 1:
            msg = "Built Zip file does not exists, can not remove it"
            LOGGER.warn(msg)
            return make_response(json.dumps({"message": msg, "zip": zipfile}), 200, headers_json)
        return make_response(json.dumps({"message": "Zip file {} has been removed".format(zipfile), "zip": zipfile}), 200, headers_json)

class RestBuildZip(Resource):
    def __init__(self):
        self.path_zip = project_path + "/artifacts/"
        self.zipfile = ""
        self.reqparse = reqparse.RequestParser()
        self.reqparse.add_argument('action', type=str, help='Action you want to do')
        self.reqparse.add_argument('version', type=str, help='Version of Distribution to build')
        self.reqparse.add_argument('tags', type=bool, help='True if building .zip from Git tags')
        super(RestBuildZip, self).__init__()

    def post(self):
        """
        Use a subprocess calling "bootstrap/command.py 'command (arguments for command.py)'" to execute the File Generation.
        command.py handles the change of working directory
        :return:
        """
        args = self.reqparse.parse_args()
        if args["version"] is None:
            abort_error("BAD_REQUEST", "You must provide the parameter 'version'")

        if args["tags"] is None:
            abort_error("BAD_REQUEST", "You must provide the parameter 'tags' (boolean)")
        if args["action"] is None:
            abort_error("BAD_REQUEST", "You must provide the parameter 'action'")

        version = args["version"]
        from_tags = args["tags"]
        action = args["action"]

        if str(action).lower() == "buildzip":
            err = BuildManager.build_distrib(version, from_tags)
            if err == 1:
                abort_error("INTERNAL_ERROR", "Error while building")
            else:
                return make_response(json.dumps({"zip": BuildManager.zipfile, "message": "Build Success"}), 200, headers_json)

        elif str(action).lower() == "mvncleaninstall":
            err = BuildManager.do_mvn_clean_install()
            if err == 1:
                abort_error("INTERNAL_ERROR", "Error while running 'mvn clean install'")
            else:
                return make_response(json.dumps({"message": "mvn clean install succeeded"}), 200, headers_json)

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
        if args["command"] is None:
            abort_error("BAD_REQUEST", "You must provide the 'command' parameter")

        params = args["command"].split(' ')
        if params[0] == "testOK":
            return make_response(json.dumps({"message": args["command"]}), 200, headers_json)
        elif params[0] == "testNOK":
            abort_error("BAD_REQUEST", "TEST: the Error test has succeded")
        if len(params) >= 2:
            if len(params) == 2:
                params.append(None)
            err, errobj = FileGenManager.generate_files(params[0], params[1], params[2])
            if err == 1:
                abort_error("BAD_REQUEST", "There is no copy of the master SNAPSHOT Distribution")
            elif err == 2:
                abort_error("BAD_REQUEST", "{} (Given command {} is incorrect)".format(errobj, args))
        else:
            abort_error("BAD_REQUEST", "Too few arguments in the given command {}".format(args))

        return make_response(json.dumps({"message": args["command"]}), 200, headers_json)


api.add_resource(RestDistributionList, '/rest/distrib')
api.add_resource(RestDistribution, '/rest/distrib/<int:unique_key>', '/rest/distrib/<unique_key>')
api.add_resource(RestComponentList, '/rest/component')
api.add_resource(RestComponent, '/rest/component/<int:unique_key>', '/rest/component/<unique_key>/<unique_key2>')
api.add_resource(RestPlugin, '/rest/plugin/<int:unique_key>', '/rest/plugin/<unique_key>/<unique_key2>')
api.add_resource(RestPluginList, '/rest/plugin')
api.add_resource(RestModuleList, '/rest/module')
api.add_resource(RestModule, '/rest/module/<int:unique_key>', '/rest/module/<unique_key>')
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
api.add_resource(TempEditViewEdit, '/editionViewEdit.html')
api.add_resource(TempEditDiff, '/editionDiff.html')
api.add_resource(TempErr, '/err.html')
# Tests
api.add_resource(UI, '/', "/index", "/index.html")

# if __name__ == '__main__':
#     app.run(debug=True)
