# Ariane Release Manager
# Database creation from file
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

from ariane_reltreelib.dao import ariane_delivery

__author__ = 'stanrenia'

def create_db_file(filename):
    file_found = True
    state = "core"
    list_component = []
    list_plugin = []
    args = {"login": "neo4j", "password":"admin", "type": "neo4j"}
    ariane = ariane_delivery.DeliveryTree(args)
    distrib = None
    txtout = ""
    try:
        with open(filename, 'r') as file:
            print('Reading file: ' + filename)
            mod_order = 1
            for line in file:
                #print(line)
                list_param = line.split()
                #print('list : ', list_param)
                if ("#" not in list_param) and (len(list_param) > 0):
                    # print('list param: ', list_param)
                    if state == "core" and "distribution" in list_param:
                        distrib = ariane_delivery.Distribution(list_param[1], list_param[2], editable="false")
                        state = "component"
                    elif "dependency:" in list_param:
                        state = "dependency"
                    elif "plugin_dependency:" in list_param:
                        state = "plugin_dependency"
                    elif state == "component" and "plugin" not in list_param and len(list_param) > 0:
                        mod_name = list_param[0]
                        mod_version = list_param[1]
                        mod_type = list_param[2]
                        mod = ariane_delivery.Component(mod_name, mod_version, mod_type)
                        mod.order = mod_order
                        mod_order += 1
                        if len(list_param) > 3:
                            list_module = list_param[3:]
                            sub_order = 1
                            for module in list_module:
                                if ":" in module:
                                    sub_list = module.split(':')
                                    sub_parent = [n for n in sub_list if not n.startswith('_')][0]
                                    sub_list.remove(sub_parent)
                                    sub_list = sub_list[0].split('_')
                                    sub_list = [s for s in sub_list if s != '']
                                    sub_parent = ariane_delivery.ModuleParent(sub_parent, mod.version)
                                    for s in sub_list:
                                        sub_sub = ariane_delivery.Module(s, mod.version)
                                        sub_sub.order = sub_order
                                        sub_order += 1
                                        sub_sub.set_groupid_artifact(mod, sub_parent)
                                        sub_parent.add_module(sub_sub)
                                    sub_parent.order = sub_order
                                    sub_order += 1
                                    mod.add_module(sub_parent)
                                else:
                                    sub = ariane_delivery.Module(module, mod.version)
                                    sub.order = sub_order
                                    sub_order += 1
                                    sub.set_groupid_artifact(mod)
                                    mod.add_module(sub)
                        list_component.append(mod)

                    elif state == "component" and "plugin" in list_param:
                        if "vmin" in list_param and "vmax" in list_param:
                            vmin = list_param[4]
                            vmax = list_param[6]
                            index_sub = 7
                        else:
                            vmin, vmax = (None, None)
                            index_sub = 3
                        plugin_name = list_param[1]
                        plugin_version = list_param[2]
                        plug = ariane_delivery.Plugin(plugin_name, plugin_version)

                        list_module = list_param[index_sub:]
                        sub_order = 1
                        for module in list_module:
                            sub = ariane_delivery.Module(module, plug.version)
                            sub.order = sub_order
                            sub_order += 1
                            sub.set_groupid_artifact(plug)
                            plug.add_module(sub)
                        list_plugin.append({"plugin": plug, "version_min": vmin, "version_max": vmax})
                    elif state == "dependency":
                        # print("HERE")
                        mod_name1 = list_param[0]
                        mod_name2 = list_param[1]
                        vmin = list_param[2]
                        vmax = list_param[3]
                        mod_a = None
                        mod_b = None
                        for mod in list_component:
                            if mod.name == mod_name1:
                                mod_a = mod
                            elif mod.name == mod_name2:
                                mod_b = mod
                        if (mod_a is not None) and (mod_b is not None):
                            mod_a.add_component_dependency({"component": mod_b, "version_min": vmin, "version_max": vmax})

                    elif state == "plugin_dependency":
                        plugin_name = list_param[0]
                        mod_name2 = list_param[1]
                        vmin = list_param[2]
                        vmax = list_param[3]
                        plug_a = None
                        mod_b = None
                        for plug_dict in list_plugin:
                            p = plug_dict["plugin"]
                            if p.name == plugin_name:
                                plug_a = p
                                break
                        for mod in list_component:
                            if mod.name == mod_name2:
                                mod_b = mod
                                break
                        if (plug_a is not None) and (mod_b is not None):
                            plug_a.add_component_dependency({"component": mod_b, "version_min": vmin, "version_max": vmax})

    except FileNotFoundError:
        print("Error, file not find try another file name")
        return None

    # Save distrib
    for mod in list_component:
        distrib.add_component(mod)

    for dictio in list_plugin:
        plug = dictio["plugin"]
        if dictio["version_min"] is not None:
            dictio.pop("plugin")
            distrib.add_plugin(plug, dictio)
        else:
            distrib.add_plugin(plug)

    ariane.distribution_service.make_files(distrib)
    distrib.save()

