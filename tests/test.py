from ariane_deliverytool.DAO import ariane_delivery
import unittest

__author__ = 'stanrenia'

class AppTest(unittest.TestCase):

    def test_save(self):
        args = {"login": "neo4j", "password":"admin", "type": "neo4j"}
        ariane = ariane_delivery.ArianeDeliveryService(args)
        ariane.graph_dao_self.delete_all()
        sub = ariane_delivery.SubModule("arti", "0.2", "oyo", "oyo.arti")
        sub2 = ariane_delivery.SubModule("marti", "0.2", "aya", "aya.marti")
        mod = ariane_delivery.Module("My", "0.2.2", "other")
        mod.add_submodule(sub)
        mod.add_submodule(sub2)
        mod2 = ariane_delivery.Module("idm", "0.3.2", "core")
        plugin = ariane_delivery.Plugin("RabbitMQ", "0.2.2")
        sub3 = ariane_delivery.SubModule("rab", "0.3", "rabitt", "rab.rabitt")
        plugin.add_submodule(sub3)
        distrib = ariane_delivery.Distribution("community", "0.6.1")
        distrib.add_Module(mod)
        distrib.add_Module(mod2)
        distrib.add_Plugin(plugin)
        distrib.save()

        mod.version = "newmew"
        mod.save()
        mod.add_dependency(**{"module": mod2, "version_min": "0.3.0", "version_max": "0.4.0"})

        distrib2 = ariane_delivery.Distribution("echinopsii", "0.7.0")
        distrib2.save()
        listdistrib = ariane.distribution_service.get_all()
        print("list distrib: ", listdistrib)

        sub2.groupId = "groupy"
        sub2.save()
        listsubmod = ariane.submodule_service.get_all(mod)
        print("list submod: ", listsubmod)
        listfound = ariane.submodule_service.find({"name": "marti"})
        print("list found: ", listfound)
        listfound = ariane.submodule_service.find({"name": "rab", "version": "0.3", "groupId": "rabitt",
                                                   "artifactId": "rab.rabitt", "nID": 5})
        print("list found: ", listfound)
        listfound = ariane.submodule_service.find(sub2)
        print("list found: ", listfound)
        listfound = ariane.submodule_service.find([sub, sub2, sub3])
        print("list found: ", listfound)
        listfound = ariane.submodule_service.find({"version": "0.2"})
        print("list found: ", listfound)

        unique = ariane.submodule_service.get_unique({"name": "rab"})
        print("unique: ", unique)
        unique = ariane.submodule_service.get_unique({"name": "bob"})
        print("unique: ", unique)
        unique = ariane.submodule_service.get_unique({"version": "0.2"})
        print("unique: ", unique)

        related_nodes = ariane.submodule_service.get_relations(sub)
        print("test_related_nodes:", related_nodes)
        related_nodes = ariane.submodule_service.get_relations([sub, sub2])
        print("test_related_nodes:", related_nodes)

        print("")
        # ModuleService():
        print("ModuleService: ")
        listmod = ariane.module_service.get_all(distrib)
        print("listmodule: ", listmod)

        listfound = ariane.module_service.find({"name": "idm"})
        print("list found: ", listfound)
        listfound = ariane.module_service.find({"name": "My", "version": "newmew", "type": "other"})
        print("list found: ", listfound)
        listfound = ariane.module_service.find(mod)
        print("list found: ", listfound)
        listfound = ariane.module_service.find(mod2)
        print("list found: ", listfound)
        listfound = ariane.module_service.find([mod, mod2])
        print("list found: ", listfound)
        mod3 = ariane_delivery.Module("portal", "0.3.2", "core")
        distrib.add_Module(mod3)
        listfound = ariane.module_service.find({"version": "0.3.2"})
        print("list found: ", listfound)
        listfound = ariane.module_service.find(mod3)
        print("list found: ", listfound)

        listmod = ariane.module_service.get_all(distrib)
        print("listmodule: ", listmod)

        unique = ariane.module_service.get_unique({"name": "idm"})
        print("unique: ", unique)
        unique = ariane.module_service.get_unique({"name": "bob"})
        print("unique: ", unique)

        unique = ariane.module_service.get_unique({"version": "0.3.2"})
        print("unique: ", unique)

        related_nodes = ariane.module_service.get_relations(mod)
        print("related: ", related_nodes)

        print("")
        # PluginService():
        print("PluginService: ")
        listplug = ariane.plugin_service.get_all(distrib)
        print("listmodule: ", listplug)

        listfound = ariane.plugin_service.find({"name": "RabbitMQ"})
        print("list found: ", listfound)
        listfound = ariane.plugin_service.find({"name": "RabbitMQ", "version": "0.2.2"})
        print("list found: ", listfound)
        listfound = ariane.plugin_service.find(plugin)
        print("list found: ", listfound)
        plugin2 = ariane_delivery.Plugin("Daffy", "Duck")
        distrib.add_Plugin(plugin2)
        listfound = ariane.plugin_service.find([plugin, plugin2])
        print("list found: ", listfound)
        listfound = ariane.plugin_service.find({"version": "0.2.2"})
        print("list found: ", listfound)

        listplug = ariane.plugin_service.get_all(distrib)
        print("listplug: ", listplug)

        plugin3 = ariane_delivery.Plugin("Buggz", "Duck")
        distrib.add_Plugin(plugin3)
        unique = ariane.plugin_service.get_unique({"name": "Daffy"})
        print("unique: ", unique)
        unique = ariane.plugin_service.get_unique({"name": "bob"})
        print("unique: ", unique)
        unique = ariane.plugin_service.get_unique({"version": "Duck"})
        print("unique: ", unique)
        plugin2.version = "Ducker"
        plugin2.save()
        listplug = ariane.plugin_service.get_all(distrib)
        print("listmodule: ", listplug)
        related_nodes = ariane.plugin_service.get_relations(plugin)
        print("related: ", related_nodes)

    # def test_ariane_node(self):
    #     args = {"login": "neo4j", "password":"admin", "type": "neo4j"}
    #     ariane = ariane_deliveryArianeDeliveryService(args)
    #     ariane.graph_dao_self.delete_all()
    #     sub = ariane_delivery.SubModule("arti", "0.2", "oyo", "oyo.arti")
    #     sub2 = ariane_delivery.SubModule("marti", "0.2", "aya", "aya.marti")
    #     mod = ariane_delivery.Module("My", "0.2.2", "other")
    #     mod.add_submodule(sub)
    #     mod.add_submodule(sub2)
    #     mod2 = ariane_delivery.Module("idm", "0.3.2", "core")
    #     plugin = ariane_delivery.Plugin("RabbitMQ", "0.2.2")
    #     sub3 = ariane_delivery.SubModule("rab", "0.3", "rabitt", "rab.rabitt")
    #     plugin.add_submodule(sub3)
    #     distrib = ariane_delivery.Distribution("community", "0.6.1")
    #     distrib.add_Module(mod)
    #     distrib.add_Module(mod2)
    #     distrib.add_Plugin(plugin)
    #     distrib.save()
    #
    #     sub4 = ariane_delivery.SubModule("blob", "0.46", "car", "blabla.car")
    #     mod2.append(sub4)
    #     mod.delete()
        # mod2.delete()
        # print(distrib.list_plugin, distrib.list_relation)
        # sub3.delete()
        # sub2.delete()
        # print(distrib.list_plugin, distrib.list_relation)
        # distrib.delete()

    # def test_create_db(self):
    #     neoDao = daoFabric.DaoFabric.new_neo_dao("neo4j", "admin")
    #     neoDao.delete_all()
    #     neoDao.create_db_neo("inputs/create_0.6.1.txt")
    #     neoDao.create_db_neo("inputs/create_0.6.2.txt")
    #     nodes = neoDao.get_node_property("Module", **{"version": "0.6.2"})
    #     print("GET: ", nodes, type(nodes))
    #     ret = neoDao.set_node_property(nodes, **{"version": "0.6.3"})
    #     print("SET: ", ret, type(ret))
    #     nodes = neoDao.get_node_property("Module", **{"version": "0.6.2"})
    #     print("GET: ", nodes, type(nodes))
    #     nodes = neoDao.get_node_property("Module", **{"version": "0.6.3"})
    #     print("GET: ", nodes, type(nodes))
    #     neoDao.set_node_property(nodes, **{"version": "0.6.2"})

