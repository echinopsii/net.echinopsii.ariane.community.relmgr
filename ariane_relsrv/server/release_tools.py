# Ariane Release Manager
# Ariane Release Server
# Release Tools
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

__author__ = 'stan renia'

import os
import subprocess
import shutil
import json
import re
from datetime import date
from ariane_reltreelib.dao import ariane_delivery
from bootstrap import command
from ariane_reltreelib import exceptions as err
from ariane_reltreelib.generator.generator import GitTagHandler

ariane = None
RELMGR_CONFIG = None
LOGGER = None
project_path = None
relmgr_path = None


class InitReleaseTools(object):
    @staticmethod
    def set_globals(myglobals):
        global RELMGR_CONFIG, ariane, LOGGER, project_path, relmgr_path
        RELMGR_CONFIG = myglobals["conf"]
        ariane = myglobals["delivery_tree"]
        LOGGER = myglobals["logger"]
        project_path = myglobals["project_path"]
        relmgr_path = myglobals["relmgr_path"]
        BuildManager.path_zip = project_path + "/artifacts/"

class ReleaseTools(object):
    distrib_copy_id = 0

    @staticmethod
    def get_distrib_path(dist):
        dfile = (ariane.get_files(dist))[0]
        dpath = dfile.path.split('/')[0] + '/'
        return dpath

    @staticmethod
    def set_distrib_url_repos(dist):
        dpath = ReleaseTools.get_distrib_path(dist)
        dpath = os.path.join(project_path, dpath)
        if os.path.exists(dpath):
            fpath = os.path.join(dpath, "resources/sources/ariane.community.git.repos-master.SNAPSHOT.json")
            if os.path.isfile(fpath):
                with open(fpath, 'r') as target:
                    fdata = json.load(target)
                    for key, val in fdata.items():
                        url = fdata[key]["url"]
                        break
                    url = url[:url.index("ariane.")]
                    if dist.url_repos != url:
                        dist.url_repos = url
                        dist.save()
                        LOGGER.info("Repository URL was changed to '{}'for Distribution ({})".format(url, dist))
            else:
                LOGGER.warn("Distribution({}) repository URL was set to default: "
                            "'https://github.com/echinopsii/'".format(dist))

    @staticmethod
    def make_modules_to_tag_list():
        dist = ariane.distribution_service.get_dev_distrib()
        if dist.editable == "true":
            ariane.distribution_service.update_arianenode_lists(dist)
            for m in dist.list_module:
                mpath = os.path.join(project_path, m.get_directory_name())
                last_tag = GitTagHandler.get_last_tag(path=mpath)
                mversion = m.version
                if "-SNAPSHOT" in mversion:
                    mversion = mversion[:-len("-SNAPSHOT")]
                if mversion > last_tag:
                    GitManager.MODULES_TO_TAG.append(m.name)
                else:
                    GitManager.MODULES_EXCEPTIONS.append(m.name)

    @staticmethod
    def update_version(version, position="minor", operation="inc"):
        if position == "minor":
            v = version.split('.')
            if operation == "inc":
                v[-1] = str(int(v[-1]) + 1)  # Increments minor number of the version
            version = '.'.join(v)

        return version

    @staticmethod
    def export_new_distrib(erase_genuine_file=False):
        """
        :param erase_genuine_file: if True, erase the 'all.cypher' file located in ariane.community.relmgr/bootstrap/dependency_db/
            Knowing that this file is used for resetting the Database by calling ResetReset's POST (click on 'Reset' button from the UI)
        :return:
        """
        todaydate = date.today().strftime("%d%m%y")
        path = RELMGR_CONFIG.db_export_path
        backp = os.getcwd()
        LOGGER.info("Trying to copy and create the new 'all.cypher' file into " + path)
        if os.path.exists(path):
            os.chdir(path)
            fname = "all_"+todaydate+".cypher"
            if os.path.isfile(fname):
                same_files = []
                for (dp, dn, fn) in os.walk("."):
                    same_files = [f for f in fn if todaydate in f]
                    same_files = sorted(same_files, reverse=True)
                    break
                if len(same_files) == 1:
                    fname = same_files[0].split('.')
                    fname = fname[0] + '_1.cypher'
                else:
                    tmp = same_files[0].split('_')
                    tmp = tmp[-1].split('.')
                    tmp = str(int(tmp[0])+1)
                    fname = "all_"+todaydate+"_"+tmp+".cypher"
            shutil.copy("all.cypher", fname)
            os.system(RELMGR_CONFIG.neo4j_path+"/bin/neo4j-shell -c dump > " + os.path.join(path, "all.cypher"))
            if erase_genuine_file:
                os.system(RELMGR_CONFIG.neo4j_path+"/bin/neo4j-shell -c dump > " + os.path.join(relmgr_path, "bootstrap",
                                                                                                "dependency_db", "all.cypher"))
            os.chdir(backp)
            LOGGER.info("IN "+path+": file 'all.cypher' was copied to '"+fname+"'. New all.cypher was "
                                                                               "created from the new Distribution")
            return 0
        else:
            LOGGER.warn("COULD NOT CREATED THE NEW .cypher: path= '"+path+"' DOES NOT EXIST")
            return 1

    @staticmethod
    def get_ui_running_mode():
        with open(RELMGR_CONFIG.config_file_path, "r") as configfile:
            run_mode = json.load(configfile)
            if "UI_RUNNING_MODE" in run_mode.keys():
                return run_mode["UI_RUNNING_MODE"]
            else:
                return 'test'

