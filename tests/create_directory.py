import os
import unittest
from ariane_reltreelib.dao import ariane_delivery
from tests import create_db_from_file
from os import walk
import shutil
__author__ = 'stanrenia'

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

            # os.mkdir('models/' + dirname + '/distrib')
            # os.mkdir('models/' + dirname + '/distrib' + '/db')
            # os.mkdir('models/' + dirname + '/distrib' + '/db' + '/resources')
            # os.mkdir('models/' + dirname + '/distrib' + '/db' + '/resources' + '/builds')
            # os.mkdir('models/' + dirname + '/distrib' + '/db' + '/resources' + '/virgo')
            # os.mkdir('models/' + dirname + '/distrib' + '/db' + '/resources' + '/virgo' + '/repository')
            # if mod_plug.node_type == "Module":
            #     os.mkdir('models/' + dirname + '/distrib' + '/db' + '/resources' + '/virgo' + '/repository' + '/ariane-core')
            # else:
            #     os.mkdir('models/' + dirname + '/distrib' + '/db' + '/resources' + '/virgo' + '/repository' + '/ariane-plugins')

        for mod in modules:
            typ = "core."
            if mod.type != "core":
                typ = ""
            dirname = 'ariane.community.'+typ+mod.name
            make_sub_dir(dirname, mod)
            # ariane.community.core.directory/distrib/db/resources/builds/
            # ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/
            # ariane.community.installer/distrib/installer/resources/virgoscripts/deploy-components.vsh
            # if mod.name == "installer":
            #     os.mkdir('models/' + dirname + '/distrib' + '/installer')
            #     os.mkdir('models/' + dirname + '/distrib' + '/installer' + '/resources')
            #     os.mkdir('models/' + dirname + '/distrib' + '/installer' + '/resources' + '/virgoscripts')

        for p in plugins:
            dirname = 'ariane.community.plugin.' + p.name
            # ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-plugins/
            make_sub_dir(dirname, p)

            # os.mkdir('models/' + dirname + '/distrib' + '/installer')
            # os.mkdir('models/' + dirname + '/distrib' + '/installer' + '/resources')
            # os.mkdir('models/' + dirname + '/distrib' + '/installer' + '/resources' + '/virgoscripts')

    def make_distrib_directory(self):
        dir_list = ["distrib", "maven", "plugins", "sources", "virgo"]
        os.mkdir('models/ariane.community.distrib')
        os.mkdir('models/ariane.community.distrib/resources')

        for name in dir_list:
            os.mkdir('models/ariane.community.distrib/resources/' + name)

class TestMakeDir(unittest.TestCase):

    def test_mk_dir(self):
        mkdir = MakeDir()
        mkdir.ariane.delete_all()
        create_db_from_file.create_db_file('inputs/create_0.6.2.txt')
        mkdir.make()
        mkdir.make_distrib_directory()

    def test_copy(self):
        cpy = CopyModels(os.path.join(os.getcwd(), 'templates'), "/ECHINOPSII/srenia")
        cpy.copy()

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
            if str(dir).startswith('ariane.'):
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

                    for plan in filenames:
                        if str(plan).startswith("plan_"):
                            plan_path = os.path.join(dirpath+plan)
                            if "master" in plan_path or "0.6.3" in plan_path:
                                shutil.copy(plan_path, os.getcwd()+'/models/')

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
