# Ariane Release Manager
# Bootstrap Command
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
import argparse

# module_name = '/ariane.community.relmgr'
# project_path = str(os.getcwd())
# if not os.path.exists(project_path + module_name):
#    if module_name in project_path:
#        project_path = project_path[:project_path.index(module_name)]
#        if not os.path.exists(project_path + module_name):
#             raise Exception("Incorrect project path: ", project_path)
#         sys.path.append(project_path + module_name)
# else:
#     if project_path + module_name not in sys.path:
#         sys.path.append(project_path + module_name)
from ariane_reltreelib.generator import Generator
from ariane_reltreelib.dao import modelAndServices
from ariane_reltreelib import exceptions as err
from ariane_reltreelib.arianeDefinitions import ArianeDefinitions

__author__ = 'stanrenia'
# Liste commandes: distribution, distrib_only, modules_only, plugins_only: -version
# commandes: pom_dist, json_plugins, json_plugin_dist, json_git, json_dist: -version
# commandes: pom -version -Mod/Plug, plan -version -Mod/Plug, lib -version -Mod/Plug, vsh -version installer,
# vsh -verison -plugin


class Command(object):
    dao_ariane = None
    gen = None
    commands_dist = ["distribution", "core_only", "distribution_only", "module_only", "plugin_only", "json_dist",
                     "distrib_plugin_only", "pom_dist", "json_plugins", "json_plugin_dist", "json_git_repos"]
    commands_mod = ["pom", "plan", "lib_json", "vsh"]
    project_path = None
    conf = None

    def __init__(self, dao_ariane=None, project_path=None):
        if dao_ariane is None:
            raise err.CommandError("Ariane DAO not provided.")
            # ERROR
            # with open(project_path+module_name+'/ariane_relsrv/server/misc/confsrv.json', 'r') as target:
            #     Command.conf = json.load(target)
            # if Command.conf is None:
            #     raise err.CommandError("GraphDB login file can not be read. It should be '(GraphDB_name)_login.json")
            # Command.ariane = ariane_delivery.DeliveryTree({"login": Command.conf["NEO4J_LOGIN"],
            # "password": Command.conf["NEO4J_PASSWORD"], "type": "neo4j"})
            # Command.g = generator.Generator(Command.ariane, {"outputs": project_path, "templates": project_path})
        else:
            if project_path is None:
                raise err.CommandError("Ariane project path not provided.")
                pass
            else:
                Command.dao_ariane = dao_ariane
                Command.project_path = project_path
                Command.gen = Generator(Command.dao_ariane, {
                    "outputs": project_path, "templates": project_path
                })
                ArianeDefinitions.set_project_abs_path(project_path)

    @staticmethod
    def import_all_distribs():
        os.system(Command.conf["NEO4J_PATH"]+"/bin/neo4j-shell -file " + Command.project_path +
                  Command.conf["EXPORT_DB"] + "all.cypher")

    @staticmethod
    def get_number_of_distribs():
        fnames = []
        for (dirpath, dirnames, filenames) in os.walk('dependency_db'):
            fnames = filenames
            break
        fnames = [f for f in fnames if f.startswith("distrib_")]
        return len(fnames)

    def execute_parse(self):
        parser = argparse.ArgumentParser()
        parser.add_argument("command", help="File generation command")
        parser.add_argument("version", help="Ariane Delivery version generated")
        parser.add_argument("--name", help="Component or Plugin name in which the file is generated")
        args = parser.parse_args()
        cmd = args.command
        version = args.version
        name = args.name
        # print(cmd, version)
        # shutil.copy(project_path+"/ariane.community.distrib/resources/maven/plan_module_parent_tpl.xml",
        #             project_path)
        self.execute(cmd, version, name)

    def execute(self, cmd, version, name):
        distrib = Command.dao_ariane.get_unique(Command.dao_ariane.distribution_service, {"version": version})
        if isinstance(distrib, modelAndServices.Distribution):
            if cmd in Command.commands_dist:
                if cmd == "distribution":
                    Command.gen.generate_all_distribution(version)
                else:
                    if "only" in cmd:
                        method = 'generate_'+str(cmd).replace('_only', '_files')
                        method = getattr(Command.gen, method)
                        method(version)
                    else:
                        fnode = Command.dao_ariane.get_one_file(distrib, cmd)
                        if cmd == "json_plugins":
                            distribs = Command.dao_ariane.distribution_service.get_all()
                            number_distribs = self.get_number_of_distribs()
                            if len(distribs) < number_distribs:
                                if len(distribs) > 0:
                                    Command.dao_ariane.delete_all()
                                self.import_all_distribs()
                            # if self.import_data():
                            #     print("Importing missing data")
                            if not Command.dao_ariane.check_uniqueness():
                                raise err.CommandError("Error while importing missing Distributions")
                            Command.gen.generate_json_plugins(version, fnode)
                        else:
                            method = getattr(Command.gen, 'generate_'+cmd)
                            if fnode is not None:
                                method(version, fnode)

            elif cmd in Command.commands_mod:
                if name is not None:
                    components = Command.dao_ariane.component_service.get_all(distrib)
                    plugins = Command.dao_ariane.plugin_service.get_all(distrib)
                    if cmd == "vsh":
                        if name == "installer":
                            for m in components:
                                fnode = Command.dao_ariane.get_one_file(m, "vsh")
                                if fnode is not None:
                                    Command.gen.generate_vsh_installer(version, components.copy(), fnode)
                        else:
                            p = Command.dao_ariane.get_unique(Command.dao_ariane.plugin_service, {"name": name})
                            if p is not None:
                                fvsh = Command.dao_ariane.get_one_file(p, "vsh")
                                Command.gen.generate_vsh_plugin(p, fvsh)
                            else:
                                raise err.CommandError("Plugin name not found in database")
                    else:
                        # Get Component or Plugin
                        mod = [mod for mod in components if mod.name == name]
                        plug = [plug for plug in plugins if plug.name == name]
                        m = None
                        if len(mod) > 0:
                            m = mod[0]
                        elif len(plug) > 0:
                            m = plug[0]
                        if m is not None:
                            # Call method if get succededed
                            if isinstance(m, modelAndServices.Component):
                                Command.dao_ariane.component_service.update_arianenode_lists(m)
                            else:
                                Command.dao_ariane.plugin_service.update_arianenode_lists(m)

                            if cmd == "pom":
                                Command.gen.generate_pom(m)
                            elif cmd == "plan":
                                fnode = Command.dao_ariane.get_one_file(m, "plan")
                                if fnode is not None:
                                    Command.gen.generate_plan(m, fnode)
                                else:
                                    raise err.CommandError(
                                        "Component or Plugin named:{} does not have a .plan file".format(m.name)
                                    )
                            elif cmd == "lib_json":
                                fnode = Command.dao_ariane.get_one_file(m, "json_build")
                                if fnode is not None:
                                    Command.gen.generate_plan(m, fnode)
                                else:
                                    raise err.CommandError(
                                        "Component or Plugin named:{} does not have a .json build file".format(m.name)
                                    )
                        else:
                            raise err.CommandError(
                                "Given Component or Plugin named: {} was not found in DB".format(name)
                            )

            else:
                raise err.CommandError("Wrong command")
        else:
            raise err.CommandError("Distribution not found in database")

# if __name__ == '__main__':
#     cmd = Command()
#     cmd.execute_parse()