class DatabaseManager(object):

    @staticmethod
    def make_release_distrib(d):
        dev = ariane.distribution_service.get_dev_distrib()
        if dev == d:
            LOGGER.info("Creating a copy of this distribution in order to work on it")
            cd = DatabaseManager.create_distrib_copy(d)
            if cd is None:
                return 1, None  # "Distribution copy already exists in database"
            ReleaseTools.set_distrib_url_repos(cd)
            return 0, cd

    @staticmethod
    def get_distrib_copies(cpy_dev=None):
        if cpy_dev is None:
            cpy_dev = ariane.distribution_service.get_all()
        cpy_dev = [cd for cd in cpy_dev if "copyTemp" in cd.version]
        return cpy_dev

    @staticmethod
    def create_distrib_copy(d):
        dev = ariane.distribution_service.get_dev_distrib()
        if dev.editable == "true":
            exist_cpy = DatabaseManager.get_distrib_copies()
            if len(exist_cpy) > 0:
                return -1
            cd = ariane_delivery.DistributionService.copy_distrib(d)
            # Modify current Distrib name but save this name by adding 'copyTemp' before
            ReleaseTools.distrib_copy_id = d.id
            d.name = "copyTemp" + d.name
            d.version = "copyTemp" + d.version
            d.editable = "false"
            d.save()
            return cd
        return None

    @staticmethod
    def create_dev_distrib():
        """
        :return 0: success, 1: interal error, can not find the actual DEV Distribution, 2 | 3: The actual DEV Distribution is already in a '-SNAPSHOT' version
        """
        snapshot = "-SNAPSHOT"
        dev = ariane.distribution_service.get_dev_distrib()
        if not isinstance(dev, ariane_delivery.Distribution):
            return 1  # "Server can not find the actual DEV Distribution"

        if dev.editable != "true":
            return 2  # The actual DEV Distribution is already in a '-SNAPSHOT' version

        if snapshot in dev.version:
            return 3  # Same as 2

        newdev = ariane_delivery.DistributionService.copy_distrib(dev)
        dev.editable = "false"
        dev.save()
        newdev.editable = "true"
        newdev.version = ReleaseTools.update_version(newdev.version)
        newdev.version += snapshot
        newdev.save()
        modules = ariane.module_service.get_all(newdev)
        for m in modules:
            if snapshot in m.version:
                newdev.delete()
                return 3
            m.version = ReleaseTools.update_version(m.version)
            m.version += snapshot
            m.save()

        # plugins = ariane.plugin_service.get_all(newdev)
        # for p in plugins:
        #     p.version += snapshot
        #     p.save()
        return newdev

    @staticmethod
    def remove_genuine_distrib():
        dcopies = ariane.distribution_service.get_all()
        if len(dcopies) > 0:
            dcopies = DatabaseManager.get_distrib_copies(dcopies)
            if len(dcopies) > 1:
                LOGGER.warn("MULTIPLE DISTRIB COPIES WERE FOUND IN DATABASE")
            if len(dcopies) == 0:
                return -1
            for d in dcopies:
                d.delete()
            return 0
        return -2

    @staticmethod
    def remove_distrib_copy(cd):
        """
        Remove the given Distribution copy from the database.
        :param cd: Distribution object to remove from database
        :return: if == 0 <=> success; if != 0 <=> error occured
        """
        if (isinstance(cd, ariane_delivery.Distribution)) and (cd.editable == "true"):
            cd.delete()
        else:
            cd = ariane.distribution_service.find({"editable": "true"})
            if isinstance(cd, ariane_delivery.Distribution):
                cd.delete()
            elif isinstance(cd, list):
                for c in cd:
                    c.delete()
            else:
                return -1
        dist = ariane.distribution_service.get_unique({"nID": ReleaseTools.distrib_copy_id})
        if isinstance(dist, ariane_delivery.Distribution):
            dist.name = dist.name[len("copyTemp"):]
            dist.version = dist.version[len("copyTemp"):]
            dist.editable = "true"
            dist.save()
            return 0
        distribs = ariane.distribution_service.get_all()
        for d in distribs:
            if "copyTemp" in d.version:
                d.version = d.version[len("copyTemp"):]
                if "copyTemp" in d.name:
                    d.name = d.name[len("copyTemp"):]
                d.editable = "true"
                d.save()
                return 0
        return 1

    @staticmethod
    def reset_dev_distrib():
        """
        Reinitialize values of the DEV Distribution copy, using the original DEV Distribution.
        :return: None
        """
        dev = ariane.distribution_service.get_dev_distrib()
        if not isinstance(dev, ariane_delivery.Distribution):
            return 1
        if dev.editable != "true":
            return 2
        cpy_dev = DatabaseManager.get_distrib_copies()
        if len(cpy_dev) == 0:
            return 3
        if len(cpy_dev) > 1:
            return 4

        cpy_dev = cpy_dev[0]
        cpy_mod = ariane.module_service.get_all(cpy_dev)
        dev_mod = ariane.module_service.get_all(dev)
        cpy_plug = ariane.plugin_service.get_all(cpy_dev)
        dev_plug = ariane.plugin_service.get_all(dev)
        for m in cpy_mod:
            for dm in dev_mod:
                if m.name == dm.name:
                    dm.version = m.version
                    dm.save()
        for p in cpy_plug:
            for dp in dev_plug:
                if p.name == dp.name:
                    dp.version = p.version
                    dp.save()

        dev.version = cpy_dev.version[len("copyTemp"):]
        dev.save()

    @staticmethod
    def make_dev_distrib():
        """
        Make the new DEV distrib from the latest released. This method uses other DatabaseManager's static methods
         to proceed, such as 'create_dev_distrib()', 'remove_genuine_distrib()' and 'create_distrib_copy()'
        :return: 'newdevcp' : the copy of the DEV distrib which was created. Next edition will be affected to this copy
        """
        LOGGER.info("Creating the new DEV Distribution...")
        newdev = DatabaseManager.create_dev_distrib()
        if not isinstance(newdev, ariane_delivery.Distribution):
            if newdev == 1:
                return 1  # "Server can not find the actual DEV Distribution"
            elif newdev in [2, 3]:
                return 2  # "A module of the actual DEV Distribution is already in a '-SNAPSHOT' version"
        LOGGER.info("DEV Distribution created in database. Now removing the copy...")
        DatabaseManager.remove_genuine_distrib()
        LOGGER.info("Old Distribution copy was removed. Start copying the new DEV distribution...")
        newdevcp = DatabaseManager.create_distrib_copy(newdev)
        if not isinstance(newdev, ariane_delivery.Distribution):
            if newdevcp == -1:
                return 3  # "Error occured while copying the New DEV Distribution into the "
                          # "database: A copy already exists."
            return 4  # "Error occured while copying the New DEV Distribution into the database"

        LOGGER.info("New DEV Distribution copy was created. Now working on this copy")
        ReleaseTools.export_new_distrib()
        return newdevcp

    @staticmethod
    def reset_database():
        alldistrib_file = "all.cypher"
        fpath = os.path.join(relmgr_path, "bootstrap", "dependency_db", alldistrib_file)
        if os.path.isfile(fpath):
            ariane.delete_all()
            os.system(RELMGR_CONFIG.neo4j_path+"/bin/neo4j-shell -file " + fpath)
            LOGGER.info("Successful database reset")
            return 0, ""
        else:
            return 1, fpath  # "Error while importing '"+fpath+"', file was not found "

