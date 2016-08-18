# Ariane Release Manager
# Generator test
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

import unittest
import os

import wget

from ariane_relsrv.server.config import Config
from ariane_reltreelib.dao import modelAndServices
import generator
from tests import create_db_from_file

__author__ = 'stanrenia'
# TODO remake every test functions following the model of test_generate_pom_maven()

class GeneratorTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.relmgr_path = __file__
        cls.relmgr_path = cls.relmgr_path[:-len("/tests/generator_ut.py")]
        cls.project_path = cls.relmgr_path[:-len("/ariane.community.relmgr")]

        cls.config_path = cls.relmgr_path + "/tests/config/confsrv.json"
        cls.RELMGR_CONFIG = Config()
        cls.RELMGR_CONFIG.parse(cls.config_path)

        # Connection to neo4j database
        cls.ariane = modelAndServices.DeliveryTree({"login": cls.RELMGR_CONFIG.neo4j_login,
                                                   "password": cls.RELMGR_CONFIG.neo4j_password,
                                                   "host": cls.RELMGR_CONFIG.neo4j_host,
                                                   "port": cls.RELMGR_CONFIG.neo4j_port,
                                                   "type": "neo4j"})
        # It's better to import database from cypher file, because it's 7 times faster than reading .txt files
        # So it's necessary to set the database (neo4j) bin path
        cls.ariane.set_db_bin_path(cls.RELMGR_CONFIG.neo4j_path)

        cls.dir_output = "outputs/"
        cls.output_path = cls.relmgr_path + "/tests/outputs"
        cls.templates_path = cls.relmgr_path+'/tests/templates'
        cls.g = generator.Generator(cls.ariane, {"outputs": cls.output_path,
                                                 "templates": cls.templates_path})

        cls.model_path = cls.relmgr_path + "/tests/models"
        cls.model_remote_path = "https://raw.githubusercontent.com/echinopsii/net.echinopsii."
        cls.inputs_path = cls.relmgr_path + "/tests/inputs/"
        for (dp, dir, flist) in os.walk(cls.inputs_path):
            cls.inputs_files = flist
            break

    def setUp(self):
        self.ariane.delete_all()
        # pass

    def tearDown(self):
        self.assertTrue(self.ariane.check_uniqueness())

    # def test_path(self):
    #     print(os.getcwd(), os.path.realpath(__file__))
    #     print(os.path.exists('..ariane_delivertytool/generator/exception_extension/component_vsh_exceptions.json'))
    #     print(os.path.exists('/Users/stanrenia/py_neo4j_db/ariane_deliverytool/generator/exception_extension/component_vsh_exceptions.json'))
    #     print(os.listdir('./'))

    def get_input_file(self, version, type="cypher"):
        infile = None
        for f in self.inputs_files:
            if version in f and str(f).endswith(type):
                infile = f
                break
        if infile is not None:
            infile = os.path.join(self.inputs_path, infile)
        return infile

    def get_model_file(self, filepath, version=None, remote=False):
        if not remote:
            return os.path.join(self.model_path, filepath)
        else:
            sublist = str(filepath).split("/")
            github_path = sublist[0] + "/" + version + "/"
            sublist.remove(sublist[0])
            github_path = self.model_remote_path + github_path + "/".join(sublist)
            fname = wget.download(github_path, out=self.model_path)
            return fname

    def test_import(self):
        # create_db_from_file.create_db_file('inputs/create_0.6.3.txt')
        # self.ariane.import_db_from_file(self.get_input_file("0.6.4-SNAPSHOT"))
        # self.get_model_file('ariane.community.distrib/resources/maven/pom-ariane.community.distrib-0.6.3.xml', remote=True, version="0.6.3")
        pass

    def test_generate_all(self):
        self.ariane.import_db_from_file('inputs/create_0.6.4-SNAPSHOT.cypher')
        self.g.generate_all_distribution("0.6.4-SNAPSHOT")

    def test_generate_pom_maven(self):
        for version in ["0.6.4-SNAPSHOT", "0.6.3"]:
            fpath = self.get_input_file(version)
            self.assertIsNotNone(fpath)
            self.assertEqual(self.ariane.import_db_from_file(fpath), 0)
            distrib = self.ariane.distribution_service.get_unique({"version": version})
            self.assertTrue(isinstance(distrib, modelAndServices.Distribution))
            fpom = self.ariane.get_one_file(distrib, "pom_dist")
            self.assertTrue(isinstance(fpom, modelAndServices.FileNode))

            # TODO get template file from github and place it into tests/templates/

            self.g.generate_pom_dist(version, fpom)

            remove_mfile = True
            if version == "0.6.3":
                mfile = self.get_model_file(fpom.path + fpom.name, version=version, remote=True)
            else:
                mfile = self.get_model_file(fpom.name)
                remove_mfile = False

            ofile = os.path.join(self.output_path, fpom.path, fpom.name)
            err_compare = self.g.compare_files('xml', ofile, mfile)
            self.assertTrue(err_compare)

            os.remove(ofile)
            if remove_mfile:
                os.remove(mfile)

    def test_generate_pom_component(self):
        self.ariane.import_db_from_file('inputs/create_0.6.4-SNAPSHOT.cypher')
        distrib = self.ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
        components = self.ariane.component_service.get_all(distrib)
        plugins = self.ariane.plugin_service.get_all(distrib)

        for plug in plugins:
            self.ariane.plugin_service.update_arianenode_lists(plug)
            self.g.generate_pom(plug)
            self.g.compare_files('xml', self.dir_output+plug.get_directory_name()+'/pom.xml',
                               'models/'+plug.get_directory_name()+'/pom.xml')
            for psub in plug.list_module:
                self.g.compare_files('xml', self.dir_output+plug.get_directory_name()+'/'+psub.name+'/pom.xml',
                                   'models/'+plug.get_directory_name()+'/'+psub.name+'/pom.xml')

        for mod in components:
            if mod.name == "environment":
                continue
            self.ariane.component_service.update_arianenode_lists(mod)
            self.g.generate_pom(mod)
            self.g.compare_files('xml', self.dir_output+mod.get_directory_name()+'/pom.xml',
                               'models/'+mod.get_directory_name()+'/pom.xml')
            for sub in mod.list_module:
                self.g.compare_files('xml', self.dir_output+mod.get_directory_name()+'/'+sub.name+'/pom.xml',
                                   'models/'+mod.get_directory_name()+'/'+sub.name+'/pom.xml')
                if type(sub) is modelAndServices.ModuleParent:
                    for s in sub.list_module:
                        self.g.compare_files('xml', self.dir_output+mod.get_directory_name()+'/'+sub.name+'/'+s.name+'/pom.xml',
                                           'models/'+mod.get_directory_name()+'/'+sub.name+'/'+s.name+'/pom.xml')

    def test_generate_distrib_json(self):
        self.ariane.import_db_from_file('inputs/create_0.6.4-SNAPSHOT.cypher')
        distrib = self.ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
        fjson = self.ariane.get_one_file(distrib, "json_dist")
        filename = self.g.generate_json_dist("0.6.4-SNAPSHOT", fjson)
        self.assertTrue(self.g.compare_files("json", filename, 'models/ariane.community.distrib-master.SNAPSHOT.json'))

    def test_generate_distrib_plugin_json(self):
        self.ariane.import_db_from_file('inputs/create_0.6.4-SNAPSHOT.cypher')
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
        self.ariane.import_db_from_file('inputs/create_0.6.4-SNAPSHOT.cypher')

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

    def test_generate_component_lib(self):
        self.ariane.import_db_from_file('inputs/create_0.6.4-SNAPSHOT.cypher')
        distrib = self.ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
        components = self.ariane.component_service.get_all(distrib)
        plugins = self.ariane.plugin_service.get_all(distrib)
        for m in components:
            if m.name not in ["environment", "installer"]:
                self.ariane.component_service.update_arianenode_lists(m)
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
        self.ariane.import_db_from_file('inputs/create_0.6.4-SNAPSHOT.cypher')
        distrib = self.ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
        components = self.ariane.component_service.get_all(distrib)
        plugins = self.ariane.plugin_service.get_all(distrib)
        for m in components:
            if m.name not in ["environment", "installer"]:
                self.ariane.component_service.update_arianenode_lists(m)
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
        self.ariane.import_db_from_file('inputs/create_0.6.4-SNAPSHOT.cypher')
        distrib = self.ariane.distribution_service.get_unique({"version": '0.6.4-SNAPSHOT'})
        components = self.ariane.component_service.get_all(distrib)
        plugins = self.ariane.plugin_service.get_all(distrib)
        for m in components:
            mfiles = self.ariane.get_files(m)
            for f in mfiles:
                if f.type == "vsh":
                    self.g.generate_vsh_installer(components.copy(), f)
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

