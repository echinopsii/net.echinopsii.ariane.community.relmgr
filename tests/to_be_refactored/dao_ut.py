# Ariane Release Manager
# DAO unitary tests
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
from py2neo import env

from ariane_relsrv.server.config import Config
from ariane_reltreelib.dao import ariane_delivery
import unittest, os
from create_db_from_file import create_db_file
from ariane_relsrv.server import restful
from docker import Client
import json
import logging

__author__ = 'stanrenia'

class AppTest(unittest.TestCase):
    # TODO test Module

    @classmethod
    def setUpClass(cls):
        # Config.setup_logging(cls.RELMGR_CONFIG.log_file)
        # LOGGER = logging.getLogger(__name__)
        # myglobals = {"conf": cls.RELMGR_CONFIG,
        #              "delivery_tree": cls.ariane,
        #              "logger": LOGGER,
        #              "project_path": cls.project_path,
        #              "relmgr_path": cls.relmgr_path}
        #
        # restful.start_relmgr(myglobals, test=True)

        # DOCKER NEO4J
        cls.dockerClient = Client(base_url="unix://var/run/docker.sock")
        # for line in dockerClient.pull("neo4j", stream=True):
        #     print((bytes(line).decode("utf-8")))

        # Get all existing containers (<=> 'docker ps') and stop the neo4j container if it's running
        containers = cls.dockerClient.containers()
        for c in containers:
            if c.get("Image") == "neo4j":
                cls.dockerClient.stop(c.get("Id"))

        print("Docker containers:", containers)

        cls.neo4j_container = cls.dockerClient.create_container(image="neo4j",
                                                        detach=True,
                                                        volumes="$HOME/neo4j/data:/data",
                                                        ports=[7474],
                                                        environment=["NEO4J_AUTH=neo4j/admin"],
                                                        host_config=cls.dockerClient.create_host_config(port_bindings={
                                                            7474: 7474
                                                        }))
        print("NEO4J Container: ", cls.neo4j_container)
        res = cls.dockerClient.start(container=cls.neo4j_container.get("Id"))
        print("Container response: ", res)

        # Init variables:
        cls.relmgr_path = __file__
        cls.relmgr_path = cls.relmgr_path[:-len("/tests/dao_ut.py")]
        cls.project_path = cls.relmgr_path[:-len("/ariane.community.relmgr")]

        cls.config_path = cls.relmgr_path + "/tests/config/confsrv.json"
        cls.RELMGR_CONFIG = Config()
        cls.RELMGR_CONFIG.parse(cls.config_path)

        # Connection to neo4j database
        cls.ariane = ariane_delivery.DeliveryTree({"login": cls.RELMGR_CONFIG.neo4j_login,
                                                   "password": cls.RELMGR_CONFIG.neo4j_password,
                                                   "host": cls.RELMGR_CONFIG.neo4j_host,
                                                   "port": cls.RELMGR_CONFIG.neo4j_port,
                                                   "type": "neo4j"})

    def setUp(self):
        self.ariane.delete_all()
        # cypher_file_path = self.relmgr_path + "/tests/inputs/dao_ut.cypher"
        # os.system(self.RELMGR_CONFIG.neo4j_path+"/bin/neo4j-shell -file " + cypher_file_path)

        # cypher_file_path = relmgr_path + "/tests/inputs/dao_ut.cypher"
        # neo4j_import_cmd = "-file " + cypher_file_path
        # self.assertTrue(os.path.isfile(cypher_file_path))
        # print("using the following cypher file: " + cypher_file_path)
        # exec_dict = self.dockerClient.exec_create(container=self.neo4j_container.get("Id"),
        #                                           cmd="bin/neo4j-shell")
        # print("Starting neo4j import")
        # for line in self.dockerClient.exec_start(exec_id=exec_dict.get("Id"), stream=True):
        #     print((bytes(line).decode("utf-8")))

        self.sub = ariane_delivery.Module("arti", "0.2", "oyo", "oyo.arti")
        self.sub2 = ariane_delivery.Module("marti", "0.2", "aya", "aya.marti")
        self.sub2.add_file(ariane_delivery.FileNode("ael", "ald", "aeda", "/dad/ae"))
        self.subpar = ariane_delivery.Module("papa", "0.3")
        self.sub4 = ariane_delivery.Module("fils", "0.3", "son", "son.fils")
        self.mod = ariane_delivery.Component("My", "0.2.2", "other")
        self.mod2 = ariane_delivery.Component("idm", "0.3.2", "core")
        self.plugin = ariane_delivery.Plugin("RabbitMQ", "0.2.2")
        self.sub3 = ariane_delivery.Module("rab", "0.3", "rabitt", "rab.rabitt")
        self.distrib = ariane_delivery.Distribution("community", "0.6.1")
        self.subpar.add_module(self.sub4)
        self.subpar.add_file(ariane_delivery.FileNode("lxla", "al", "00.", "/ala/eer"))
        self.mod.add_module(self.subpar)
        self.mod.add_module(self.sub)
        self.mod.add_module(self.sub2)
        self.mod.add_file(ariane_delivery.FileNode("bbb.xml", "xml", "0.1", "/AA"))
        self.plugin.add_module(self.sub3)
        self.plugin.add_file(ariane_delivery.FileNode("plugFile", "xml", ":", "/aez/fef"))
        self.fnode = ariane_delivery.FileNode("dodo.json", "json", "0.6.2", "/la/lala")
        self.distrib.add_file(self.fnode)
        self.distrib.add_component(self.mod)
        self.distrib.add_component(self.mod2)
        self.distrib.add_plugin(self.plugin)
        self.distrib.save()

    def tearDown(self):
        self.assertTrue(self.ariane.check_uniqueness())

    def test_neo4j_docker(self):
        print("neo4j docker started")

    def test_save_file(self):
        fnode_dodo = ariane_delivery.FileNode("dodo.json", "json", "0.6.2", "/la/lala")
        self.mod.add_file(fnode_dodo)
        list_fnode = self.ariane.get_files(self.mod)
        self.assertEqual(len(list_fnode), 2)

    def test_save_distrib(self):
        #   Save distribution
        my_distrib = self.ariane.distribution_service.get_unique({"name": "community"})

        self.assertEqual(self.distrib, my_distrib)

    def test_relation_update(self):
        self.ariane.delete_all()
        # os.system(RELMGR_CONFIG.neo4j_path + "/bin/neo4j-shell -file "
        #           + RELMGR_CONFIG.db_export_path + "/distrib_0.6.4-SNAPSHOT.cypher")

        dist = self.ariane.distribution_service.get_all()[0]
        mods = self.ariane.component_service.get_all(dist)
        portal = [m for m in mods if m.name == "portal"][0]
        self.assertTrue(isinstance(portal, ariane_delivery.Component))
        portal.version = "0.7.0"
        portal.save()
        relations = self.ariane.component_service.get_relations(portal, ["DEPENDS ON"])
        for r in relations:
            if r.end == portal and (isinstance(r.start, ariane_delivery.Component) or isinstance(r.start, ariane_delivery.Plugin)):
                self.assertEqual(r.properties["version_min"], "0.7.0")
                self.assertEqual(r.properties["version_max"], "0.8.0")

    def test_update_module(self):
        self.sub.version = "oyoyo"
        self.sub.save()
        my_sub = self.ariane.module_service.get_unique({"version": self.sub.version})

        self.assertEqual(self.sub.version, "oyoyo")
        self.assertEquals(self.sub, my_sub)

    def test_update_component(self):
        #   Save an updated component
        self.mod.version = "newmew"
        self.mod.save()
        my_mod = self.ariane.component_service.get_unique({"version": self.mod.version})

        self.assertEqual(self.mod.version, "newmew")
        self.assertEquals(self.mod, my_mod)

    def test_update_plugin(self):
        self.plugin.name = "RabbitMMQ"
        self.plugin.save()
        my_plugin = self.ariane.plugin_service.get_unique({"name": self.plugin.name})

        self.assertEqual(self.plugin.name, "RabbitMMQ")
        self.assertEquals(self.plugin, my_plugin)

        self.plugin.name = "RabbitMQ"
        self.plugin.save()

    def test_update_distrib(self):
        self.distrib.version = "0.6.2"
        self.distrib.save()
        my_distrib = self.ariane.distribution_service.get_unique({"version": self.distrib.version})

        self.assertEqual(self.distrib.version, "0.6.2")
        self.assertEquals(self.distrib, my_distrib)

    def test_update_relation(self):
        mod_d = ariane_delivery.Component('dedo', "0.5.6", "test")
        mod_d.save()
        mod_d.add_component_dependency({"component": self.mod2, "version_min": "", "version_max": ""})
        rel = self.ariane.get_relation_between(mod_d, self.mod2)
        rel.properties["version_min"] = "007"
        rel.save()
        self.ariane.component_service.find(mod_d)
        # TODO test avec d'autres method py2neo
        rel = self.ariane.get_relation_between(mod_d, self.mod2)
        self.assertEqual(rel.properties["version_min"], "007")
        mod_d.delete()
        self.assertIsNone(self.ariane.component_service.find(mod_d))

    def test_ModuleService(self):
        #   Save a modified module
        self.sub2.groupId = "groupy"
        self.sub2.save()

        listmodule = self.ariane.module_service.get_all(self.mod)
        #   ModuleService
        #   find service method
        listfound = self.ariane.module_service.find({"name": "marti"})
        self.assertEqual(self.sub2, listfound[0])
        listfound = self.ariane.module_service.find({"name": "rab", "version": "0.3", "groupId": "rabitt",
                                                        "artifactId": "rab.rabitt"})
        self.assertEqual(self.sub3, listfound[0])

        listfound = self.ariane.module_service.find(self.sub2)
        self.assertEqual(self.sub2, listfound[0])

        listfound = self.ariane.module_service.find([self.sub, self.sub2, self.sub3])
        self.assertListEqual([self.sub, self.sub2, self.sub3], listfound)

        listfound = self.ariane.module_service.find({"version": "0.2.2"})
        self.assertTrue((self.sub in listfound) and (self.sub2 in listfound))

        #   get_unique service method
        unique = self.ariane.module_service.get_unique({"name": "rab"})
        self.assertEqual(self.sub3, unique)

        unique = self.ariane.module_service.get_unique({"nID": self.sub3.id})
        self.assertEqual(self.sub3, unique)

        unique = self.ariane.module_service.get_unique({"name": "bob"})
        self.assertIsNone(unique)

        unique = self.ariane.module_service.get_unique({"version": "0.2.2"})
        self.assertEqual(unique, 0)

        #   get_relations service method
        related_nodes = self.ariane.module_service.get_relations(self.sub)
        self.assertGreater(len(related_nodes), 0)
        for rel in related_nodes:
            self.assertIsInstance(rel, ariane_delivery.ArianeRelation)

        related_nodes = self.ariane.module_service.get_relations([self.sub, self.sub2])
        self.assertGreater(len(related_nodes), 1)
        for relation_list in related_nodes:
            for rel in relation_list:
                self.assertIsInstance(rel, ariane_delivery.ArianeRelation)

    def test_ModuleServiceWithParent(self):
        #   Save a modified module
        self.subpar.version = "0.4"
        self.subpar.save()

        listmodule = self.ariane.module_service.get_all(self.mod)
        self.assertTrue(self.subpar in listmodule)
        listfound = self.ariane.module_service.find({"name": "papa"})
        self.assertEqual(self.subpar, listfound[0])

        listfound = self.ariane.module_service.find(self.subpar)
        self.assertEqual(self.subpar, listfound[0])

        listfound = self.ariane.module_service.find({"version": "0.4"})
        self.assertTrue(self.subpar in listfound)

        #   get_unique service method
        unique = self.ariane.module_service.get_unique({"name": "papa"})
        self.assertEqual(self.subpar, unique)

        unique = self.ariane.module_service.get_unique({"name": "bob"})
        self.assertIsNone(unique)

        self.mod2.add_module(ariane_delivery.Module("daddy", "0.4"))

        unique = self.ariane.module_service.get_unique({"version": "0.4"})
        self.assertEqual(unique, 0)

        #   get_relations service method
        related_nodes = self.ariane.module_service.get_relations(self.subpar)
        self.assertGreater(len(related_nodes), 0)
        for rel in related_nodes:
            self.assertIsInstance(rel, ariane_delivery.ArianeRelation)

        newchild = ariane_delivery.Module("child", "testme")
        newpar = ariane_delivery.Module("bigpar", "testme")
        newpar.save()
        self.assertFalse(newpar.is_parent())
        newpar.add_module(newchild)
        self.assertTrue(newpar.is_parent())
        self.mod.add_module(newpar)
        listfound = self.ariane.component_service.find(self.mod)
        self.ariane.component_service.update_arianenode_lists(listfound[0])
        self.assertTrue(newpar in listfound[0].list_module)

        newpar.delete()
        listfound = self.ariane.component_service.find(self.mod)
        self.ariane.component_service.update_arianenode_lists(listfound[0])
        self.assertTrue(newpar not in listfound[0].list_module)

    def test_ComponentService(self):
        self.mod.version = "newmew"
        self.mod.save()
        for s in self.mod.list_module:
            self.assertEqual(s.version, self.mod.version)
        for f in self.mod.list_files:
            self.assertEqual(f.version, self.mod.version)

        #   ModuleService:
        listmod = self.ariane.component_service.get_all(self.distrib)
        self.assertGreater(len(listmod), 1)
        assert (self.mod in listmod) and (self.mod2 in listmod)

        dist = self.ariane.distribution_service.get_unique({"version": "0.6.1"})
        print(self.distrib, dist)
        listmod = self.ariane.component_service.get_all(dist)
        self.assertGreater(len(listmod), 1)
        assert (self.mod in listmod) and (self.mod2 in listmod)

        #   find service method
        listfound = self.ariane.component_service.find({"name": "idm"})
        self.assertEqual(listfound[0], self.mod2)

        listfound = self.ariane.component_service.find(self.plugin)

        listfound = self.ariane.component_service.find({"name": "My", "version": "newmew", "type": "other"})
        self.assertEqual(listfound[0], self.mod)

        listfound = self.ariane.component_service.find(self.mod)
        self.assertEqual(listfound[0], self.mod)

        listfound = self.ariane.component_service.find(self.mod2)
        self.assertEqual(listfound[0], self.mod2)

        listfound = self.ariane.component_service.find([self.mod, self.mod2])
        assert (self.mod in listmod) and (self.mod2 in listmod)

        #       create new component and add it to distrib
        self.mod3 = ariane_delivery.Component("portal", "0.3.2", "core")
        self.distrib.add_component(self.mod3)
        listfound = self.ariane.component_service.find({"version": "0.3.2"})

        self.assertGreater(len(listfound), 1)
        listfound = self.ariane.component_service.find(self.mod3)

        self.assertEqual(listfound[0], self.mod3)
        self.mod3.version = "yaya"
        self.mod3.save()
        listfound = self.ariane.component_service.find(self.mod3)
        self.assertEqual(self.mod3.version, listfound[0].version)

        sub = ariane_delivery.Module("toto", "tata")
        self.mod.add_module(sub)
        self.mod.save()
        listmod = self.ariane.component_service.get_all(self.distrib)
        self.assertGreater(len(listmod), 2)

        #   get_unique service method
        unique = self.ariane.component_service.get_unique({"name": "idm"})
        self.assertEqual(self.mod2, unique)

        unique = self.ariane.component_service.get_unique({"name": "bob"})
        self.assertIsNone(unique)

        self.mod3.version = "0.3.2"
        self.mod3.save()
        unique = self.ariane.component_service.get_unique({"version": "0.3.2"})
        self.assertEqual(unique, 0)

        #   get_relations
        self.mod.add_component_dependency({"component": self.mod2, "version_min": "0.3.0", "version_max": "0.4.0"})
        related_nodes = self.ariane.component_service.get_relations(self.mod)
        for rel in related_nodes:
            self.assertIsInstance(rel, ariane_delivery.ArianeRelation)

    def test_PluginService(self):
        self.plugin.save()
        self.plugin.add_file(ariane_delivery.FileNode("toto", "ad", "carry", "/r/s/q"))
        # PluginService():
        listplug = self.ariane.plugin_service.get_all(self.distrib)
        self.assertEqual(self.plugin, listplug[0])

        listfound = self.ariane.plugin_service.find({"name": "RabbitMQ"})
        listfound2 = self.ariane.plugin_service.find({"name": "RabbitMQ", "version": "0.2.2"})
        listfound3 = self.ariane.plugin_service.find(self.plugin)
        self.assertEqual(listfound, listfound2)
        self.assertEqual(listfound2, listfound3)
        self.assertEqual(self.plugin, listfound[0])

        plugin2 = ariane_delivery.Plugin("Daffy", "Duck")
        self.distrib.add_plugin(plugin2)
        listfound = self.ariane.plugin_service.find([self.plugin, plugin2])
        assert self.plugin in listfound and plugin2 in listfound

        listfound = self.ariane.plugin_service.find({"version": "0.2.2"})
        self.assertEqual(self.plugin, listfound[0])

        listplug = self.ariane.plugin_service.get_all(self.distrib)
        self.assertGreater(len(listplug), 1)

        plugin3 = ariane_delivery.Plugin("Buggz", "Duck")
        self.distrib.add_plugin(plugin3)
        unique = self.ariane.plugin_service.get_unique({"name": "Daffy"})
        self.assertEqual(plugin2, unique)

        unique = self.ariane.plugin_service.get_unique({"name": "bob"})
        self.assertIsNone(unique)

        unique = self.ariane.plugin_service.get_unique({"version": "Duck"})
        self.assertEqual(unique, 0)

        plugin2.version = "Ducker"
        plugin2.save()
        listplug = self.ariane.plugin_service.get_all(self.distrib)
        self.assertGreater(len(listplug), 2)

        related_nodes = self.ariane.plugin_service.get_relations(self.plugin)
        for rel in related_nodes:
            self.assertIsInstance(rel, ariane_delivery.ArianeRelation)

    def test_DistributionService(self):
        #   distrib2 is a single node
        self.distrib2 = ariane_delivery.Distribution("echinopsii", "0.7.0")
        self.distrib2.save()
        self.distrib.add_file(ariane_delivery.FileNode("dfg", "botrk", "bf", "/e/z"))
        self.distrib.add_component(ariane_delivery.Component("Ari", "Orbital"))
        self.distrib.save()
        self.distrib.add_plugin(ariane_delivery.Plugin("Gnar", "Gnaaar"))
        listdistrib = self.ariane.distribution_service.get_all()
        self.assertGreater(len(listdistrib), 1)
        assert ((listdistrib[0] == self.distrib) or (listdistrib[0] == self.distrib2) and
                (listdistrib[1] == self.distrib) or (listdistrib[1] == self.distrib2))

        my_distrib = self.ariane.distribution_service.find({"name": "echinopsii"})
        self.assertEqual(my_distrib[0], self.distrib2)

        my_distrib = self.ariane.distribution_service.find(self.distrib)
        self.assertEqual(my_distrib[0], self.distrib)

        related_nodes = self.ariane.distribution_service.get_relations(self.distrib)
        for rel in related_nodes:
            self.assertIsInstance(rel, ariane_delivery.ArianeRelation)

    def test_file_updatename(self):
        self.ariane.delete_all()
        create_db_file('inputs/create_0.6.3.txt')
        d = self.ariane.distribution_service.get_unique({"version": "0.6.3"})
        d.list_files = self.ariane.get_files(d)
        d.version = "0.6.3.2"
        d.save()
        for df in d.list_files:
            if df.type in ["json_build", "json_dist", "json_plugin_dist", "pom_dist", "json_git_repos", "plan"]:
                self.assertTrue(d.version in df.name)
            else:
                self.assertFalse(d.version in df.name)

        modules = self.ariane.component_service.get_all(d)
        plugins = self.ariane.plugin_service.get_all(d)
        for m in modules:
            self.ariane.component_service.update_arianenode_lists(m)
            m.version = "0.1.7"
            m.save()
            for f in m.list_files:
                if f.type in ["json_build", "json_dist", "json_plugin_dist", "pom_dist", "json_git_repos", "plan"]:
                    if m.version not in f.name:
                        print(m, f)
                    self.assertTrue(m.version in f.name)
            for s in m.list_module:
                if isinstance(s, ariane_delivery.Module):
                    self.ariane.module_service.update_arianenode_lists(m)
                else:
                    self.ariane.module_service.update_arianenode_lists(m)
                s.version = "123"
                s.save()
                for sf in s.list_files:
                    if sf.type in ["json_build", "json_dist", "json_plugin_dist", "pom_dist", "json_git_repos", "plan"]:
                        self.assertTrue(sf.version in sf.name)
        for p in plugins:
            self.ariane.plugin_service.update_arianenode_lists(p)
            p.version = "234"
            p.save()
            for f in p.list_files:
                if f.type in ["json_build", "json_dist", "json_plugin_dist", "pom_dist", "json_git_repos", "plan"]:
                    self.assertTrue(p.version in f.name)
            for s in p.list_module:
                if isinstance(s, ariane_delivery.Module):
                    self.ariane.module_service.update_arianenode_lists(p)
                else:
                    self.ariane.module_service.update_arianenode_lists(p)
                s.version = "45767"
                s.save()
                for sf in s.list_files:
                    if sf.type in ["json_build", "json_dist", "json_plugin_dist", "pom_dist", "json_git_repos", "plan"]:
                        self.assertTrue(sf.version in sf.name)

    def test_ariane_service(self):
        mod = self.ariane.find_without_label(self.mod2.get_properties())
        print(mod)
        mod.name = "gooya"
        mod.save()

    def test_module_delete(self):
        assert self.sub in self.mod.list_module
        self.sub.delete()

        notfound = self.ariane.module_service.find(self.sub)
        self.assertIsNone(notfound)

    def test_component_delete(self):
        assert self.mod2 in self.distrib.list_component
        self.mod2.delete()

        notfound = self.ariane.component_service.find(self.mod2)
        self.assertIsNone(notfound)

    def test_plugin_delete(self):
        assert self.plugin in [plugin["Plugin"] for plugin in self.distrib.list_plugin]
        self.plugin.delete()

        notfound = self.ariane.component_service.find(self.plugin)
        self.assertIsNone(notfound)

    def test_distrib_delete(self):
        self.distrib2 = ariane_delivery.Distribution("echinopsii", "0.7.0")
        self.distrib2.save()
        found = self.ariane.distribution_service.find(self.distrib2)
        self.assertIsNotNone(found)
        self.assertEqual(found[0], self.distrib2)

        self.distrib2.delete()
        notfound = self.ariane.distribution_service.find(self.distrib2)
        self.assertIsNone(notfound)

        self.distrib.delete()
        d = self.ariane.distribution_service.get_all()
        self.assertIsNone(d)

    def test_delete_error(self):
        mymod = ariane_delivery.Component("def", "epic")
        mymod.delete()

    def test_delete_after_import(self):
        self.ariane.delete_all()
        create_db_file("inputs/create_0.6.3.txt")
        d = self.ariane.distribution_service.get_unique({"version": "0.6.3"})
        d.delete()

    def test_delete_all(self):
        self.ariane.delete_all()
        self.assertIsNone(self.ariane.distribution_service.find({"nID": 1}))
        self.assertIsNone(self.ariane.component_service.find({"nID": 1}))
        self.assertIsNone(self.ariane.plugin_service.find({"nID": 1}))
        self.assertIsNone(self.ariane.module_service.find({"nID": 1}))
        self.assertIsNone(self.ariane.module_service.find({"nID": 1}))

    def notest_add_error(self):
        A = ariane_delivery.Component("A", "myversion")
        A.save()
        B = ariane_delivery.Module("B", "B_version")
        A.add_module(B)
        d = ariane_delivery.Distribution("d", "epic")
        A.add_module(d)

    def export_eachfile(self):
        self.ariane.delete_all()

        def import_all():
            create_db_file('inputs/create_0.6.4-SNAPSHOT.txt')
            create_db_file('inputs/create_0.6.3.txt')
            create_db_file('inputs/create_0.6.2.txt')
            create_db_file('inputs/create_0.6.1.txt')
            create_db_file('inputs/create_0.6.0.txt')
            create_db_file('inputs/create_0.5.3.txt')
            create_db_file('inputs/create_0.5.2.txt')
            create_db_file('inputs/create_0.5.1.txt')
            create_db_file('inputs/create_0.5.0.txt')
        import_all()
        print(self.ariane.check_uniqueness())
        dists = self.ariane.distribution_service.get_all()
        versions = [d.version for d in dists]
        for v in versions:
            for d in dists:
                if d.version != v:
                    d.delete()
            os.system("/ECHINOPSII/srenia/neo4j-community-2.2.3/bin/neo4j-shell -c dump > "
                      "/ECHINOPSII/srenia/ariane.community.relmgr/bootstrap/dependency_db/distrib_"+v+".cypher")
            import_all()
            dists = self.ariane.distribution_service.get_all()

    def long_test_export_eachfile(self):
        self.export_eachfile()

    def notest_import_for_UI(self):
        self.ariane.delete_all()
        create_db_file('inputs/create_0.6.4-SNAPSHOT.txt')
        create_db_file('inputs/create_0.6.3.txt')
        create_db_file('inputs/create_0.6.1.txt')
        # create_db_file('inputs/create_0.6.4_test.txt')
        d = self.ariane.distribution_service.get_unique({"version": "0.6.3"})
        p = ariane_delivery.Plugin("Gyoza", "Nip2.0")
        p.add_file(ariane_delivery.FileNode("gyoFile", "pom", "2.0", "/gyoza/files"))
        subpar = ariane_delivery.Module('Papu', 'Daddy', "net.dady", "net.dady.papu")
        subpar2 = ariane_delivery.Module('Yapu', 'Daddy', 'net.dady.papu', 'net.dady.papu.yapu')
        subpar2.add_module(ariane_delivery.Module('aaa', "2", "r.2", "r.2.aaa"))
        subpar2.add_module(ariane_delivery.Module('bbb', '2', "r.2", "r.2.bbb"))
        subpar.add_module(subpar2)
        subpar.add_module(ariane_delivery.Module('ciao', 'beborn', 'ciao.su', 'ciao.su.ciao'))
        p.add_module(subpar)
        p.add_module(ariane_delivery.Module('Suchi', 'NipponDaisuki', "net.nippondaisuki", "net.nippondaisuki.suchi"))
        p.save()
        d.add_plugin(p)

    def cypher_test_import(self):
        self.ariane.delete_all()
        create_db_file('inputs/create_0.5.0.txt')
        create_db_file('inputs/create_0.5.1.txt')
        create_db_file('inputs/create_0.5.2.txt')
        create_db_file('inputs/create_0.5.3.txt')
        create_db_file('inputs/create_0.6.0.txt')
        create_db_file('inputs/create_0.6.1.txt')
        create_db_file('inputs/create_0.6.2.txt')
        create_db_file('inputs/create_0.6.3.txt')
        create_db_file('inputs/create_0.6.4-SNAPSHOT.txt')
        os.system("/ECHINOPSII/srenia/neo4j-community-2.2.3/bin/neo4j-shell -c dump > "
                  "/ECHINOPSII/srenia/ariane.community.relmgr/bootstrap/dependency_db/all.cypher")

    def notest_export_new_distrib(self):
        os.system("/home/ikito/ECHINOPSII/srenia/neo4j-community-2.2.6/bin/neo4j-shell -c dump > "
                  "/home/ikito/ECHINOPSII/srenia/ariane.community.relmgr/bootstrap/dependency_db/all.cypher")

    def rel_test_copy_distrib(self):
        self.ariane.delete_all()
        create_db_file('inputs/create_0.6.3.txt')
        count = self.ariane.graph_dao.count("Node")
        d = self.ariane.distribution_service.get_unique({"version": "0.6.3"})
        self.assertTrue(isinstance(d, ariane_delivery.Distribution))
        cd = ariane_delivery.DistributionService.copy_distrib(d)
        self.assertTrue(self.ariane.check_uniqueness())
        dlist = self.ariane.distribution_service.find({"version": "0.6.3"})
        self.assertEqual(len(dlist), 2)
        d = dlist[0]
        d2 = dlist[1]
        self.assertTrue(isinstance(d, ariane_delivery.Distribution))
        self.assertTrue(isinstance(d2, ariane_delivery.Distribution))
        self.assertNotEqual(d, d2)
        count2 = self.ariane.graph_dao.count("Node")
        self.assertEqual(2*count, count2)

    def notest_credibility(self):
        args = {"login": "neo4j", "password":"admin", "type": "neo4j"}
        ariane = ariane_delivery.DeliveryTree(args)
        dist_srv = ariane_delivery.DistributionService()
        print(ariane.distribution_service)
        print(ariane_delivery.DeliveryTree.distribution_service)
        files = dist_srv.get_files(self.mod)
        print(files)
        distribs = ariane_delivery.DeliveryTree.distribution_service.get_all()
        print(distribs)

    def notest_image(self):
        self.ariane.delete_all()
        dist = ariane_delivery.Distribution("community", "0.5.2")
        mod = ariane_delivery.Component("idm", "0.1.0")
        mod2 = ariane_delivery.Component("mapping", "0.2.0")
        p = ariane_delivery.Plugin("RabbitMQ", "0.3.0")
        sub = ariane_delivery.Module("base", "0.1.0")
        sub2 = ariane_delivery.Module("wat", "0.1.0")
        sub2.add_file(ariane_delivery.FileNode("pom", "pom", "0.1.1", "/a"))
        subpar = ariane_delivery.Module("par", "0.1.0")
        subpar.add_module(sub)
        mod2.add_module(subpar)
        mod.add_module(sub2)
        mod.add_component_dependency({"component": mod2, "version_min":"0.1.0", "version_max": "0.7.0"})
        dist.add_component(mod)
        dist.add_component(mod2)
        dist.add_plugin(p)
        dist.save()

        # mod = ariane_delivery.component("component_1", "0.1.1")
        # sub = ariane_delivery.Module("Sub_1", "0.1.1")
        # mod.add_module(sub)
        # mod.save()

    def notest_correct(self):
        self.ariane.delete_all()
        os.system("/ECHINOPSII/srenia/neo4j-community-2.2.3/bin/neo4j-shell -file "
                  "/ECHINOPSII/srenia/ariane.community.relmgr/bootstrap/dependency_db/all.cypher")
        dists = self.ariane.distribution_service.get_all()
        for dist in dists:
            modules = self.ariane.component_service.get_all(dist)
            mod = [m for m in modules if m.name == "installer"][0]
            self.ariane.component_service.update_arianenode_lists(mod)
            for mf in mod.list_files:
                if mf.type == "pom":
                    mf.delete()
                    break
            sub = mod.list_module[0]
            sub.delete()
            mod.version = dist.version
            mod.save()
            print("DONE")
        os.system("/ECHINOPSII/srenia/neo4j-community-2.2.3/bin/neo4j-shell -c dump > "
                  "/ECHINOPSII/srenia/ariane.community.relmgr/bootstrap/dependency_db/all.cypher")

    # def test_maxnid(self):
    #     self.ariane.delete_all()
    #     os.system("/ECHINOPSII/srenia/neo4j-community-2.2.3/bin/neo4j-shell -file "
    #               "/ECHINOPSII/srenia/ariane.community.relmgr/bootstrap/dependency_db/all.cypher")
    #     id = self.ariane.graph_dao.get_max_nid()
    #     dist = self.ariane.distribution_service.get_unique({"version": "0.6.4-SNAPSHOT"})
    #     print(id, dist.id)