class GitManager(object):
    MODULES_TO_TAG = []
    MODULES_EXCEPTIONS = []
    PLUGINS_TO_TAG = []
    commit_comment = ""

    @staticmethod
    def commit_element(m, mpath, commit, task, comment, mode):
        rets = {"path_errs": ""}
        errs = ""
        warns = ""
        if os.path.exists(mpath):
            os.chdir(mpath)
            if subprocess.call("git add ./", shell=True) != 0:
                LOGGER.error("error_on_add("+m.name+");")
                errs += "error_on_add("+m.name+"); "
            else:
                LOGGER.info(m.name+"("+m.version+") added")
                pipe = subprocess.Popen(commit, shell=True, stdout=subprocess.PIPE)
                git_cmd_out = pipe.communicate()[0]
                # Handle 'git tag' errors or warnings. (Warning if 'nothing to tag' is returned by the command)
                if (isinstance(git_cmd_out, bytes)) and (len(git_cmd_out) > 0):
                    git_cmd_out = (git_cmd_out.decode()).split('\n')
                else:
                    git_cmd_out = ""
                for line in git_cmd_out:
                    if "nothing" in line:
                        warns += "warning_on_tag("+m.name+" "+m.version+"): "+line+"; "
                        LOGGER.warn("warning_on_tag("+m.name+" "+m.version+"): "+line+"; ")
                        break
                    if "error" in line:
                        LOGGER.error("error_on_commit("+m.name+"): "+task + " "+ comment + ""+line+"; ")
                        errs += "error_on_commit("+m.name+"): "+task + " "+ comment + ""+line+"; "
                        break
                if errs == "":
                    if subprocess.call("git push ", shell=True) != 0:
                        LOGGER.error("error_on_push("+m.name+"): " + m.version + ";")
                        errs += "error_on_push("+m.name+"): " + m.version + "; "
                    else:
                        LOGGER.info(m.name+"("+m.version+") pushed")
                        if mode == "Release":
                            LOGGER.info(m.name+"("+m.version+") commited")
                            if subprocess.call("git tag " + m.version, shell=True) != 0:
                                LOGGER.error("error_on_tag("+m.name+" "+m.version+"); ")
                                errs += "error_on_tag("+m.name+" "+m.version+"); "
                            else:
                                LOGGER.info(m.name+"("+m.version+") tagged")
                                if subprocess.call("git push origin " + m.version, shell=True) != 0:
                                    LOGGER.error("error_on_push_origin("+m.name+"): " + m.version + ";")
                                    errs += "error_on_push_origin("+m.name+"): " + m.version + "; "
                                else:
                                    LOGGER.info(m.name+"("+m.version+") origin pushed")
        else:
            rets["path_errs"] = mpath
        rets["errs"] = errs
        rets["warns"] = warns
        return rets

    @staticmethod
    def commit_distrib(args):

        isdistrib = args["isdistrib"]
        isplugin = args["isplugin"]
        mode = args["mode"]
        task = args["task"]
        comment = args["comment"]

        # git commit -m "task comment" ./
        # git tag version_module
        # git push origin  version_module

        dist = ariane.distribution_service.get_dev_distrib()
        if not isinstance(dist, ariane_delivery.Distribution):
            return 1, "", ""  # "Server can not find the current Distribution to commit"

        LOGGER.info("Start " + mode + " Distribution("+dist.version+") commit-tag-push ...")
        errs = ""
        warns = ""
        path_errs = []
        GitManager.commit_comment = task+" "+comment
        commit = "git commit -m \""+GitManager.commit_comment+"\" ./"

        if isdistrib:
            rets = GitManager.commit_element(dist, os.path.join(project_path, ReleaseTools.get_distrib_path(dist)), commit, task, comment, mode)
            errs += rets["errs"]
            warns += rets["warns"]
            if rets["path_errs"] != "":
                path_errs.append(rets["path_errs"])
        else:
            if isplugin:
                mod_plugs = ariane.plugin_service.get_all(dist)
            else:
                mod_plugs = ariane.module_service.get_all(dist)
            for m in mod_plugs:
                if isplugin:
                    if m.name not in GitManager.PLUGINS_TO_TAG:
                        LOGGER.warn(m.name+"("+m.version+") not in plugins to tag")
                        continue
                else:
                    if m.name not in GitManager.MODULES_TO_TAG:
                        LOGGER.warn(m.name+"("+m.version+") not in modules to tag")
                        continue
                    mpath = os.path.join(project_path, m.get_directory_name())
                    rets = GitManager.commit_element(m, mpath, commit, task, comment, mode)
                    errs += rets["errs"]
                    warns += rets["warns"]
                    if rets["path_errs"] != "":
                        path_errs.append(rets["path_errs"])

        if len(path_errs) > 0:
            errs += " Error: Following paths does not exist {} ; ".format(path_errs)
        if len(errs) > 0:
            message = "Errors occured while commiting the Distribution. Please correct them manually " \
                      "(Check Warning logs for more information).\n" + errs
            return 2, message, warns  # Error with message
        else:
            if isdistrib:
                message = "'distrib' module from" + mode + "Distribution ("+dist.version+") Commit-Tag-Push done"
            elif isplugin:
                message = "Plugins from  " + mode + " Distribution ("+dist.version+") Commit-Tag-Push done"
            else:
                message = "Modules from  " + mode + " Distribution ("+dist.version+") Commit-Tag-Push done"
        LOGGER.info(message)
        return 0, message, warns

    @staticmethod
    def checkout_distrib(dist, isplugin=False):
        if not isinstance(dist, ariane_delivery.Distribution):
            return 1

        LOGGER.info("Start files checkout ...")
        # First Checkout 'ariane.community.distrib' files: most of these files are versioned so we need to
        # remove them.
        dirpath = os.path.join(project_path, ReleaseTools.get_distrib_path(dist))
        subprocess.call("git clean -f", shell=True, cwd=dirpath)
        subprocess.call("git checkout .", shell=True, cwd=dirpath)
        LOGGER.info("distrib clean and checkout")
        # Second, Checkout all other Modules/Plugins files. There are 2 verisoned files (.plan et .json build)
        # so we remove them. For the not versioned files we use 'git checkout'. Plugin checkout is optionnal
        modules = ariane.module_service.get_all(dist)
        if isplugin:
            plugins = ariane.plugin_service.get_all(dist)
            modules.extend(plugins)

        for m in modules:
            dirpath = os.path.join(project_path, m.get_directory_name() + '/')
            subprocess.call("git clean -f", shell=True, cwd=dirpath)
            subprocess.call("git checkout .", shell=True, cwd=dirpath)
            LOGGER.info(m.name + " clean and checkout")
        return 0

    @staticmethod
    def pull_checkout_distrib(dist, isplugin=False):
        LOGGER.info("Start repositories git checkout and git pull")
        paths = [ReleaseTools.get_distrib_path(dist)]
        modules = ariane.module_service.get_all(dist)
        plugins = ariane.plugin_service.get_all(dist)
        paths.extend([os.path.join(project_path, m.get_directory_name()) for m in modules])
        if isplugin:
            paths.extend([os.path.join(project_path, p.get_directory_name()) for p in plugins])
        errs = ""
        for p in paths:
            if os.path.exists(p):
                if subprocess.call('git checkout ./', shell=True, cwd=p) != 0:
                    errs += "error while git checkout {}-".format(p)
                if subprocess.call('git pull', shell=True, cwd=p) != 0:
                    errs += "error while git pull {}-".format(p)
        if errs != "":
            LOGGER.warn("Git Checkout done but errors occured for some repositories: "+errs)
        else:
            LOGGER.info("Git Checkout done")
        return 0, errs

    @staticmethod
    def checkout_tags(isdistrib=False, isplugin=False):
        # git tag -d version_module
        # git push origin :refs/tags/version_module
        # if git log -1 --pretty=%B | grep "last commit ticket + last commit comment" == 0
        #    git reset --hard HEAD~1
        backpath = os.getcwd()
        LOGGER.info("Start Tags reset")
        dist = ariane.distribution_service.get_dev_distrib()
        if not isinstance(dist, ariane_delivery.Distribution):
            return 1, ""  # "Server can not find the current Distribution to commit"

        if isplugin:
            mod_plugs = ariane.plugin_service.get_all(dist)
        else:
            mod_plugs = ariane.module_service.get_all(dist)
        errs = ""
        path_errs = []
        # Handle 'distrib' module
        if isdistrib:
            dpath = os.path.join(project_path, ReleaseTools.get_distrib_path(dist))
            if os.path.exists(dpath):
                os.chdir(dpath)
                if subprocess.call("git tag -d " + dist.version, shell=True) != 0:
                    errs += "error_on_tag: distrib(" + dist.version + "); "
                else:
                    if subprocess.call("git push origin :refs/tags/" + dist.version, shell=True) != 0:
                        errs += "error_on_push_origin: distrib( " + dist.version + "); "
                    else:
                        if subprocess.call("git log -1 --pretty=%B | grep '" +
                                                   re.escape(GitManager.commit_comment) + "'", shell=True) != 0:
                            LOGGER.info("No need to reset last commit in distrib repository")
                        else:
                            if subprocess.call("git reset --hard HEAD~1", shell=True) != 0:
                                errs += "error_on_reset:distrib( " + dist.version + "); "
                            else:
                                if subprocess.call("git push --force origin master", shell=True) != 0:
                                    errs += "error_on_reset_commit: distrib(" + dist.version + "); "
                                else:
                                    LOGGER.info("Last commit was reset in distrib repository")

        for m in mod_plugs:
            if isplugin:
                if m.name not in GitManager.PLUGINS_TO_TAG:
                    continue
            else:
                if m.name not in GitManager.MODULES_TO_TAG:
                    continue
                mpath = os.path.join(project_path, m.get_directory_name())
                if os.path.exists(mpath):
                    os.chdir(mpath)
                    if subprocess.call("git tag -d " + m.version, shell=True) != 0:
                        errs += "error_on_tag: "+m.name+"(" + m.version + "); "
                    else:
                        if subprocess.call("git push origin :refs/tags/" + m.version, shell=True) != 0:
                            errs += "error_on_push_origin: "+m.name+"(" + m.version + "); "
                        else:
                            if subprocess.call("git log -1 --pretty=%B | grep '" +
                                                       re.escape(GitManager.commit_comment) + "'",
                                               shell=True) != 0:
                                LOGGER.info("No need to reset last commit in "+m.name+" repository")
                            else:
                                if subprocess.call("git reset --hard HEAD~1", shell=True) != 0:
                                    errs += "error_on_reset: "+m.name+"(" + m.version + "); "
                                else:
                                    if subprocess.call("git push --force origin master", shell=True) != 0:
                                        errs += "error_on_reset_commit: "+m.name+"(" + m.version + "); "
                                    else:
                                        LOGGER.info("Last commit was reset in "+m.name+" repository")
                else:
                    path_errs.append(mpath)

        os.chdir(backpath)
        if len(path_errs) > 0:
            errs += " Error: Following paths does not exist {} ; ".format(path_errs)
        if len(errs) > 0:
            message = "Errors occured. Please correct them manually.\n" + errs
            return 2, message
        else:
            message = "Tags reset done."
        LOGGER.info(message)
        return 0, message

