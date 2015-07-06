from neoDAO import module_cls, daoFabric
import unittest

__author__ = 'stanrenia'

class AppTest(unittest.TestCase):

    def test_save(self):
        fabric = daoFabric.DaoFabric("neo4j", "admin")
        neodao = fabric.get_neodao_instance()
        neodao.delete_all()
        sub = module_cls.SubModule("arti", "0.1", "oyo", "oyo.arti")
        sub2 = module_cls.SubModule("marti", "0.2", "aya", "aya.marti")
        mod = module_cls.Module("My", "0.2.2", "other")
        mod.add_submodule(sub)
        mod.add_submodule(sub2)
        mod2 = module_cls.Module("idm", "0.3.2", "core")
        plugin = module_cls.Plugin("RabbitMQ", "0.2.2")
        sub3 = module_cls.SubModule("rab", "0.3", "rabitt", "rab.rabitt")
        plugin.add_submodule(sub3)
        distrib = module_cls.Distribution("community", "0.6.1")
        distrib.add_Module(mod)
        distrib.add_Module(mod2)
        distrib.add_Plugin(plugin)
        distrib.save()

        # TODO : get Node
        mod.version = "newmew"
        mod.save()
        mod.add_dependency(**{"module": mod2, "version_min": "0.3.0", "version_max": "0.4.0"})
        neodao.get_node(** distrib.get_node())
        # sub4 = module_cls.SubModule("blob", "0.46", "car", "blabla.car")
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
    #     node = module_cls.Module("waza", "0.7", "blum")
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

