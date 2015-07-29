from ariane_deliverytool.dao import ariane_delivery
from ariane_deliverytool.generator import generator
from tests import create_db_from_file
import unittest
import json
import os

__author__ = 'stanrenia'
# TODO Corriger warnings
# TODO: Implémenter ArianeRelation.delete()
# TODO: Implémenter les Erreurs (vérifier les paramètres d'entrées des fonctions public) et exceptions
# TODO: Voir pourquoi node_id de Distribution change dans le test generator_ut.py, ajuster Generator.get_distrib() en fonction.
# TODO Mettre Header: Licence, auteur, titre, description
# TODO Déplacer les services Files (méthode make_files) dans un autre fichier.
# TODO Possibilité d'améliorer le compare xml, afin d'afficher tous les fichiers à modifier au début du print. Voir d'automatiser les modifs à faire.
# TODO Implémenter services FileNode (CreateRemoveUpdateDelete CRUD)
# TODO interface terminal pour génération fichiers

class GeneratorTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        args = {"login": "neo4j", "password": "admin", "type": "neo4j"}
        cls.ariane = ariane_delivery.DeliveryTree(args)
        cls.ariane.delete_all()
        cls.dir_output = "outputs/"
        cls.g = generator.Generator(cls.ariane, cls.dir_output, '/Users/stanrenia/py_neo4j_db/tests/templates')

    def setUp(self):
        self.ariane.delete_all()

    def tearDown(self):
        self.assertTrue(self.ariane.check_uniqueness())

    # def test_path(self):
    #     print(os.getcwd(), os.path.realpath(__file__))
    #     print(os.path.exists('..ariane_delivertytool/generator/exception_extension/module_vsh_exceptions.json'))
    #     print(os.path.exists('/Users/stanrenia/py_neo4j_db/ariane_deliverytool/generator/exception_extension/module_vsh_exceptions.json'))
    #     print(os.listdir('./'))

    def test_import_export(self):
        create_db_from_file.create_db_file('inputs/create_0.6.4-SNAPSHOT.txt')

    def test_generate_pom_maven(self):
        create_db_from_file.create_db_file('inputs/create_0.6.4-SNAPSHOT.txt')
        distrib = self.ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
        fpom = self.ariane.get_one_file(distrib, "pom_dist")
        self.g.generate_pom_distrib('0.6.4-SNAPSHOT', fpom)
        self.g.compare_files('xml', self.dir_output + fpom.path + fpom.name,
                           'models/pom-ariane.community.distrib-master.SNAPSHOT.xml')

    def test_generate_pom_module(self):
        create_db_from_file.create_db_file('inputs/create_0.6.4-SNAPSHOT.txt')
        distrib = self.ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
        modules = self.ariane.module_service.get_all(distrib)
        plugins = self.ariane.plugin_service.get_all(distrib)

        for plug in plugins:
            self.ariane.plugin_service.update_arianenode_lists(plug)
            self.g.generate_pom(plug)
            self.g.compare_files('xml', self.dir_output+plug.get_directory_name()+'/pom.xml',
                               'models/'+plug.get_directory_name()+'/pom.xml')
            for psub in plug.list_submod:
                self.g.compare_files('xml', self.dir_output+plug.get_directory_name()+'/'+psub.name+'/pom.xml',
                                   'models/'+plug.get_directory_name()+'/'+psub.name+'/pom.xml')

        for mod in modules:
            if mod.name == "environment":
                continue
            self.ariane.module_service.update_arianenode_lists(mod)
            self.g.generate_pom(mod)
            self.g.compare_files('xml', self.dir_output+mod.get_directory_name()+'/pom.xml',
                               'models/'+mod.get_directory_name()+'/pom.xml')
            for sub in mod.list_submod:
                self.g.compare_files('xml', self.dir_output+mod.get_directory_name()+'/'+sub.name+'/pom.xml',
                                   'models/'+mod.get_directory_name()+'/'+sub.name+'/pom.xml')
                if type(sub) is ariane_delivery.SubModuleParent:
                    for s in sub.list_submod:
                        self.g.compare_files('xml', self.dir_output+mod.get_directory_name()+'/'+sub.name+'/'+s.name+'/pom.xml',
                                           'models/'+mod.get_directory_name()+'/'+sub.name+'/'+s.name+'/pom.xml')

    def test_generate_distrib_json(self):
        create_db_from_file.create_db_file('inputs/create_0.6.4-SNAPSHOT.txt')
        distrib = self.ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
        fjson = self.ariane.get_one_file(distrib, "json_dist")
        filename = self.g.generate_json_dist("0.6.4-SNAPSHOT", fjson)
        self.assertTrue(self.g.compare_files("json", filename, 'models/ariane.community.distrib-master.SNAPSHOT.json'))

    def test_generate_distrib_plugin_json(self):
        create_db_from_file.create_db_file('inputs/create_0.6.4-SNAPSHOT.txt')
        distrib = self.ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
        fjson = self.ariane.get_one_file(distrib, "json_plugin_dist")
        filename = self.g.generate_json_plugin_dist("0.6.4-SNAPSHOT", fjson)
        self.assertTrue(self.g.compare_files("json", filename, "models/ariane.community.plugins-distrib-master.SNAPSHOT.json"))

    def test_generate_plugins_json(self):
        create_db_from_file.create_db_file('inputs/create_0.5.3.txt')
        create_db_from_file.create_db_file('inputs/create_0.6.0.txt')
        create_db_from_file.create_db_file('inputs/create_0.6.1.txt')
        create_db_from_file.create_db_file('inputs/create_0.6.2.txt')
        create_db_from_file.create_db_file('inputs/create_0.6.3.txt')
        create_db_from_file.create_db_file('inputs/create_0.6.4-SNAPSHOT.txt')

        distrib = self.ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
        fjson = self.ariane.get_one_file(distrib, "json_plugins")
        filename = self.g.generate_json_plugins(fjson)
        self.assertTrue(self.g.compare_files("c_json", filename, "models/ariane.community.plugins.json"))

    def test_generate_git_repos_json(self):
        create_db_from_file.create_db_file('inputs/create_0.6.3.txt')
        version = "0.6.3"
        distrib = self.ariane.distribution_service.get_unique({"version": version})
        fjson = self.ariane.get_one_file(distrib, "json_git_repos")
        self.g.generate_json_git_repos(version, fjson)
        self.assertTrue((self.g.compare_files("json", self.dir_output+fjson.path+fjson.name, "models/"+fjson.name)))

    def test_generate_module_lib(self):
        create_db_from_file.create_db_file('inputs/create_0.6.4-SNAPSHOT.txt')
        distrib = self.ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
        modules = self.ariane.module_service.get_all(distrib)
        plugins = self.ariane.plugin_service.get_all(distrib)
        for m in modules:
            if m.name not in ["environment", "installer"]:
                self.ariane.module_service.update_arianenode_lists(m)
                fjson = self.ariane.get_one_file(m, "json_build")
                self.g.generate_lib_json(m, fjson)
                self.assertTrue(self.g.compare_files("json", self.dir_output+fjson.path+fjson.name,
                                                   "models/"+fjson.name))
        for p in plugins:
            self.ariane.plugin_service.update_arianenode_lists(p)
            fjson = self.ariane.get_one_file(p, "json_build")
            self.g.generate_lib_json(p, fjson)
            self.assertTrue(self.g.compare_files("json", self.dir_output+fjson.path+fjson.name,
                                               "models/"+fjson.name))

    def test_generate_plan(self):
        create_db_from_file.create_db_file('inputs/create_0.6.2.txt')
        distrib = self.ariane.distribution_service.get_unique({"version": "0.6.2"})
        modules = self.ariane.module_service.get_all(distrib)
        plugins = self.ariane.plugin_service.get_all(distrib)
        for m in modules:
            if m.name not in ["environment", "installer"]:
                self.ariane.module_service.update_arianenode_lists(m)
                fplan = self.ariane.get_one_file(m, "plan")
                self.g.generate_plan(m, fplan)
                self.assertTrue(self.g.compare_files('xml', self.dir_output+fplan.path+fplan.name,
                                                   "models/"+fplan.name))
        for p in plugins:
            self.ariane.plugin_service.update_arianenode_lists(p)
            fplan = self.ariane.get_one_file(p, "plan")
            self.g.generate_plan(p, fplan)
            self.assertTrue(self.g.compare_files('xml', self.dir_output+fplan.path+fplan.name,
                                               "models/"+fplan.name))

    def test_generate_installer_vsh(self):
        create_db_from_file.create_db_file('inputs/create_0.6.4-SNAPSHOT.txt')
        distrib = self.ariane.distribution_service.get_unique({"version": '0.6.4-SNAPSHOT'})
        modules = self.ariane.module_service.get_all(distrib)
        plugins = self.ariane.plugin_service.get_all(distrib)
        for m in modules:
            mfiles = self.ariane.get_files(m)
            for f in mfiles:
                if f.type == "vsh":
                    self.g.generate_vsh_installer(modules.copy(), f)
                    self.assertTrue(self.g.compare_files('xml', self.dir_output+f.path+f.name, 'models/'+f.name))
        for p in plugins:
            pfiles = self.ariane.get_files(p)
            for f in pfiles:
                if f.type == "vsh":
                    self.g.generate_vsh_plugin(p, f)
                    self.assertTrue(self.g.compare_files('xml', self.dir_output+f.path+f.name, 'models/'+f.name))

    # def compare_files(self, file_type, filename1, filename2):
    #     with open(filename1, 'r') as file1:
    #         with open(filename2, 'r') as file2:
    #             if file_type == "json":
    #                 return self.compare_json(file1, file2)
    #             elif file_type == "c_json":
    #                 return self.compare_complex_json(file1, file2)
    #             elif file_type == "xml":
    #                 return self.compare_xml(file1, file2)
    #             else:
    #                 pass
    # 
    # def compare_json(self, file1, file2):
    #     data1 = json.load(file1)
    #     data2 = json.load(file2)
    #     if (type(data1) is list) and (type(data2) is list):
    #         data1.sort()
    #         data2.sort()
    #     return data1 == data2
    # 
    # def compare_complex_json(self, file1, file2):
    #     """
    #     Compare json files both composed of the following elements: {"key": [ {}, {}, ...], "key2": [{}, {}, ...], ...}
    #     a dictionary with list of dictionaries as values
    #     :param file1: 1st .json file
    #     :param file2: 2nd .json file
    #     :return: True if both .json files are equal
    #     """
    #     data1 = json.load(file1)
    #     data2 = json.load(file2)
    #     l = data1["ariane.community.plugin.rabbitmq"]
    #     l2 = data2["ariane.community.plugin.rabbitmq"]
    #     length = 0
    #     if len(l) == len(l2):
    #         for d in l:
    #             for d2 in l2:
    #                 if d == d2:
    #                     length += 1
    #                     break
    #         if length == len(l):
    #             return True
    # 
    #     return False
    # 
    # def compare_xml(self, file1, file2):
    #     model = file1.read()
    #     flag = True
    #     for line in(l.strip() for l in file2.readlines()):
    #         if line in model:
    #             continue
    #         else:
    #             if "<!--" not in line:
    #                 print(file2.name)
    #                 print(line)
    #             flag = False
    #     return flag