class BuildManager(object):
    path_zip = ""
    zipfile = ""

    @staticmethod
    def build_distrib(version, from_tags):
        # Command is either 'distpkgr master.SNAPSHOT'
        # or 'distpkgr {version}.SNAPSHOT' where {version} is version's value (i.e version= '0.6.4')
        LOGGER.info("Start Zip Build")
        if "SNAPSHOT" in version:
            version = "master.SNAPSHOT"
            version_cmd = version
        else:
            if from_tags:
                version_cmd = version
            else:
                version_cmd = version + ".SNAPSHOT"

        if from_tags:
            timeout = RELMGR_CONFIG.build_timeout["REMOTE"]
        else:
            timeout = RELMGR_CONFIG.build_timeout["LOCAL"]

            LOGGER.info("Timeout set to " + str(timeout) + "s")

        # Remove existing zip target directory (recreated by distribmgr)
        path_zip = BuildManager.path_zip
        if os.path.exists(path_zip):
            shutil.rmtree(path_zip)

        cmd_slack = ""
        if RELMGR_CONFIG.url_slack != "":
            cmd_slack = "-s " + RELMGR_CONFIG.url_slack
            LOGGER.info("Building info will be transmitted to Slack on: " + RELMGR_CONFIG.url_slack)

        child = subprocess.Popen("./distribManager.py "+cmd_slack+" distpkgr " + version_cmd,
                                 # + " > "+project_path+"/ariane.community.relmgr/ariane_relsrv/server/"+ftmp_fname,
                                 shell=True,
                                 cwd=project_path + "/ariane.community.distrib")
        streamdata = child.communicate(timeout=timeout)[0]
        build_done = False
        rc = child.returncode
        if rc == 0:
            for (dp, dn, fn) in os.walk(path_zip):
                if len(fn) == 1:
                    BuildManager.zipfile = fn[0]
                    build_done = True
                    break

        if build_done:
            LOGGER.info("Build success")
            return 0
        else:
            return 1  # "Error while building"

    @staticmethod
    def do_mvn_clean_install():
        timeout = RELMGR_CONFIG.build_timeout["REMOTE"]
        child = subprocess.Popen("mvn clean install", shell=True, cwd=project_path)
        streamdata = child.communicate(timeout=timeout)[0]
        mvn_done = False
        rc = child.returncode
        if rc == 0:
            mvn_done = True
        if mvn_done:
            LOGGER.info("mvn clean install succeeded")
            return 0
        else:
            return 1  # "Error while running 'mvn clean install'"

    @staticmethod
    def check_for_zip():
        zipfile = BuildManager.zipfile
        path_zip = BuildManager.path_zip
        checked = False
        if os.path.exists(path_zip):
            if os.path.isfile(os.path.join(path_zip, zipfile)):
                checked = True
            else:
                for (dp, dn, fn) in os.walk(path_zip):
                    if zipfile in fn:
                        checked = True
                    break
            if checked:
                return 0
            else:
                return 2
        else:
            return 1  # "Zip file Path and Name does not match any existing zip file"

    @staticmethod
    def delete_zip():
        zipfile = BuildManager.zipfile
        path_zip = BuildManager.path_zip

        # If file exist, remove. If not, it is already removed so do nothing.
        if os.path.isfile(path_zip+zipfile):
            os.remove(path_zip+zipfile)
            return 0
        else:
            return 1

