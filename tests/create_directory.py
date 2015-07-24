import os
import unittest
from ariane_deliverytool.dao import ariane_delivery
from tests import create_db_from_file

__author__ = 'stanrenia'

class MakeDir(object):
    def __init__(self):
        self.ariane = ariane_delivery.ArianeDeliveryService({"login": "neo4j", "password": "admin", "type": "neo4j"})

    def make(self):
        d = self.ariane.distribution_service.get_unique({"version": '0.6.2'})
        modules = self.ariane.module_service.get_all(d)
        plugins = self.ariane.plugin_service.get_all(d)

        def make_sub_dir(dirname, mod_plug):
            os.mkdir('outputs/'+dirname)
            submodules = self.ariane.submodule_service.get_all(mod_plug)
            submodules.extend(self.ariane.submodule_parent_service.get_all(mod_plug))
            for sub in submodules:
                subdir_name = dirname + '/' + sub.name
                os.mkdir('outputs/' + subdir_name)
                if type(sub) is ariane_delivery.SubModuleParent:
                    for s in sub.list_submod:
                        sub_subdir_name = subdir_name + "/" + s.name
                        os.mkdir('outputs/' + sub_subdir_name)

            os.mkdir('outputs/' + dirname + '/distrib')
            os.mkdir('outputs/' + dirname + '/distrib' + '/db')
            os.mkdir('outputs/' + dirname + '/distrib' + '/db' + '/resources')
            os.mkdir('outputs/' + dirname + '/distrib' + '/db' + '/resources' + '/builds')
            os.mkdir('outputs/' + dirname + '/distrib' + '/db' + '/resources' + '/virgo')
            os.mkdir('outputs/' + dirname + '/distrib' + '/db' + '/resources' + '/virgo' + '/repository')
            if mod_plug.node_type == "Module":
                os.mkdir('outputs/' + dirname + '/distrib' + '/db' + '/resources' + '/virgo' + '/repository' + '/ariane-core')
            else:
                os.mkdir('outputs/' + dirname + '/distrib' + '/db' + '/resources' + '/virgo' + '/repository' + '/ariane-plugins')

        for mod in modules:
            typ = "core."
            if mod.type != "core":
                typ = ""
            dirname = 'ariane.community.'+typ+mod.name
            make_sub_dir(dirname, mod)
            # ariane.community.core.directory/distrib/db/resources/builds/
            # ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/
            # ariane.community.installer/distrib/installer/resources/virgoscripts/deploy-components.vsh
            if mod.name == "installer":
                os.mkdir('outputs/' + dirname + '/distrib' + '/installer')
                os.mkdir('outputs/' + dirname + '/distrib' + '/installer' + '/resources')
                os.mkdir('outputs/' + dirname + '/distrib' + '/installer' + '/resources' + '/virgoscripts')

        for p in plugins:
            dirname = 'ariane.community.plugin.' + p.name
            # ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-plugins/
            make_sub_dir(dirname, p)

            os.mkdir('outputs/' + dirname + '/distrib' + '/installer')
            os.mkdir('outputs/' + dirname + '/distrib' + '/installer' + '/resources')
            os.mkdir('outputs/' + dirname + '/distrib' + '/installer' + '/resources' + '/virgoscripts')

    def make_distrib_directory(self):
        dir_list = ["distrib", "maven", "plugins", "sources", "virgo"]
        os.mkdir('outputs/ariane.community.distrib')
        os.mkdir('outputs/ariane.community.distrib/resources')

        for name in dir_list:
            os.mkdir('outputs/ariane.community.distrib/resources/' + name)

class TestMakeDir(unittest.TestCase):

    def test_mk_dir(self):
        mkdir = MakeDir()
        mkdir.ariane.delete_all()
        create_db_from_file.create_db_file('inputs/create_0.6.2.txt')
        mkdir.make()
        mkdir.make_distrib_directory()
