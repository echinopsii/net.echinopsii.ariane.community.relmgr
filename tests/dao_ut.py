from ariane_reltreelib.dao import ariane_delivery
import unittest, os
from create_db_from_file import create_db_file

__author__ = 'stanrenia'

class AppTest(unittest.TestCase):
    # TODO test SubModuleParent

    def setUp(self):
        # Init variables:
        args = {"login": "neo4j", "password":"admin", "type": "neo4j"}
        self.ariane = ariane_delivery.DeliveryTree(args)
        self.ariane.delete_all()
        self.sub = ariane_delivery.SubModule("arti", "0.2", "oyo", "oyo.arti")
        self.sub2 = ariane_delivery.SubModule("marti", "0.2", "aya", "aya.marti")
        self.sub2.add_file(ariane_delivery.FileNode("ael", "ald", "aeda", "/dad/ae"))
        self.subpar = ariane_delivery.SubModuleParent("papa", "0.3")
        self.sub4 = ariane_delivery.SubModule("fils", "0.3", "son", "son.fils")
        self.mod = ariane_delivery.Module("My", "0.2.2", "other")
        self.mod2 = ariane_delivery.Module("idm", "0.3.2", "core")
        self.plugin = ariane_delivery.Plugin("RabbitMQ", "0.2.2")
        self.sub3 = ariane_delivery.SubModule("rab", "0.3", "rabitt", "rab.rabitt")
        self.distrib = ariane_delivery.Distribution("community", "0.6.1")
        self.subpar.add_submodule(self.sub4)
        self.subpar.add_file(ariane_delivery.FileNode("lxla", "al", "00.", "/ala/eer"))
        self.mod.add_submodule(self.subpar)
        self.mod.add_submodule(self.sub)
        self.mod.add_submodule(self.sub2)
        self.mod.add_file(ariane_delivery.FileNode("bbb.xml", "xml", "0.1", "/AA"))
        self.plugin.add_submodule(self.sub3)
        self.plugin.add_file(ariane_delivery.FileNode("plugFile", "xml", ":", "/aez/fef"))
        self.fnode = ariane_delivery.FileNode("dodo.json", "json", "0.6.2", "/la/lala")
        self.distrib.add_file(self.fnode)
        self.distrib.add_module(self.mod)
        self.distrib.add_module(self.mod2)
        self.distrib.add_plugin(self.plugin)
        self.distrib.save()

    def tearDown(self):
        self.assertTrue(self.ariane.check_uniqueness())

    def test_save_file(self):
        fnode_dodo = ariane_delivery.FileNode("dodo.json", "json", "0.6.2", "/la/lala")
        self.mod.add_file(fnode_dodo)
        list_fnode = self.ariane.get_files(self.mod)
        self.assertEqual(len(list_fnode), 2)

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

    def test_update_relation(self):
        mod_d = ariane_delivery.Module('dedo', "0.5.6", "test")
        mod_d.save()
        mod_d.add_module_dependency({"module": self.mod2, "version_min": "", "version_max": ""})
        rel = self.ariane.get_relation_between(mod_d, self.mod2)
        rel.properties["version_min"] = "007"
        rel.save()
        self.ariane.module_service.find(mod_d)
        # TODO test avec d'autres method py2neo
        rel = self.ariane.get_relation_between(mod_d, self.mod2)
        self.assertEqual(rel.properties["version_min"], "007")
        mod_d.delete()
        self.assertIsNone(self.ariane.module_service.find(mod_d))

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
                                                        "artifactId": "rab.rabitt"})
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

        unique = self.ariane.submodule_service.get_unique({"nID": self.sub3.id})
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

    def test_SubModuleParentService(self):
        #   Save a modified submodule
        self.subpar.version = "0.4"
        self.subpar.save()

        listsubmod = self.ariane.submodule_parent_service.get_all(self.mod)
        self.assertEqual(self.subpar, listsubmod[0])
        listfound = self.ariane.submodule_parent_service.find({"name": "papa"})
        self.assertEqual(self.subpar, listfound[0])

        listfound = self.ariane.submodule_parent_service.find(self.subpar)
        self.assertEqual(self.subpar, listfound[0])

        listfound = self.ariane.submodule_parent_service.find({"version": "0.4"})
        self.assertEqual(self.subpar, listfound[0])

        #   get_unique service method
        unique = self.ariane.submodule_parent_service.get_unique({"name": "papa"})
        self.assertEqual(self.subpar, unique)

        unique = self.ariane.submodule_parent_service.get_unique({"name": "bob"})
        self.assertIsNone(unique)

        self.mod2.add_submodule(ariane_delivery.SubModuleParent("daddy", "0.4"))

        unique = self.ariane.submodule_parent_service.get_unique({"version": "0.4"})
        self.assertEqual(unique, 0)

        #   get_relations service method
        related_nodes = self.ariane.submodule_parent_service.get_relations(self.subpar)
        self.assertGreater(len(related_nodes), 0)
        for rel in related_nodes:
            self.assertIsInstance(rel, ariane_delivery.ArianeRelation)

    def test_ModuleService(self):
        self.mod.version = "newmew"
        self.mod.save()

        #   ModuleService:
        listmod = self.ariane.module_service.get_all(self.distrib)
        self.assertGreater(len(listmod), 1)
        assert (self.mod in listmod) and (self.mod2 in listmod)

        dist = self.ariane.distribution_service.get_unique({"version": "0.6.1"})
        print(self.distrib, dist)
        listmod = self.ariane.module_service.get_all(dist)
        self.assertGreater(len(listmod), 1)
        assert (self.mod in listmod) and (self.mod2 in listmod)

        #   find service method
        listfound = self.ariane.module_service.find({"name": "idm"})
        self.assertEqual(listfound[0], self.mod2)

        listfound = self.ariane.module_service.find(self.plugin)

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

        sub = ariane_delivery.SubModule("toto", "tata")
        self.mod.add_submodule(sub)
        self.mod.save()
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
        self.mod.add_module_dependency({"module": self.mod2, "version_min": "0.3.0", "version_max": "0.4.0"})
        related_nodes = self.ariane.module_service.get_relations(self.mod)
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
        self.distrib.add_module(ariane_delivery.Module("Ari", "Orbital"))
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

    def test_ariane_service(self):
        mod = self.ariane.find_without_label(self.mod2.get_properties())
        print(mod)
        mod.name = "gooya"
        mod.save()

    def test_submodule_delete(self):
        assert self.sub in self.mod.list_submod
        self.sub.delete()

        notfound = self.ariane.submodule_service.find(self.sub)
        self.assertIsNone(notfound)

    def test_module_delete(self):
        assert self.mod2 in self.distrib.list_module
        self.mod2.delete()

        notfound = self.ariane.module_service.find(self.mod2)
        self.assertIsNone(notfound)

    def test_plugin_delete(self):
        assert self.plugin in [plugin["Plugin"] for plugin in self.distrib.list_plugin]
        self.plugin.delete()

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

    def test_delete_error(self):
        mymod = ariane_delivery.Module("def", "epic")
        mymod.delete()

    def test_delete_after_import(self):
        self.ariane.delete_all()
        create_db_file("inputs/create_0.6.3.txt")
        d = self.ariane.distribution_service.get_unique({"version": "0.6.3"})
        d.delete()

    def test_delete_all(self):
        self.ariane.delete_all()
        self.assertIsNone(self.ariane.distribution_service.find({"nID": 1}))
        self.assertIsNone(self.ariane.module_service.find({"nID": 1}))
        self.assertIsNone(self.ariane.plugin_service.find({"nID": 1}))
        self.assertIsNone(self.ariane.submodule_service.find({"nID": 1}))
        self.assertIsNone(self.ariane.submodule_parent_service.find({"nID": 1}))

    def test_add_error(self):
        A = ariane_delivery.Module("A", "myversion")
        A.save()
        B = ariane_delivery.SubModule("B", "B_version")
        A.add_submodule(B)
        d = ariane_delivery.Distribution("d", "epic")
        A.add_submodule(d)

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

    def test_export_eachfile(self):
        self.export_eachfile()

    def test_export_all(self):
        self.ariane.delete_all()
        create_db_file('inputs/create_0.6.4-SNAPSHOT.txt')
        create_db_file('inputs/create_0.6.3.txt')
        create_db_file('inputs/create_0.6.2.txt')
        create_db_file('inputs/create_0.6.1.txt')
        create_db_file('inputs/create_0.6.0.txt')
        create_db_file('inputs/create_0.5.3.txt')
        create_db_file('inputs/create_0.5.2.txt')
        create_db_file('inputs/create_0.5.1.txt')
        create_db_file('inputs/create_0.5.0.txt')

        os.system("/ECHINOPSII/srenia/neo4j-community-2.2.3/bin/neo4j-shell -c dump > "
                  "/ECHINOPSII/srenia/ariane.community.relmgr/bootstrap/dependency_db/alldistrib.cypher")

    def test_export(self):
        v = "0.6.4-SNAPSHOT"
        os.system("/ECHINOPSII/srenia/neo4j-community-2.2.3/bin/neo4j-shell -c dump > "
                  "/ECHINOPSII/srenia/ariane.community.relmgr/bootstrap/dependency_db/distrib_"+v+".cypher")

    def test_import_for_UI(self):
        self.ariane.delete_all()
        create_db_file('inputs/create_0.6.4-SNAPSHOT.txt')
        create_db_file('inputs/create_0.6.3.txt')
        create_db_file('inputs/create_0.6.1.txt')
        # create_db_file('inputs/create_0.6.4_test.txt')
        d = self.ariane.distribution_service.get_unique({"version": "0.6.3"})
        p = ariane_delivery.Plugin("Gyoza", "Nip2.0")
        p.add_file(ariane_delivery.FileNode("gyoFile", "pom", "2.0", "/gyoza/files"))
        subpar = ariane_delivery.SubModuleParent('Papu', 'Daddy', "net.dady", "net.dady.papu")
        subpar2 = ariane_delivery.SubModuleParent('Yapu', 'Daddy', 'net.dady.papu', 'net.dady.papu.yapu')
        subpar2.add_submodule(ariane_delivery.SubModule('aaa', "2", "r.2", "r.2.aaa"))
        subpar2.add_submodule(ariane_delivery.SubModule('bbb', '2', "r.2", "r.2.bbb"))
        subpar.add_submodule(subpar2)
        subpar.add_submodule(ariane_delivery.SubModule('ciao', 'beborn', 'ciao.su', 'ciao.su.ciao'))
        p.add_submodule(subpar)
        p.add_submodule(ariane_delivery.SubModule('Suchi', 'NipponDaisuki', "net.nippondaisuki", "net.nippondaisuki.suchi"))
        p.save()
        d.add_plugin(p)

    def test_import_all_cypher(self):
        self.ariane.delete_all()
        os.system("/ECHINOPSII/srenia/neo4j-community-2.2.3/bin/neo4j-shell -file "
                  "/ECHINOPSII/srenia/ariane.community.relmgr/bootstrap/dependency_db/alldistrib.cypher")