class FileGenManager(object):

    @staticmethod
    def generate_files(cmd_str, version, name):
        GitManager.MODULES_EXCEPTIONS = []
        GitManager.MODULES_TO_TAG = []
        if ReleaseTools.make_modules_to_tag_list() == -1:
            return 1, None  # "There is no copy of the master SNAPSHOT Distribution"

        cmd = command.Command(ariane=ariane)
        cmd.g.set_release_module_exceptions(GitManager.MODULES_EXCEPTIONS)
        try:
            cmd.execute(cmd_str, version, name)
            return 0, None
        except err.CommandError as cmderr:
           return 2, cmderr

    @staticmethod
    def get_file_diff(nid):
        f = ariane.find_without_label({"nID": nid})
        if f is not None:
            full_path = os.path.join(project_path, f.path)
            if os.path.exists(full_path):
                flag_diff = True
                out = subprocess.check_output("git diff " + f.name, shell=True, cwd=full_path)
                out = (out.decode()).split('\n')
                if out[-1] == '':
                    out = out[:-1]
                if len(out) == 0:
                    flag_diff = False
                    out = subprocess.check_output("cat " + f.name, shell=True, cwd=full_path)
                    out = (out.decode()).split('\n')
                    if out[-1] == '':
                        out = out[:-1]
                return 0, out, flag_diff
        else:
            return 1, None, None  # "Given parameter does not match an existing file in database"
