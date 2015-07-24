from ariane_deliverytool.dao import ariane_delivery
from ariane_deliverytool.generator import generator
from tests import create_db_from_file
from ariane_deliverytool.generator import tools
import unittest
import difflib
import json
import os

__author__ = 'stanrenia'
# TODO corriger ../
# TODO  ArianeDeliveryService -> DeliveryTree , DAO -> dao
# TODO Implémenter services FileNode (CreateRemoveUpdateDelete CRUD)
# TODO générer Distrib(Modules) puis générer Plugin (un par un, en fonction du nom d'entrée)
# TODO: Insérer fichiers à générer dans DB pr chaque node: Créer nouveau Node('File' {type: '',})
# TODO: Voir pour générer fichier un par un, au lieu de tous d'un coup
# TODO: Valider toute la génération de fichiers.
# TODO interface terminal pour génération fichiers
# TODO (commencé) Plans: créer 1 template par module et par version

class GeneratorTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        args = {"login": "neo4j", "password": "admin", "type": "neo4j"}
        cls.ariane = ariane_delivery.ArianeDeliveryService(args)
        cls.ariane.delete_all()
        cls.dir_output = "outputs/"

    def setUp(self):
        self.ariane.delete_all()

    def tearDown(self):
        self.assertTrue(self.ariane.check_uniqueness())

    def test_create_files(self):
        create_db_from_file.create_db_file('inputs/create_0.6.2.txt')

    def test_path(self):
        print(os.path.exists('..ariane_delivertytool/generator/exception_extension/module_lib_exceptions.json'))
        print(os.path.exists('/Users/stanrenia/py_neo4j_db/ariane_deliverytool/generator/exception_extension/module_lib_exceptions.json'))
        print(os.listdir('./'))

    def test_generate_pom_module(self):
        create_db_from_file.create_db_file('inputs/create_0.6.3-SNAPSHOT.txt')
        g = generator.Generator(self.ariane)
        distrib = self.ariane.distribution_service.get_unique({"version": "0.6.3-SNAPSHOT"})
        modules = self.ariane.module_service.get_all(distrib)
        plugins = self.ariane.plugin_service.get_all(distrib)
        g.generate_pom("0.6.3-SNAPSHOT", self.dir_output+"ariane.community")
        for plug in plugins:
            plug.list_submod = self.ariane.submodule_service.get_all(plug)
            self.compare_files('xml', self.dir_output+'ariane.community.plugin.'+plug.name+'/pom.xml', 'models/pom-'+plug.name+'.xml')
            for psub in plug.list_submod:
                self.compare_files('xml', self.dir_output+'ariane.community.plugin.'+plug.name+'/'+psub.name+'/pom.xml',
                                   'models/sub_pom/pom-'+plug.name+'-'+psub.name+'.xml')

        for mod in modules:
            if mod.name == "environment":
                continue
            mod.list_submod = self.ariane.submodule_service.get_all(mod)
            mod.list_submod.extend(self.ariane.submodule_parent_service.get_all(mod))
            modtyp = "core."
            if mod.type != 'core':
                modtyp = ""
            self.compare_files('xml', self.dir_output+'ariane.community.'+modtyp+mod.name+'/pom.xml', 'models/pom-'+mod.name+'.xml')
            for sub in mod.list_submod:
                self.compare_files('xml', self.dir_output+'ariane.community.'+modtyp+mod.name+'/'+sub.name+'/pom.xml',
                                   'models/sub_pom/'+'pom-'+mod.name+'-'+sub.name+'.xml')
                if type(sub) is ariane_delivery.SubModuleParent:
                    for s in sub.list_submod:
                        self.compare_files('xml', self.dir_output+'ariane.community.'+modtyp+mod.name+'/'+sub.name+'/'+s.name+'/pom.xml',
                                           'models/sub_pom/'+'pom-'+mod.name+'-'+sub.name+'-'+s.name+'.xml')

    def test_generate_distrib_json(self):
        g = generator.Generator(self.ariane)
        create_db_from_file.create_db_file('inputs/create_0.6.1.txt')
        filename = g.generate_json("0.6.1", "module", self.dir_output+"ariane.community")
        self.assertTrue(self.compare_files("json", filename, 'models/ariane.community.distrib-0.6.1.json'))

    def test_generate_distrib_plugin_json(self):
        g = generator.Generator(self.ariane)
        create_db_from_file.create_db_file('inputs/create_0.5.3.txt')
        filename = g.generate_json("0.5.3", "plugin", self.dir_output+"ariane.community")
        self.assertTrue(self.compare_files("json", filename, "models/ariane.community.plugins-distrib-0.5.3.json"))

    def test_generate_plugins_json(self):
        g = generator.Generator(self.ariane)
        create_db_from_file.create_db_file('inputs/create_0.5.3.txt')
        create_db_from_file.create_db_file('inputs/create_0.6.0.txt')
        create_db_from_file.create_db_file('inputs/create_0.6.1.txt')
        create_db_from_file.create_db_file('inputs/create_0.6.2.txt')
        create_db_from_file.create_db_file('inputs/create_0.6.3-SNAPSHOT.txt')

        filename = g.generate_plugins_json(self.dir_output+"ariane.community")
        self.assertTrue(self.compare_files("c_json", filename, "models/ariane.community.plugins.json"))

    def test_generate_git_repos_json(self):
        create_db_from_file.create_db_file('inputs/create_0.6.2.txt')
        g = generator.Generator(self.ariane)
        version = "0.6.2"
        filename = g.generate_git_repos_json(version, self.dir_output+"ariane.community", extension=".git")
        self.assertTrue((self.compare_files("json", filename, "models/ariane.community.git.repos-0.6.2.json")))

    def test_generate_main_git_repos_json(self):
        create_db_from_file.create_db_file('inputs/create_0.6.2.txt')
        g = generator.Generator(self.ariane)
        version = "0.6.2"
        filename = g.generate_git_repos_json(version, self.dir_output+"ariane.community", url="net.echinopsii.")
        self.assertTrue(self.compare_files("json", filename, "models/ariane.community.git.repos-main-master.SNAPSHOT.json"))

    def test_generate_module_lib(self):
        create_db_from_file.create_db_file('inputs/create_0.6.2.txt')
        g = generator.Generator(self.ariane)
        version = "0.6.2"
        g.generate_lib_json(version, self.dir_output+"ariane.community")
        self.assertTrue(self.compare_files("json", self.dir_output+"ariane.community.core.directory/distrib/db/"
                                           "resources/builds/ariane.community.core.directory-0.6.2.json",
                                           "models/ariane.community.core.directory-0.6.2.json"))
        self.assertTrue(self.compare_files("json", self.dir_output+"ariane.community.core.idm/distrib/db/"
                                           "resources/builds/ariane.community.core.idm-0.4.1.json",
                                           "models/ariane.community.core.idm-0.4.1.json"))
        self.assertTrue(self.compare_files("json", self.dir_output+"ariane.community.core.injector/distrib/db/"
                                           "resources/builds/ariane.community.core.injector-0.6.2.json",
                                           "models/ariane.community.core.injector-0.6.2.json"))
        self.assertTrue(self.compare_files("json", self.dir_output+"ariane.community.core.portal/distrib/db/"
                                           "resources/builds/ariane.community.core.portal-0.6.2.json",
                                           "models/ariane.community.core.portal-0.6.2.json"))
        self.assertTrue(self.compare_files("json", self.dir_output+"ariane.community.core.mapping/distrib/db/"
                                           "resources/builds/ariane.community.core.mapping-0.6.2.json",
                                           "models/ariane.community.core.mapping-0.6.2.json"))
        self.assertTrue(self.compare_files("json", self.dir_output+"ariane.community.messaging/distrib/db/"
                                           "resources/builds/ariane.community.messaging-0.1.0.json",
                                           "models/ariane.community.messaging-0.1.0.json"))

    def test_generate_plan(self):
        create_db_from_file.create_db_file('inputs/create_0.6.2.txt')
        g = generator.Generator(self.ariane)
        version = "0.6.2"
        g.generate_plan(version, self.dir_output+"ariane.community")
        self.assertTrue(self.compare_files("xml", self.dir_output+"ariane.community.core.directory/distrib/db/"
                        "resources/virgo/repository/ariane-core/net.echinopsii.ariane.community.core.directory_0.6.2.plan",
                                           "models/net.echinopsii.ariane.community.core.directory_0.6.2.plan"))
        self.assertTrue(self.compare_files("xml", self.dir_output+"ariane.community.core.injector/distrib/db/"
                        "resources/virgo/repository/ariane-core/net.echinopsii.ariane.community.core.injector_0.6.2.plan",
                                           "models/net.echinopsii.ariane.community.core.injector_0.6.2.plan"))
        self.assertTrue(self.compare_files("xml", self.dir_output+"ariane.community.core.portal/distrib/db/"
                        "resources/virgo/repository/ariane-core/net.echinopsii.ariane.community.core.portal_0.6.2.plan",
                                           "models/net.echinopsii.ariane.community.core.portal_0.6.2.plan"))
        self.assertTrue(self.compare_files("xml", self.dir_output+"ariane.community.core.mapping/distrib/db/"
                        "resources/virgo/repository/ariane-core/net.echinopsii.ariane.community.core.mapping_0.6.2.plan",
                                           "models/net.echinopsii.ariane.community.core.mapping_0.6.2.plan"))
        self.assertTrue(self.compare_files("xml", self.dir_output+"ariane.community.messaging/distrib/db/"
                        "resources/virgo/repository/ariane-core/net.echinopsii.ariane.community.messaging_0.1.0.plan",
                                           "models/net.echinopsii.ariane.community.messaging_0.1.0.plan"))
        self.assertTrue(self.compare_files("xml", self.dir_output+"ariane.community.core.idm/distrib/db/"
                        "resources/virgo/repository/ariane-core/net.echinopsii.ariane.community.core.idm_0.4.1.plan",
                                           "models/net.echinopsii.ariane.community.core.idm_0.4.1.plan"))
        self.assertTrue(self.compare_files("xml", self.dir_output+"ariane.community.plugin.rabbitmq/distrib/db/"
                        "resources/virgo/repository/ariane-plugins/net.echinopsii.ariane.community.plugin.rabbitmq_0.2.2.plan",
                                           "models/net.echinopsii.ariane.community.plugin.rabbitmq_0.2.2.plan"))

    def test_generate_installer_vsh(self):
        create_db_from_file.create_db_file('inputs/create_0.6.2.txt')
        g = generator.Generator(self.ariane)
        g.generate_vsh('0.6.2', self.dir_output+'ariane.community')
        self.assertTrue(self.compare_files('xml', self.dir_output+'ariane.community.installer/distrib/installer/'
                                           'resources/virgoscripts/deploy-components.vsh',
                                           'models/installer_deploy-components.vsh'))
        self.assertTrue(self.compare_files('xml', self.dir_output+'ariane.community.plugin.rabbitmq/distrib/installer/'
                                           'resources/virgoscripts/deploy-plugin.rabbitmq.vsh',
                                           'models/deploy-plugin.rabbitmq.vsh'))

    def compare_files(self, file_type, filename1, filename2):
        with open(filename1, 'r') as file1:
            with open(filename2, 'r') as file2:
                if file_type == "json":
                    return self.compare_json(file1, file2)
                elif file_type == "c_json":
                    return self.compare_complex_json(file1, file2)
                elif file_type == "xml":
                    return self.compare_xml(file1, file2)
                else:
                    pass

    def compare_json(self, file1, file2):
        data1 = json.load(file1)
        data2 = json.load(file2)
        if (type(data1) is list) and (type(data2) is list):
            data1.sort()
            data2.sort()
        return data1 == data2

    def compare_complex_json(self, file1, file2):
        """
        Compare json files both composed of the following elements: {"key": [ {}, {}, ...], "key2": [{}, {}, ...], ...}
        a dictionary with list of dictionaries as values
        :param file1: 1st .json file
        :param file2: 2nd .json file
        :return: True if both .json files are equal
        """
        data1 = json.load(file1)
        data2 = json.load(file2)
        l = data1["ariane.community.plugin.rabbitmq"]
        l2 = data2["ariane.community.plugin.rabbitmq"]
        length = 0
        if len(l) == len(l2):
            for d in l:
                for d2 in l2:
                    if d == d2:
                        length += 1
                        break
            if length == len(l):
                return True

        return False

    def compare_xml(self, file1, file2):
        model = file1.read()
        flag = True
        for line in(l.strip() for l in file2.readlines()):
            if line in model:
                continue
            else:
                if "<!--" not in line:
                    print(file2.name)
                    print(line)
                flag = False
        return flag

