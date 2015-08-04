import sys, os, shutil, argparse

project_path = str(os.getcwd())
if project_path.endswith('/boostrap'):
    module_path = project_path[:-len('/boostrap')]
    sys.path.append(module_path)
    project_path = project_path[:-len('/ariane.community.deliverytool/boostrap')]
else:
    raise Exception("Incorrect project path")

from ariane_deliverytool.generator import generator
from ariane_deliverytool.dao import ariane_delivery
from ariane_deliverytool import exceptions as err

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
        Command.g = generator.Generator(Command.ariane, project_path)

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
                        method = getattr(Command.g, 'generate_'+cmd)
                        fnode = Command.ariane.get_one_file(distrib, cmd)
                        if fnode is not None:
                            method(version, fnode)

            elif cmd in Command.commands_mod:
                if name is not None:
                    modules = Command.ariane.module_service.get_all(distrib)
                    plugins = Command.ariane.plugin_service.get_all(distrib)
                    if (cmd == "vsh") and (name == "installer"):
                        for m in modules:
                            fnode = Command.ariane.get_one_file(m, "vsh")
                            if fnode is not None:
                                Command.g.generate_vsh_installer(modules.copy(), fnode)
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
