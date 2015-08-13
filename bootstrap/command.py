# Ariane Release Manager
# Bootstrap Command
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

import sys, os, shutil, argparse, subprocess

project_path = str(os.getcwd())
print(project_path)
if project_path.endswith('/bootstrap'):
    module_path = project_path[:-len('/bootstrap')]
    sys.path.append(module_path)
    project_path = project_path[:-len('/ariane.community.relmgr/bootstrap')]
else:
    raise Exception("Incorrect project path: ", project_path)

from ariane_reltreelib.generator import generator
from ariane_reltreelib.dao import ariane_delivery
from ariane_reltreelib import exceptions as err

__author__ = 'stanrenia'
# TODO Handle error and choose path
# Liste commandes: distribution, distrib_only, modules_only, plugins_only: -version
# commandes: pom_dist, json_plugins, json_plugin_dist, json_git, json_dist: -version
# commandes: pom -version -Mod/Plug, plan -version -Mod/Plug, lib -version -Mod/Plug, vsh -version installer, vsh -verison -plugin

class Command(object):
    ariane = None
    g = None
    commands_dist = ["distribution", "distribution_only", "module_only", "plugin_only", "pom_dist",
                     "json_plugins", "json_plugin_dist", "json_git_repos", "json_dist"]
    commands_mod = ["pom", "plan", "lib_json", "vsh"]

    def __init__(self):
        Command.ariane = ariane_delivery.DeliveryTree({"login": "neo4j", "password": "admin", "type": "neo4j"})
        # Command.g = generator.Generator(Command.ariane, {"outputs": "/ECHINOPSII/srenia/ariane_relmgr/tests/outputs",
        #                                                 "templates": "/ECHINOPSII/srenia/ariane_relmgr/tests/templates"})
        Command.g = generator.Generator(Command.ariane, {"outputs": project_path, "templates": project_path})

    def import_data(self):
        fnames = []
        have_to_import = False
        vlist = []
        for (dirpath, dirnames, filenames) in os.walk('dependency_db'):
            fnames = filenames
            break
        for f in fnames:
            fv = f[len('distrib_'):]
            fv = fv[:-len('.cypher')]
            dist = Command.ariane.distribution_service.get_unique({"version": str(fv)})
            if dist is None:
                vlist.append(f)
                have_to_import = True
        if have_to_import:
            dnames = []
            graphDBpath = ""
            for (dirpath, dirnames, filenames) in os.walk(project_path):
                dnames = dirnames
                break
            for dname in dnames:
                if str(dname).startswith('neo4j-community'):
                    graphDBpath = project_path + '/' + dname
            if graphDBpath != "":
                for vl in vlist:
                    os.system(graphDBpath+"/bin/neo4j-shell -file dependency_db/" + vl)
                # os.system("./import_files.sh /ECHINOPSII/srenia/neo4j-community-2.2.3 /ECHINOPSII/srenia/ariane.community.relmgr/bootstrap/dependency_db/tdistrib_0.6.1.cypher")
                # print('You need to import more versioned distribution to the database')
        return have_to_import

    def execute(self):
        parser = argparse.ArgumentParser()
        parser.add_argument("command", help="File generation command")
        parser.add_argument("version", help="Ariane Delivery version generated")
        parser.add_argument("--name", help="Module or Plugin name in which the file is generated")
        args = parser.parse_args()
        cmd = args.command
        version = args.version
        name = args.name
        print(cmd, version)
        distrib = Command.ariane.distribution_service.get_unique({"version": version})
        if isinstance(distrib, ariane_delivery.Distribution):
            if cmd in Command.commands_dist:
                if cmd == "distribution":
                    Command.g.generate_all_distribution(version)
                else:
                    if "only" in cmd:
                        method = 'generate_'+str(cmd).replace('_only', '_files')
                        method = getattr(Command.g, method)
                        method(version)
                    else:
                        fnode = Command.ariane.get_one_file(distrib, cmd)
                        if cmd == "json_plugins":
                            if self.import_data():
                                print("Importing missing data")
                            if not Command.ariane.check_uniqueness():
                                raise err.CommandError("Error while importing missing Distributions")
                            Command.g.generate_json_plugins(fnode)
                        else:
                            method = getattr(Command.g, 'generate_'+cmd)
                            if fnode is not None:
                                method(version, fnode)

            elif cmd in Command.commands_mod:
                if name is not None:
                    modules = Command.ariane.module_service.get_all(distrib)
                    plugins = Command.ariane.plugin_service.get_all(distrib)
                    if cmd == "vsh":
                        if name == "installer":
                            for m in modules:
                                fnode = Command.ariane.get_one_file(m, "vsh")
                                if fnode is not None:
                                    Command.g.generate_vsh_installer(modules.copy(), fnode)
                        else:
                            p = Command.ariane.plugin_service.get_unique({"name": name})
                            if p is not None:
                                fvsh = Command.ariane.get_one_file(p, "vsh")
                                Command.g.generate_vsh_plugin(p, fvsh)
                            else:
                                raise err.CommandError("Error, Plugin name not found in database")
                    else:
                        # Get Module or Plugin
                        mod = [mod for mod in modules if mod.name == name]
                        plug = [plug for plug in plugins if plug.name == name]
                        m = None
                        if len(mod) > 0:
                            m = mod[0]
                        elif len(plug) > 0:
                            m = plug[0]
                        if m is not None:
                            # Call method if get succededed
                            if isinstance(m, ariane_delivery.Module):
                                Command.ariane.module_service.update_arianenode_lists(m)
                            else:
                                Command.ariane.plugin_service.update_arianenode_lists(m)

                            if cmd == "pom":
                                Command.g.generate_pom(m)
                            elif cmd == "plan":
                                fnode = Command.ariane.get_one_file(m, "plan")
                                if fnode is not None:
                                    shutil.copy(project_path+"/ariane.community.distrib/resources/maven/plan_module_parent_tpl.xml",
                                                project_path)
                                    Command.g.generate_plan(m, fnode)
                            elif cmd == "lib_json":
                                fnode = Command.ariane.get_one_file(m, "json_build")
                                if fnode is not None:
                                    Command.g.generate_plan(m, fnode)

            else:
                raise err.CommandError("Error, wrong command")
        else:
            raise err.CommandError("Error, Distribution not found in database")



if __name__ == '__main__':
    cmd = Command()
    cmd.execute()
