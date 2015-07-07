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

        related_nodes = ariane.submodule_service.get_related_nodes(sub)
        print("test_related_nodes:", related_nodes)
        related_nodes = ariane.submodule_service.get_related_nodes([sub, sub2])
        print("test_related_nodes:", related_nodes)
        # print("list submod: ", listsubmod)
        #.get_node(** distrib.get_node())
        # sub4 = ariane_delivery.SubModule("blob", "0.46", "car", "blabla.car")
        # mod2.append(sub4)
        # mod.delete()
        # mod2.delete()

        # print(distrib.list_plugin, distrib.list_relation)
        # sub3.delete()
        # sub2.delete()
        # print(distrib.list_plugin, distrib.list_relation)
        # mod.delete()
        # distrib.delete()
    # def test_save_node(self):
    #     neoDao = daoFabric.DaoFabric.new_neo_dao("neo4j", "admin")
    #     neoDao.delete_all()
    #
    #     node = ariane_delivery.Module("waza", "0.7", "blum")
    #     neoDao.save_node(node)
    #
    #     listnode = neoDao.get_node_property("Module", **{"name": "waza"})
    #     node = listnode[0]
    #     node.name = "newname"
    #     neoDao.save_node(node)

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

