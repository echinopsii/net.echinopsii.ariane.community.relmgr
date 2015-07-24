from jinja2 import Environment, PackageLoader, Template
from ariane_deliverytool.dao import ariane_delivery
import json
__author__ = 'stanrenia'


class Generator(object):
    ariane = None

    def __init__(self, ariane_delivery_service):
        self.env = Environment(loader=PackageLoader('ariane_deliverytool.generator', 'templates'))
        Generator.ariane = ariane_delivery_service
        self.modules_dict = {}
        self.plugin_dict = {}
        self.distrib_dict = {}

    def get_distrib(self, version):
        if version not in self.distrib_dict.keys():
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
        with open('../ariane_delivertytool/generator/exception_extension/submodule_lib_extensions.json', 'r') as data_file:
            data = json.load(data_file)
            return data

    def get_submodule_lib_exceptions(self):
        with open('../ariane_delivertytool/generator/exception_extension/submodule_lib_exceptions.json', 'r') as data_file:
            data = json.load(data_file)
            return data

    def get_submodule_plan_exceptions(self):
        with open('../ariane_delivertytool/generator/exception_extension/submodule_plan_exceptions.json', 'r') as data_file:
            data = json.load(data_file)
            return data

    def get_module_lib_exceptions(self):
        with open('../ariane_delivertytool/generator/exception_extension/module_lib_exceptions.json', 'r') as data_file:
            data = json.load(data_file)
            return data

    def get_module_pom_exceptions(self):
        with open('../ariane_delivertytool/generator/exception_extension/module_pom_exceptions.json', 'r') as data_file:
            data = json.load(data_file)
            return data

    def make_vmin_vmax(self, version):
        v = version.split('.')
        v[-1] = '0'
        vmin = '.'.join(v)
        v[1] = str(int(v[1]) + 1)
        vmax = '.'.join(v)
        return vmin, vmax

    def generate_distribution(self, version):
        dir_output = "ariane.community"
        self.generate_json(version, "module", dir_output)
        self.generate_json(version, "plugin", dir_output)
        self.generate_git_repos_json(version, dir_output, extension=".git")
        # main git-repos
        self.generate_git_repos_json(version, dir_output, url="net.echinopsii.")
        self.generate_plugins_json(dir_output)
        self.generate_vsh(version, dir_output)
        self.generate_pom(version, dir_output)
        self.generate_lib_json(version, dir_output)
        self.generate_plan(version, dir_output)

    def generate_pom(self, version, dir_output):
        modules = self.get_modules_list(version)
        plugins = self.get_plugins_list(version)
        module_exceptions = self.get_module_pom_exceptions()
        for mod in modules:
            if mod.name in module_exceptions:
                continue
            self.__generate_one_pom(mod, dir_output)
        for plug in plugins:
            self.__generate_one_pom(plug, dir_output)

    def __generate_one_pom(self, ariane_node, dir_output):
        if ariane_node.node_type == "Module" or ariane_node.node_type == "Plugin":
            ariane_node.list_submod = self.ariane.submodule_service.get_all(ariane_node)
            ariane_node.list_submod.extend(self.ariane.submodule_parent_service.get_all(ariane_node))
            if ariane_node.node_type == 'Module':
                self.ariane.module_service.get_relations(ariane_node)
            else:
                self.ariane.plugin_service.get_relations(ariane_node)

            template = self.env.get_template(ariane_node.name+'/pom.xml.tpl')
            groupId = "net.echinopsii.ariane.community"
            if (ariane_node.type == "core") or (ariane_node.type == "plugin"):
                dir_output += '.'+ariane_node.type
                groupId += '.'+ariane_node.type

            dir_output += "." + ariane_node.name + '/'
            artifactId = groupId + "." + ariane_node.name
            version = ariane_node.version
            packaging = "pom"

            args = {"groupId": groupId, "artifactId": artifactId, "version": version,
                    "packaging": packaging, "modules": ariane_node.list_submod,
                    "dependencies": ariane_node.list_module_dependency}

            filename = 'pom.xml'
            with open(dir_output+filename, 'w') as target:
                target.write(template.render(args))

            for sub in ariane_node.list_submod:
                template = self.env.get_template(ariane_node.name+'/'+sub.name+'/pom.xml.tpl')
                sub_dir_output = dir_output + sub.name + '/'
                args["name"] = sub.name
                with open(sub_dir_output+filename, 'w') as target:
                    target.write(template.render(args))

                if type(sub) is ariane_delivery.SubModuleParent:
                    s_args = {"groupId": groupId+'.'+ariane_node.name, "artifactId": groupId+'.'+ariane_node.name+'.'+sub.name, "version": version}
                    for s in sub.list_submod:
                        sub_sub_dir_output = sub_dir_output + s.name + '/'
                        template = self.env.get_template(ariane_node.name+'/'+sub.name+'/'+s.name+'/pom.xml.tpl')
                        s_args["name"] = s.name
                        with open(sub_sub_dir_output+filename, 'w') as target:
                            target.write(template.render(s_args))

    def generate_plan(self, version, dir_output):
        modules = self.get_modules_list(version)
        plugins = self.get_plugins_list(version)
        exceptions = self.get_module_lib_exceptions()
        sub_exceptions = self.get_submodule_plan_exceptions()
        snapshot = False
        if "SNAPSHOT" in version:
            version = "master.SNAPSHOT"
            snapshot = True
        modules.extend(plugins)
        for m in modules:
            if m.name not in exceptions:
                template = self.env.get_template("plans/"+version+"/plan_"+m.name+"_"+version+"_template.xml.tpl")
                submodules = self.ariane.submodule_service.get_all(m)
                submodules.extend(self.ariane.submodule_parent_service.get_all(m))
                # Remove each submodule which is in exceptions list.
                # Note that if submodule is a SubModuleParent which has a SubModule to be excluded,
                # this is done in the module template.
                for s in submodules.copy():
                    if s.name in sub_exceptions:
                        submodules.remove(s)
                vmin, vmax = self.make_vmin_vmax(m.version)
                if snapshot:
                    m_version = str(m.version).replace("-", ".")
                else:
                    m_version = m.version
                args = {"version": m_version, "module": m, "vmin": vmin, "vmax": vmax, "submodules": submodules}
                typ = m.type+'.'
                if m.type == "none":
                    typ = ""

                # ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/
                # ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-plugins/
                if str(m.node_type).lower() == "module":
                    ntyp = 'ariane-core/'
                else:
                    ntyp = 'ariane-plugins/'
                mod_dir_output = dir_output + '.' + typ + m.name + '/distrib/db/resources/virgo/repository/' + ntyp
                filename = "net.echinopsii.ariane.community."+typ+m.name+"_"+m_version+".plan"
                with open(mod_dir_output+filename, 'w') as target:
                    target.write(template.render(args))

    def generate_json(self, version, mod_or_plug, dir_output):
        elements = None
        if str(mod_or_plug).lower() == "module":
            elements = self.get_modules_list(version)
            ntyp = ""
        elif str(mod_or_plug).lower() == "plugin":
            ntyp = "plugins-"
            elements = self.get_plugins_list(version)

        dictio = {}
        snapshot = False
        if "SNAPSHOT" in version:
            distrib_version = "master.SNAPSHOT"
            snapshot = True

        for e in elements:
            key = "ariane.community."
            if type(e) is ariane_delivery.Module:
                if e.type == "core":
                    key += e.type + '.'
                key += e.name
                if snapshot:
                    dictio[key] = "master.SNAPSHOT"
                else:
                    dictio[key] = e.version
            elif type(e) is ariane_delivery.Plugin:
                key += "plugin." + e.name
                if snapshot:
                    l = "master.SNAPSHOT"
                else:
                    l = [e.version]
                dictio[key] = l

        # ariane.community.distrib/resources/distrib/ariane.community.distrib-0.5.0.json
        if ntyp == "":
            dir_output += ".distrib/resources/distrib/"
        else:
            dir_output += ".distrib/resources/plugins/"

        filename = "ariane.community."+ntyp+"distrib-" + version + ".json"

        with open(dir_output+filename, 'w') as target:
            json.dump(dictio, target, indent=4)

            return dir_output+filename

    def generate_plugins_json(self, dir_output):
        filename = "ariane.community.plugins.json"
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

        with open(dir_output+'.distrib/resources/plugins/'+filename, 'w') as target:
            json.dump(plugin_dict, target, indent=4)

        return dir_output+'.distrib/resources/plugins/'+filename

    def generate_git_repos_json(self, version, dir_output, url=None, extension=None):
        filename = "ariane.community.git.repos-"+version+".json"
        if extension is None:
            filename = "ariane.community.git.repos-main-master.SNAPSHOT.json"

        modules = self.get_modules_list(version)
        plugins = self.get_plugins_list(version)
        if url is None:
            url = "https://github.com/echinopsii/net.echinopsii."
        else:
            if url[-1:] != '.':
                url += '.'

        if extension is None:
            extension = ""

        dictio = {}

        for m in modules:
            key = "ariane.community."
            if m.type == "core":
                key += "core."
            key += m.name
            if m.type == "none":
                typ = "core"
            else:
                typ = m.type
            dictio[key] = {"type": typ, "url": url + key + extension}

        for p in plugins:
            key = "ariane.community.plugin." + p.name
            dictio[key] = {"type": "plugin", "url": url + key + extension}

        with open(dir_output+'.distrib/resources/sources/'+filename, 'w') as target:
            json.dump(dictio, target, indent=4)

        return dir_output+'.distrib/resources/sources/'+filename

    def generate_lib_json(self, version, dir_output):
        modules = self.get_modules_list(version)
        extension_dict = self.get_submodule_lib_extensions()
        exception_list = self.get_submodule_lib_exceptions()
        modules_exception = self.get_module_lib_exceptions()

        for m in modules:
            if m.name not in modules_exception:
                list_lib = []
                submodules = self.ariane.submodule_service.get_all(m)
                submodules.extend(self.ariane.submodule_parent_service.get_all(m))
                for s in submodules:
                    typ = "core/"
                    if m.type != "core":
                        typ = ""
                    ext = ".jar"
                    if s.name not in exception_list:
                        if s.name in extension_dict.keys():
                            ext = extension_dict[s.name]

                        if type(s) is ariane_delivery.SubModuleParent:
                            for s_sub in s.list_submod:
                                typ = "core/"
                                if m.type != "core":
                                    typ = ""
                                ext = ".jar"
                                url = "net/echinopsii/ariane/community/"+typ+m.name+"/"+s.name+"/"
                                typ = typ[:-1] # remove slash of core/, if typ is empty this does nothing
                                if typ != "":
                                    typ += '.'
                                url += "net.echinopsii.ariane.community."+typ+m.name+"."+s.name+"."+s_sub.name+"/"+m.version+"/net.echinopsii.ariane.community."+typ+m.name+"."+s.name+"."+s_sub.name+"-"+m.version + ext
                                list_lib.append(url)
                        else:
                            url = "net/echinopsii/ariane/community/"+typ+m.name+"/"
                            typ = typ[:-1]# remove slash of core/, if typ is empty this does nothing
                            if typ != "":
                                typ += '.'
                            url += "net.echinopsii.ariane.community."+typ+m.name+"."+s.name+"/"+m.version+"/net.echinopsii.ariane.community."+typ+m.name+"."+s.name+"-"+m.version + ext
                            list_lib.append(url)
                if "SNAPSHOT" in version:
                    filename = "ariane.community."+typ+m.name+"-master.SNAPSHOT.json"
                else:
                    filename = "ariane.community."+typ+m.name+"-"+m.version+".json"
                # ariane.community.core.directory/distrib/db/resources/builds/ariane.community.core.directory-0.6.0.json
                mod_dir_output = dir_output+'.'+typ+m.name+'/'+'/distrib/db/resources/builds/'
                with open(mod_dir_output+filename, 'w') as target:
                    json.dump(list_lib, target, indent=4)

    def generate_vsh(self, version, dir_output):
        modules = self.get_modules_list(version)
        plugins = self.get_plugins_list(version)

        modules_exception = self.get_module_lib_exceptions()
        for mod in modules.copy():
            if mod.name in modules_exception:
                modules.remove(mod)
        template = self.env.get_template('vsh/installer_vsh.tpl')

        args = {"modules": modules}
        # ariane.community.installer/distrib/installer/resources/virgoscripts/deploy-components.vsh
        with open(dir_output+'.installer/distrib/installer/resources/virgoscripts/'+'deploy-components.vsh', 'w') as target:
            target.write(template.render(args))

        template = self.env.get_template('vsh/plugin_vsh.tpl')
        # ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/deploy-plugin.rabbitmq.vsh
        for p in plugins:
            args = {"plugin": p}
            with open(dir_output+'.plugin.'+p.name+'/distrib/installer/resources/virgoscripts/'+'deploy-plugin.'+p.name+'.vsh', 'w') as target:
                target.write(template.render(args))

    def generate_pom_distrib(self, version, dir_output):
        template = self.env.get_template('maven/pom_distrib.xml.tpl')

        args = {"version": version, "modules": self.get_modules_list(version)}

        # ariane.community.distrib/resources/maven/pom-ariane.community.distrib-0.5.2.xml
        if "SNAPSHOT" in version:
            version = "master.SNAPSHOT"
        filename = "pom-ariane.community.distrib-" + version + ".xml"
        with open(dir_output+'distrib/resources/maven/' + filename, 'w') as target:
            target.write(template.render(args))
