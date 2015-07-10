from ariane_deliverytool.DAO import ariane_delivery
import unittest

__author__ = 'stanrenia'

class AppTest(unittest.TestCase):
# TODO test notifing methods

    def setUp(self):
        # Init variables:
        args = {"login": "neo4j", "password":"admin", "type": "neo4j"}
        self.ariane = ariane_delivery.ArianeDeliveryService(args)
        self.sub = ariane_delivery.SubModule("arti", "0.2", "oyo", "oyo.arti")
        self.sub2 = ariane_delivery.SubModule("marti", "0.2", "aya", "aya.marti")
        self.mod = ariane_delivery.Module("My", "0.2.2", "other")
        self.mod2 = ariane_delivery.Module("idm", "0.3.2", "core")
        self.plugin = ariane_delivery.Plugin("RabbitMQ", "0.2.2")
        self.sub3 = ariane_delivery.SubModule("rab", "0.3", "rabitt", "rab.rabitt")
        self.distrib = ariane_delivery.Distribution("community", "0.6.1")
        self.ariane.graph_dao.delete_all()
        self.mod.add_submodule(self.sub)
        self.mod.add_submodule(self.sub2)
        self.plugin.add_submodule(self.sub3)
        self.distrib.add_module(self.mod)
        self.distrib.add_module(self.mod2)
        self.distrib.add_plugin(self.plugin)
        self.distrib.save()

    def test_save_distrib(self):
        #   Save distribution
        my_distrib = self.ariane.distribution_service.get_unique({"name": "community"})

        self.assertEqual(self.distrib, my_distrib)

    def test_update_submodule(self):
        self.sub.version = "oyoyo"
        self.sub.save()
        my_sub = self.ariane.submodule_service.get_unique({"version": self.sub.version})

        self.assertEqual(self.sub.version, "oyoyo")
        self.assertEquals(self.sub, my_sub)

    def test_update_module(self):
        #   Save an updated module
        self.mod.version = "newmew"
        self.mod.save()
        my_mod = self.ariane.module_service.get_unique({"version": self.mod.version})

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

    def test_SubModuleService(self):
        #   Save a modified submodule
        self.sub2.groupId = "groupy"
        self.sub2.save()

        listsubmod = self.ariane.submodule_service.get_all(self.mod)
        #   SubModuleService
        #   find service method
        listfound = self.ariane.submodule_service.find({"name": "marti"})
        self.assertEqual(self.sub2, listfound[0])
        listfound = self.ariane.submodule_service.find({"name": "rab", "version": "0.3", "groupId": "rabitt",
                                                   "artifactId": "rab.rabitt", "nID": 5})
        self.assertEqual(self.sub3, listfound[0])

        listfound = self.ariane.submodule_service.find(self.sub2)
        self.assertEqual(self.sub2, listfound[0])

        listfound = self.ariane.submodule_service.find([self.sub, self.sub2, self.sub3])
        self.assertListEqual([self.sub, self.sub2, self.sub3], listfound)

        listfound = self.ariane.submodule_service.find({"version": "0.2"})
        self.assertEqual([self.sub, self.sub2], listfound)

        #   get_unique service method
        unique = self.ariane.submodule_service.get_unique({"name": "rab"})
        self.assertEqual(self.sub3, unique)

        unique = self.ariane.submodule_service.get_unique({"name": "bob"})
        self.assertIsNone(unique)

        unique = self.ariane.submodule_service.get_unique({"version": "0.2"})
        self.assertEqual(unique, 0)

        #   get_relations service method
        related_nodes = self.ariane.submodule_service.get_relations(self.sub)
        self.assertGreater(len(related_nodes), 0)
        for rel in related_nodes:
            self.assertIsInstance(rel, ariane_delivery.ArianeRelation)

        related_nodes = self.ariane.submodule_service.get_relations([self.sub, self.sub2])
        self.assertGreater(len(related_nodes), 1)
        for relation_list in related_nodes:
            for rel in relation_list:
                self.assertIsInstance(rel, ariane_delivery.ArianeRelation)

    def test_ModuleService(self):
        self.mod.version = "newmew"
        self.mod.save()

        #   ModuleService:
        listmod = self.ariane.module_service.get_all(self.distrib)
        self.assertGreater(len(listmod), 1)
        assert (self.mod in listmod) and (self.mod2 in listmod)

        #   find service method
        listfound = self.ariane.module_service.find({"name": "idm"})
        self.assertEqual(listfound[0], self.mod2)

        listfound = self.ariane.module_service.find({"name": "My", "version": "newmew", "type": "other"})
        self.assertEqual(listfound[0], self.mod)

        listfound = self.ariane.module_service.find(self.mod)
        self.assertEqual(listfound[0], self.mod)

        listfound = self.ariane.module_service.find(self.mod2)
        self.assertEqual(listfound[0], self.mod2)

        listfound = self.ariane.module_service.find([self.mod, self.mod2])
        assert (self.mod in listmod) and (self.mod2 in listmod)

        #       create new Module and add it to distrib
        self.mod3 = ariane_delivery.Module("portal", "0.3.2", "core")
        self.distrib.add_module(self.mod3)
        listfound = self.ariane.module_service.find({"version": "0.3.2"})

        self.assertGreater(len(listfound), 1)
        listfound = self.ariane.module_service.find(self.mod3)

        self.assertEqual(listfound[0], self.mod3)
        self.mod3.version = "yaya"
        self.mod3.save()
        listfound = self.ariane.module_service.find(self.mod3)
        self.assertEqual(self.mod3.version, listfound[0].version)

        listmod = self.ariane.module_service.get_all(self.distrib)
        self.assertGreater(len(listmod), 2)

        #   get_unique service method
        unique = self.ariane.module_service.get_unique({"name": "idm"})
        self.assertEqual(self.mod2, unique)

        unique = self.ariane.module_service.get_unique({"name": "bob"})
        self.assertIsNone(unique)

        self.mod3.version = "0.3.2"
        self.mod3.save()
        unique = self.ariane.module_service.get_unique({"version": "0.3.2"})
        self.assertEqual(unique, 0)

        #   get_relations
        self.mod.add_module_dependency(**{"module": self.mod2, "version_min": "0.3.0", "version_max": "0.4.0"})
        related_nodes = self.ariane.module_service.get_relations(self.mod)
        for rel in related_nodes:
            self.assertIsInstance(rel, ariane_delivery.ArianeRelation)

    def test_PluginService(self):
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

    def test_submodule_delete(self):
        assert self.sub in self.mod.list_submod
        self.sub.delete()
        assert self.sub not in self.mod.list_submod

        notfound = self.ariane.submodule_service.find(self.sub)
        self.assertIsNone(notfound)

    def test_module_delete(self):
        assert self.mod2 in self.distrib.list_module
        self.mod2.delete()
        assert self.mod2 not in self.distrib.list_module

        notfound = self.ariane.module_service.find(self.mod2)
        self.assertIsNone(notfound)

    def test_plugin_delete(self):
        assert self.plugin in self.distrib.list_plugin
        self.plugin.delete()
        assert self.plugin not in self.distrib.list_plugin

        notfound = self.ariane.module_service.find(self.plugin)
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

