from jinja2 import Environment, PackageLoader, TemplateNotFound, BaseLoader
from ariane_deliverytool.dao import ariane_delivery
import json
from os.path import join, exists, getmtime, realpath
from os import getcwd
__author__ = 'stanrenia'

class MyLoader(BaseLoader):

    def __init__(self, path):
        self.path = path

    def get_source(self, environment, template):
        path = join(self.path, template)
        if not exists(path):
            raise TemplateNotFound(template)
        mtime = getmtime(path)
        with open(path) as f:
            source = f.read()
        return source, path, lambda: mtime == getmtime(path)

class Generator(object):
    ariane = None
    dir_output = None

    # TODO Modifiy MyLoader path when realese.
    def __init__(self, ariane_delivery_service, output_directory):
        self.env = Environment(loader=MyLoader('/Users/stanrenia/py_neo4j_db/tests/templates'))
        Generator.ariane = ariane_delivery_service
        Generator.dir_output = output_directory
        self.modules_dict = {}
        self.plugin_dict = {}
        self.distrib_dict = {}
        self.exception_sub_plan = []
        self.exception_sub_lib = []
        self.exception_mod_file_gen = []
        self.extension_sub_lib = []
        self.exception_vsh = []

    def get_distrib(self, version):
        # if version not in self.distrib_dict.keys():
        self.distrib_dict[version] = self.ariane.distribution_service.get_unique({"version": version})
        return self.distrib_dict[version]

    def get_modules_list(self, version):
        if version not in self.modules_dict.keys():
            self.modules_dict[version] = self.ariane.module_service.get_all(self.get_distrib(version))
        return self.modules_dict[version]

    def get_plugins_list(self, version):
        if version not in self.plugin_dict.keys():
            self.plugin_dict[version] = self.ariane.plugin_service.get_all(self.get_distrib(version))
        return self.plugin_dict[version]

    def get_submodule_lib_extensions(self):
        if self.extension_sub_lib.__len__() == 0:
            with open('inputs/submodule_lib_extensions.json', 'r') as data_file:
                self.extension_sub_lib = json.load(data_file)
        return self.extension_sub_lib

    def get_submodule_lib_exceptions(self):
        if self.exception_sub_lib.__len__() == 0:
            with open('inputs/submodule_lib_exceptions.json', 'r') as data_file:
                self.exception_sub_lib = json.load(data_file)
        return self.exception_sub_lib

    def get_submodule_plan_exceptions(self):
        if self.exception_sub_plan.__len__() == 0:
            with open('inputs/submodule_plan_exceptions.json', 'r') as data_file:
                self.exception_sub_plan = json.load(data_file)
        return self.exception_sub_plan

    def get_module_file_gen_exceptions(self):
        if self.exception_mod_file_gen.__len__() == 0:
            with open('inputs/module_file_gen_exceptions.json', 'r') as data_file:
                self.exception_mod_file_gen = json.load(data_file)
        return self.exception_mod_file_gen

    def get_vsh_exceptions(self):
        if self.exception_vsh.__len__() == 0:
            with open('inputs/module_vsh_exceptions.json', 'r') as data_file:
                self.exception_vsh = json.load(data_file)
        return self.exception_vsh

    def __make_vmin_vmax(self, version):
        v = version.split('.')
        v[-1] = '0'
        vmin = '.'.join(v)
        v[1] = str(int(v[1]) + 1)
        vmax = '.'.join(v)
        return vmin, vmax

    def generate_all_distribution(self, version):
        self.generate_distribution_files(version)
        self.generate_module_files(version)
        self.generate_plugin_files(version)

    def generate_distribution_files(self, version):
        distrib = self.get_distrib(version)
        dist_files = self.ariane.get_files(distrib)
        for df in dist_files:
            if df.type == "pom_dist":
                self.generate_pom_distrib(version, df)
            elif df.type == "json_dist":
                self.generate_json_dist(version, df)
            elif df.type == "json_plugins":
                self.generate_json_plugins(df)
            elif df.type == "json_plugin_dist":
                self.generate_json_plugin_dist(version, df)
            elif df.type == "git_repos":
                self.generate_git_repos_json(version, df)

    def generate_module_files(self, version):
        modules = self.get_modules_list(version)
        file_gen_exception = self.get_module_file_gen_exceptions()

        for mod in modules:
            if mod.name in file_gen_exception:
                continue
            mod.list_submod = self.ariane.submodule_service.get_all(mod)
            mod.list_submod.extend(self.ariane.submodule_parent_service.get_all(mod))
            self.ariane.module_service.get_relations(mod)
            mod_files = self.ariane.get_files(mod)
            for f in mod_files:
                if f.type == "plan":
                    self.generate_plan(mod, f, version)
                elif f.type == "json_build":
                    self.generate_lib_json(mod, f)
                elif f.type == "vsh":
                    self.generate_vsh_installer(modules.copy(), f)
                elif f.type == "pom":
                    grId, artId = self.__generate_pom_mod_plug(mod, f)

                    for sub in mod.list_submod:
                        s_grId, s_artId = self.__generate_pom_submodule(sub, grId, artId)
                        if type(sub) is ariane_delivery.SubModuleParent:
                            self.__generate_pom_subparent(sub, s_grId, s_artId)

    def generate_plugin_files(self, version):
        """ Generate all files for each plugin in the given distribution.
        :param version:
        :return:
        """
        plugins = self.get_plugins_list(version)

        for plug in plugins:
            plug.list_submod = self.ariane.submodule_service.get_all(plug)
            plug.list_submod.extend(self.ariane.submodule_parent_service.get_all(plug))
            self.ariane.plugin_service.get_relations(plug)
            plug_files = self.ariane.get_files(plug)
            for f in plug_files:
                if f.type == "plan":
                    self.generate_plan(plug, f, version)
                elif f.type == "json_build":
                    self.generate_lib_json(plug, f)
                elif f.type == "vsh":
                    self.generate_vsh_plugin(plug, f)
                elif f.type == "pom":
                    grId, artId  = self.__generate_pom_mod_plug(plug, f)
                    for sub in plug.list_submod:
                        s_grId, s_artId = self.__generate_pom_submodule(sub, grId, artId)
                        if type(sub) is ariane_delivery.SubModuleParent:
                            self.__generate_pom_subparent(sub, s_grId, s_artId)

    def generate_pom(self, mod_plug):
        """ Generate all poms (parent and children) for a given module or plugin.
        :param mod_plug: ariane_delivery.Module or ariane_delivery.Plugin object stored in database
        :return: Nothing
        """
        file_gen_exception = self.get_module_file_gen_exceptions()

        if mod_plug.name not in file_gen_exception:
            mod_plug.list_submod = self.ariane.submodule_service.get_all(mod_plug)
            mod_plug.list_submod.extend(self.ariane.submodule_parent_service.get_all(mod_plug))
            if type(mod_plug) is ariane_delivery.Module:
                self.ariane.module_service.get_relations(mod_plug)
            elif type(mod_plug) is ariane_delivery.Plugin:
                self.ariane.plugin_service.get_relations(mod_plug)

            mf = self.ariane.get_one_file(mod_plug, "pom")
            if mf.type == "pom":
                grId, artId = self.__generate_pom_mod_plug(mod_plug, mf)

                for sub in mod_plug.list_submod:
                    s_grId, s_artId = self.__generate_pom_submodule(sub, grId, artId)
                    if type(sub) is ariane_delivery.SubModuleParent:
                        self.__generate_pom_subparent(sub, s_grId, s_artId)

    def __generate_pom_submodule(self, sub, grId, artId):
        fpom = self.ariane.get_one_file(sub, 'pom')
        template = self.env.get_template(fpom.path + 'pom.xml.tpl')

        args = {"version": sub.version, "groupId": grId, "artifactId": artId, "name": sub.name}

        with open(self.dir_output+fpom.path+fpom.name, 'w') as target:
            target.write(template.render(args))

        groupId = artId
        artifactId = artId + '.' + sub.name

        return groupId, artifactId

    def __generate_pom_subparent(self, sub, grId, artId):
        sub.list_submod = self.ariane.submodule_service.get_all(sub)
        sub.list_submod.extend(self.ariane.submodule_parent_service.get_all(sub))
        for s in sub.list_submod:
            self.__generate_pom_submodule(s, grId, artId)
            if type(s) is ariane_delivery.SubModuleParent:
                self.__generate_pom_subparent(s, grId, artId)

    def __generate_pom_mod_plug(self, mod_plug, fpom):
        template = self.env.get_template(fpom.path + 'pom.xml.tpl')

        groupId = mod_plug.pom_attr + mod_plug.get_directory_name()
        groupId = str(groupId).replace('.'+mod_plug.name, '')
        artifactId = groupId + "." + mod_plug.name
        version = mod_plug.version
        packaging = "pom"

        args = {"groupId": groupId, "artifactId": artifactId, "version": version,
                "packaging": packaging, "modules": mod_plug.list_submod,
                "dependencies": mod_plug.list_module_dependency}

        with open(self.dir_output+fpom.path+fpom.name, 'w') as target:
            target.write(template.render(args))

        return groupId, artifactId

    def generate_pom_distrib(self, version, fpom):
        modules = self.get_modules_list(version)
        template = self.env.get_template(fpom.path + 'pom_distrib.xml.tpl')
        args = {"modules": modules, "version": version}
        with open(self.dir_output+fpom.path+fpom.name, 'w') as target:
            target.write(template.render(args))

    def generate_plan(self, mod_plug, fplan, version):
        sub_exceptions = self.get_submodule_plan_exceptions()
        snapshot = False
        if "SNAPSHOT" in version:
            version = "master.SNAPSHOT"
            snapshot = True

        template = self.env.get_template(fplan.path+"plan_"+mod_plug.name+"_"+version+"_template.xml.tpl")
        submodules = mod_plug.list_submod
        # Remove each submodule which is in exceptions list.
        # Note that if submodule is a SubModuleParent which has a SubModule to be excluded,
        # this is done in the module template.
        for s in submodules.copy():
            if s.name in sub_exceptions:
                submodules.remove(s)
        vmin, vmax = self.__make_vmin_vmax(mod_plug.version)
        if snapshot:
            m_version = str(mod_plug.version).replace("-", ".")
        else:
            m_version = mod_plug.version
        args = {"version": m_version, "module": mod_plug, "vmin": vmin, "vmax": vmax, "submodules": submodules}

        with open(self.dir_output+fplan.path+fplan.name, 'w') as target:
            target.write(template.render(args))

    def generate_json_plugin_dist(self, version, fjson):
        elements = self.get_plugins_list(version)
        dictio = {}

        for e in elements:
            key = e.get_directory_name()
            if "SNAPSHOT" in e.version:
                l = ["master.SNAPSHOT"]
            else:
                l = [e.version]
            dictio[key] = l

        with open(self.dir_output+fjson.path+fjson.name, 'w') as target:
            json.dump(dictio, target, indent=4)

            return self.dir_output+fjson.path+fjson.name

    def generate_json_dist(self, version, fjson):
        elements = self.get_modules_list(version)
        dictio = {}
        snapshot = False
        if "SNAPSHOT" in version:
            snapshot = True

        for e in elements:
            key = e.get_directory_name()
            if type(e) is ariane_delivery.Module:
                if snapshot:
                    dictio[key] = "master.SNAPSHOT"
                else:
                    dictio[key] = e.version

        with open(self.dir_output+fjson.path+fjson.name, 'w') as target:
            json.dump(dictio, target, indent=4)

            return self.dir_output+fjson.path+fjson.name

    def generate_json_plugins(self, fjson):
        distribs = self.ariane.distribution_service.get_all()
        plugin_dict = {}
        for d in distribs:
            plugins = self.ariane.plugin_service.get_all(d)
            for p in plugins:
                if "SNAPSHOT" in p.version:
                    p.version = "master.SNAPSHOT"
                if "SNAPSHOT" in d.version:
                    d.version = "master.SNAPSHOT"

                p_name = "ariane.community.plugin." + p.name
                if p_name not in plugin_dict.keys():
                    plugin_dict[p_name] = [{"pluginVersion": p.version, "distVersion": [d.version]}]
                else:
                    flag_new_version = True
                    flag_append = False
                    rel = self.ariane.get_relation_between(p, d)
                    max, min = 0, 0
                    for sub_d in plugin_dict[p_name]:
                        flag_append = False
                        if sub_d["pluginVersion"] == p.version:
                            flag_new_version = False
                            flag_append = True
                        elif len(rel.properties) > 0:
                            if rel.properties["version_min"] == sub_d["pluginVersion"]:
                                flag_append = True
                                min += 1
                            elif rel.properties["version_max"] == sub_d["pluginVersion"]:
                                flag_append = True
                                max += 1
                        if flag_append:
                            if type(sub_d["distVersion"]) is not list:
                                sub_d["distVersion"] = [d.version]
                            else:
                                sub_d["distVersion"].append(d.version)

                    if len(rel.properties) > 0:
                        if (flag_append is False) and (max == 0):
                            plugin_dict[p_name].append({"pluginVersion": rel.properties["version_max"], "distVersion": [d.version]})
                        elif (flag_append is False) and (min == 0):
                            plugin_dict[p_name].append({"pluginVersion": rel.properties["version_min"], "distVersion": [d.version]})
                    if flag_new_version:
                        plugin_dict[p_name].append({"pluginVersion": p.version, "distVersion": [d.version]})

        # each distrib has the same directories tree, here 'd' is the last distrib from the list.
        with open(self.dir_output+fjson.path+fjson.name, 'w') as target:
            json.dump(plugin_dict, target, indent=4)

        return self.dir_output+fjson.path+fjson.name

    def generate_git_repos_json(self, version, fjson):
        distrib = self.get_distrib(version)

        modules = self.get_modules_list(version)
        plugins = self.get_plugins_list(version)
        url = "https://github.com/echinopsii/net.echinopsii."

        dictio = {}

        for m in modules:
            key = m.get_directory_name()
            if m.type == "none":
                typ = "core"
            else:
                typ = m.type
            dictio[key] = {"type": typ, "url": url + key + '.git'}

        for p in plugins:
            key = p.get_directory_name()
            dictio[key] = {"type": "plugin", "url": url + key + '.git'}

        with open(self.dir_output+fjson.path+fjson.name, 'w') as target:
            json.dump(dictio, target, indent=4)

        return self.dir_output+fjson.path+fjson.name

    def generate_lib_json(self, mod_plug, fjson):
        extension_dict = self.get_submodule_lib_extensions()
        exception_list = self.get_submodule_lib_exceptions()
        list_lib = []
        for s in mod_plug.list_submod:
            ext = ".jar"
            if s.name not in exception_list:
                if s.name in extension_dict.keys():
                    ext = extension_dict[s.name]

                if type(s) is ariane_delivery.SubModuleParent:
                    for s_sub in s.list_submod:
                        ext = ".jar"
                        url = "net/echinopsii/" + str(mod_plug.get_directory_name()).replace('.', '/') + "/"+s.name+"/"
                        url += "net.echinopsii."+mod_plug.get_directory_name()+"."+s.name+"."+s_sub.name+"/"+mod_plug.version+"/net.echinopsii."+mod_plug.get_directory_name()+"."+s.name+"."+s_sub.name+"-"+mod_plug.version + ext
                        list_lib.append(url)
                else:
                    url = "net/echinopsii/" + str(mod_plug.get_directory_name()).replace('.', '/') + "/"
                    url += "net.echinopsii."+mod_plug.get_directory_name()+"."+s.name+"/"+mod_plug.version+"/net.echinopsii."+mod_plug.get_directory_name()+"."+s.name+"-"+mod_plug.version + ext
                    list_lib.append(url)

            with open(self.dir_output+fjson.path+fjson.name, 'w') as target:
                json.dump(list_lib, target, indent=4)

    def generate_vsh_installer(self, modules, fvsh):
        vsh_exceptions = self.get_vsh_exceptions()

        for m in modules:
            if "-SNAPSHOT" in m.version:
                m.version = str(m.version).replace('-', '.')

        for m in modules.copy():
            if m.name in vsh_exceptions:
                modules.remove(m)
        template = self.env.get_template(fvsh.path+'installer_vsh.tpl')
        args = {"modules": modules}
        with open(self.dir_output+fvsh.path+fvsh.name, 'w') as target:
            target.write(template.render(args))

    def generate_vsh_plugin(self, p, fvsh):
        if "-SNAPSHOT" in p.version:
            p.version = str(p.version).replace('-', '.')
        template = self.env.get_template(fvsh.path+'plugin_vsh.tpl')
        args = {"plugin": p}
        with open(self.dir_output+fvsh.path+fvsh.name, 'w') as target:
            target.write(template.render(args))