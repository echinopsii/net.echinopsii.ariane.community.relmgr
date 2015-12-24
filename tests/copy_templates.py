# Ariane Release Manager
# Models directory creation
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
import unittest
from ariane_reltreelib.dao import ariane_delivery
from tests import create_db_from_file
from os import walk
import shutil
__author__ = 'stanrenia'

project_path = __file__
project_path = project_path[: str(project_path).find("ariane.community.relmgr")]

class TestMakeDir(unittest.TestCase):

    def test_mk_dir(self):
        mkdir = MakeDir()
        mkdir.ariane.delete_all()
        create_db_from_file.create_db_file('inputs/create_0.6.2.txt')
        mkdir.make()
        mkdir.make_distrib_directory()

    def test_copy(self):
        cpy = CopyModels(project_path, os.path.join(os.getcwd(), 'templates'))
        cpy.copy()

    def test_rename(self):
        renaming = RenameTemplates(project_path)
        renaming.rename()


class MakeDir(object):
    def __init__(self):
        self.ariane = ariane_delivery.DeliveryTree({"login": "neo4j", "password": "admin", "type": "neo4j"})

    def make(self):
        d = self.ariane.distribution_service.get_unique({"version": '0.6.2'})
        modules = self.ariane.module_service.get_all(d)
        plugins = self.ariane.plugin_service.get_all(d)

        def make_sub_dir(dirname, mod_plug):
            os.mkdir('models/'+dirname)
            submodules = self.ariane.submodule_service.get_all(mod_plug)
            submodules.extend(self.ariane.submodule_parent_service.get_all(mod_plug))
            for sub in submodules:
                subdir_name = dirname + '/' + sub.name
                os.mkdir('models/' + subdir_name)
                if type(sub) is ariane_delivery.SubModuleParent:
                    for s in sub.list_submod:
                        sub_subdir_name = subdir_name + "/" + s.name
                        os.mkdir('models/' + sub_subdir_name)

        for mod in modules:
            typ = "core."
            if mod.type != "core":
                typ = ""
            dirname = 'ariane.community.'+typ+mod.name
            make_sub_dir(dirname, mod)

        for p in plugins:
            dirname = 'ariane.community.plugin.' + p.name
            make_sub_dir(dirname, p)

    def make_distrib_directory(self):
        dir_list = ["distrib", "maven", "plugins", "sources", "virgo"]
        os.mkdir('models/ariane.community.distrib')
        os.mkdir('models/ariane.community.distrib/resources')

        for name in dir_list:
            os.mkdir('models/ariane.community.distrib/resources/' + name)

class CopyModels(object):
    def __init__(self, rootpath, dst_path):
        self.rootpath = rootpath
        self.dst_path = dst_path

    def copy(self):
        f = []
        p = None
        print("Start to Copy")
        for (dirpath, dirnames, filenames) in walk(self.rootpath):
            f.extend(dirnames)
            p = dirpath
            break
        for dir in f:
            if str(dir).startswith('ariane.') and 'relmgr' not in dir:
                path = os.path.join(p, dir+'/')

                def copy_rec(path, dest_path):
                    dirpath = None
                    filenames = []
                    dirnames = []
                    for (dp, dn, fn) in walk(path):
                        dirpath = dp
                        dirnames = dn
                        filenames = fn
                        break
                    # if "pom.xml.tpl" in filenames:
                    #     pom_path = os.path.join(dirpath+"pom.xml.tpl")
                    #     dpath = str(pom_path).replace(self.rootpath, "")
                    #     dst_path = dest_path + dpath
                    #     print(dst_path)
                    #     shutil.copy(pom_path, dst_path)
                    # else:
                    #     print(dest_path)

                    for tpl in filenames:
                        if str(tpl).endswith(".jnj"):
                            if "environment" not in dirpath:
                                tpl_path = os.path.join(dirpath+tpl)
                                test_path = os.path.join("templates", dirpath[len(self.rootpath):])
                                test_path = os.path.join(os.getcwd(), test_path)
                                print("from ", tpl_path, " ->  ", test_path)
                                shutil.copy(tpl_path, test_path)
                            else:  # Copy directly into templates/ariane.community.environment to simplify access
                                tpl_path = os.path.join(dirpath+tpl)
                                test_path = os.path.join("templates", "ariane.community.environment")
                                test_path = os.path.join(os.getcwd(), test_path)
                                print("from ", tpl_path, " ->  ", test_path)
                                shutil.copy(tpl_path, test_path)

                    # for json in filenames:
                    #     if str(json).startswith("ariane.community"):
                    #         json_path = os.path.join(dirpath+json)
                    #         if "master" in json_path or "0.6.3" in json_path:
                    #             shutil.copy(json_path, os.getcwd()+'/models/')
                    #
                    for d in dirnames:
                        copy_rec(os.path.join(dirpath, d+'/'), dest_path)

                copy_rec(path, self.dst_path)

        print("Copying achieved")

class RenameTemplates(object):
    def __init__(self, rootpath):
        self.rootpath = rootpath

    def rename(self):
        f = []
        p = None
        print("Start Renaming")
        for (dirpath, dirnames, filenames) in walk(self.rootpath):
            f.extend(dirnames)
            p = dirpath
            break

        for dir in f:
            if str(dir).startswith('ariane.') and 'relmgr' not in dir and "plugin" not in dir:
                path = os.path.join(p, dir+'/')

                def rename_rec(path):
                    dirpath = None
                    filenames = []
                    dirnames = []
                    for (dp, dn, fn) in walk(path):
                        dirpath = dp
                        dirnames = dn
                        filenames = fn
                        break

                    for tpl in filenames:
                        if str(tpl).endswith("pom.yml") or str(tpl).endswith("template.yml") or str(tpl).endswith("plan.tpl.yml"):
                            tpl_path = os.path.join(dirpath, tpl)
                            tpl = tpl[:-len("yml")] + "jnj"
                            new_name = os.path.join(dirpath, tpl)
                            print("from ", tpl_path, " ->  ", new_name)
                            shutil.move(tpl_path, new_name)

                    for d in dirnames:
                        rename_rec(os.path.join(dirpath, d+'/'))

                rename_rec(path)

        print("Copying achieved")
