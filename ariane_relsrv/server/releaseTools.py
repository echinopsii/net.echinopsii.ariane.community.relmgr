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
import logging
import signal

__author__ = 'stan renia'

import os
import subprocess
import shutil
import time
import json
import re
from datetime import date

from ariane_reltreelib.command import Command
from ariane_reltreelib.dao import modelAndServices
from ariane_reltreelib import exceptions as err
from ariane_reltreelib.generator import GitTagHandler

LOGGER = logging.getLogger(__name__)

ariane = None
RELMGR_CONFIG = None
project_path = None
relmgr_path = None


class InitReleaseTools(object):
    @staticmethod
    def set_globals(myglobals):
        global RELMGR_CONFIG, ariane, LOGGER, project_path, relmgr_path
        RELMGR_CONFIG = myglobals["conf"]
        ariane = myglobals["delivery_tree"]
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

    # noinspection PyTypeChecker
    @staticmethod
    def build_component_tag_list(dep_type):
        if project_path is None:
            LOGGER.error("Initialization problem (make_components_to_tag_list:project_path is None)!")
            return 1

        dist = ariane.distribution_service.get_dev_distrib(dep_type=dep_type)
        if dist.editable == "true":
            ariane.distribution_service.update_arianenode_lists(dist)
            for m in dist.list_component:
                LOGGER.debug("ReleaseTools.build_component_tag_list = {" + m.name + "," + m.version + "}")
                mpath = os.path.join(project_path, m.get_directory_name())
                mversion = m.version

                if "SNAPSHOT" not in mversion:
                    if not GitTagHandler.is_git_tagged(mversion, path=mpath):
                        LOGGER.info("ReleaseTools.build_component_tag_list - add  {" + m.name + "," + m.version +
                                     "} to components to tag list")
                        GitManager.COMPONENTS_TO_TAG.append(m.name)
                    else:
                        GitManager.COMPONENTS_EXCEPTIONS.append(m.name)
                else:
                    GitManager.COMPONENTS_EXCEPTIONS.append(m.name)

    @staticmethod
    def update_version(version, position="minor", operation="inc"):
        LOGGER.debug("ReleaseTools.update_version: {" + str(version) + ", " + str(position) + ", " +
                     str(operation) + "}")

        if "-SNAPSHOT" in version:
            version = version.split("-SNAPSHOT")[0]
        else:
            version_suffix = None
            if version.split("-").__len__() > 1:
                version_suffix = version.split("-")[1]
                version = version.split("-")[0]

            if position == "minor":
                v = version.split('.')
                if operation == "inc":
                    v[-1] = str(int(v[-1]) + 1)  # Increments minor number of the version
                version = '.'.join(v)

            if version_suffix is not None:
                version = version + "-" + version_suffix

        return version

    # noinspection PyTypeChecker
    @staticmethod
    def export_db(erase_genuine_file=False):
        """
        :param erase_genuine_file: if True, erase the 'all.cypher' file located in
        ariane.community.relmgr/bootstrap/dependency_db/
            Knowing that this file is used for resetting the Database by calling ResetReset's POST
            (click on 'Reset' button from the UI)
        :return:
        """
        if relmgr_path is None:
            LOGGER.error("Initialization problem (export_new_distrib:relmgr_path is None)!")
            return 1

        todaydate = date.today().strftime("%d%m%y")
        path = RELMGR_CONFIG.db_export_path
        backp = os.getcwd()
        LOGGER.info("ReleaseTools.export_db - DB export init ...")

        if erase_genuine_file:
            export_target = os.path.join(relmgr_path, "bootstrap", "dependency_db", "all.cypher")
            LOGGER.info("ReleaseTools.export_db - DB export to " + export_target + " in progress ...")
            child = subprocess.Popen(RELMGR_CONFIG.neo4j_path+"/bin/neo4j-shell -c dump > " +
                                     export_target, shell=True)
            while child.poll() is None:
                time.sleep(10)
                LOGGER.info("ReleaseTools.export_db - DB export to " + export_target + " in progress ...")

            rc = child.returncode
            if rc == 0:
                LOGGER.info("ReleaseTools.export_db - DB export to " + export_target + " ... DONE !")
                return 0
            else:
                LOGGER.error("ReleaseTools.export_db - DB export to " + export_target + " ... FAILED !")
                return 1
        else:
            if os.path.exists(path):
                os.chdir(path)
                f_name = "all.cypher"
                if os.path.isfile(f_name):
                    f_name = "all_"+todaydate+".cypher"
                    if os.path.isfile(f_name):
                        same_files = []
                        for (dp, dn, fn) in os.walk("."):
                            same_files = [f for f in fn if todaydate in f]
                            same_files = sorted(same_files, reverse=True)
                            break
                        if len(same_files) == 1:
                            f_name = same_files[0].split('.')
                            f_name = f_name[0] + '_1.cypher'
                        else:
                            tmp = same_files[0].split('_')
                            tmp = tmp[-1].split('.')
                            tmp = str(int(tmp[0])+1)
                            f_name = "all_"+todaydate+"_"+tmp+".cypher"
                    shutil.copy("all.cypher", f_name)
                    LOGGER.info("ReleaseTools.export_db - previous export has been stored in file " +
                                path + os.sep + f_name)
                os.chdir(backp)

                export_target = os.path.join(path, "all.cypher")
                LOGGER.info("ReleaseTools.export_db - DB export to " + export_target + " in progress ...")
                child = subprocess.Popen(RELMGR_CONFIG.neo4j_path+"/bin/neo4j-shell -c dump > " +
                                         export_target, shell=True)
                while child.poll() is None:
                    time.sleep(10)
                    LOGGER.info("ReleaseTools.export_db - DB export to " + export_target + " in progress ...")

                rc = child.returncode
                if rc == 0:
                    LOGGER.info("ReleaseTools.export_db - DB export to " + export_target + " ... DONE !")
                    return 0
                else:
                    LOGGER.error("ReleaseTools.export_db - DB export to " + export_target + " ... FAILED !")
                    return 1
            else:
                LOGGER.warn("ReleaseTools.export_db -  could not build new .cypher: path= '" + path +
                            "' does not exists !")
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
        dev = ariane.distribution_service.get_dev_distrib(dep_type=d.dep_type)
        if dev == d:
            LOGGER.info("DatabaseManager.make_release_distrib - build new working copy from selected snapshot (" +
                        d.version + "," + d.dep_type + ") ...")
            cd = DatabaseManager.create_distrib_copy(d)
            if cd is None or cd == -1:
                return 1, "Distribution copy already exists in database"
            cd.version = ReleaseTools.update_version(cd.version)
            cd.save()
            components = ariane.component_service.get_all(cd)
            for co in components:
                old_version = co.version
                co.version = ReleaseTools.update_version(co.version)
                co.save()
                LOGGER.info("DatabaseManager.make_release_distrib - " + co.name + " version updated from " +
                            old_version + " to " + co.version + "...")

            return 0, cd

    @staticmethod
    def get_distrib_copies(cpy_dev=None):
        if cpy_dev is None:
            cpy_dev = ariane.distribution_service.get_all()
        cpy_dev = [cd for cd in cpy_dev if "copyTemp" in cd.version]
        return cpy_dev

    @staticmethod
    def create_distrib_copy(d):
        dev = ariane.distribution_service.get_dev_distrib(dep_type=d.dep_type)
        if dev.editable == "true":
            exist_cpy = DatabaseManager.get_distrib_copies()
            if len(exist_cpy) > 0:
                return -1
            cd = modelAndServices.DistributionService.copy_distrib(d)
            # Modify current Distrib name but save this name by adding 'copyTemp' before
            ReleaseTools.distrib_copy_id = d.id
            d.name = "copyTemp" + d.name
            d.version = "copyTemp" + d.version
            d.editable = "false"
            d.save()
            return cd
        return None

    @staticmethod
    def create_snap_distrib(distrib=None):
        if distrib is None:
            distrib = ariane.distribution_service.get_dev_distrib()

        if not isinstance(distrib, modelAndServices.Distribution):
            return 1  # "Server can not find the actual DEV Distribution"

        newsnap = modelAndServices.DistributionService.copy_distrib(distrib)
        newsnap.dep_type = "TBD"
        newsnap.save()
        return newsnap

    @staticmethod
    def create_dev_distrib(dep_type="mno"):
        """
        :return 0: success, 1: interal error, can not find the actual DEV Distribution, 2 | 3:
        The actual DEV Distribution is already in a '-SNAPSHOT' version
        """
        snapshot = "-SNAPSHOT"
        dev = ariane.distribution_service.get_dev_distrib(dep_type=dep_type)
        if not isinstance(dev, modelAndServices.Distribution):
            return 1  # "Server can not find the actual DEV Distribution"

        if dev.editable != "true":
            return 2  # The actual DEV Distribution is already in a '-SNAPSHOT' version

        if snapshot in dev.version:
            return 3  # Same as 2

        newdev = modelAndServices.DistributionService.copy_distrib(dev)
        dev.editable = "false"
        dev.save()
        newdev.editable = "true"
        newdev.version = ReleaseTools.update_version(newdev.version)
        newdev.version += snapshot
        newdev.save()
        components = ariane.component_service.get_all(newdev)
        for m in components:
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
        LOGGER.debug("DatabaseManager.remove_genuine_distrib - " + str(dcopies))
        if len(dcopies) > 0:
            dcopies = DatabaseManager.get_distrib_copies(dcopies)
            LOGGER.debug("DatabaseManager.remove_genuine_distrib - " + str(dcopies))
            if len(dcopies) > 1:
                LOGGER.warn("MULTIPLE DISTRIB COPIES WERE FOUND IN DATABASE")
            if len(dcopies) == 0:
                return -1
            for d in dcopies:
                LOGGER.debug("DatabaseManager.remove_genuine_distrib - " + str(d))
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
        if (isinstance(cd, modelAndServices.Distribution)) and (cd.editable == "true"):
            cd.delete()
        else:
            cd = ariane.distribution_service.find({"editable": "true"})
            if isinstance(cd, modelAndServices.Distribution):
                cd.delete()
            elif isinstance(cd, list):
                for c in cd:
                    c.delete()
            else:
                return -1
        dist = ariane.get_unique(ariane.distribution_service, {"nID": ReleaseTools.distrib_copy_id})
        if isinstance(dist, modelAndServices.Distribution):
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
    def reset_dev_distrib(dep_type):
        """
        Reinitialize values of the DEV Distribution copy, using the original DEV Distribution.
        :return: None
        """
        dev = ariane.distribution_service.get_dev_distrib(dep_type=dep_type)
        if not isinstance(dev, modelAndServices.Distribution):
            return 1
        if dev.editable != "true":
            return 2
        cpy_dev = DatabaseManager.get_distrib_copies()
        if len(cpy_dev) == 0:
            return 3
        if len(cpy_dev) > 1:
            return 4

        cpy_dev = cpy_dev[0]
        cpy_mod = ariane.component_service.get_all(cpy_dev)
        dev_mod = ariane.component_service.get_all(dev)
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
    def make_dev_distrib(dep_type):
        """
        Make the new DEV distrib from the latest released. This method uses other DatabaseManager's static methods
         to proceed, such as 'create_dev_distrib()', 'remove_genuine_distrib()' and 'create_distrib_copy()'
        :return: 'newdevcp' : the copy of the DEV distrib which was created. Next edition will be affected to this copy
        """
        LOGGER.info("DatabaseManager.make_dev_distrib - build new DEV distribution... in progress.")
        newdev = DatabaseManager.create_dev_distrib(dep_type)
        if not isinstance(newdev, modelAndServices.Distribution):
            if newdev == 1:
                return 1  # "Server can not find the actual DEV Distribution"
            elif newdev in [2, 3]:
                return 2  # "A component of the actual DEV Distribution is already in a '-SNAPSHOT' version"
        LOGGER.info("DatabaseManager.make_dev_distrib - build new DEV distribution... DONE.")
        LOGGER.info("DatabaseManager.make_dev_distrib - clean old distrib working copy... in progress.")
        DatabaseManager.remove_genuine_distrib()
        LOGGER.info("DatabaseManager.make_dev_distrib - clean old distrib working copy... DONE.")
        LOGGER.info("DatabaseManager.make_dev_distrib - building new working copy... in progress.")
        newdevcp = DatabaseManager.create_distrib_copy(newdev)
        if not isinstance(newdev, modelAndServices.Distribution):
            if newdevcp == -1:
                # "Error occurred while copying the New DEV Distribution into the "
                # "database: A copy already exists."
                return 3
            # "Error occurred while copying the New DEV Distribution into the database"
            return 4
        LOGGER.info("DatabaseManager.make_dev_distrib - building new working copy... DONE.")
        ReleaseTools.export_db()
        return newdevcp

    @staticmethod
    def sync_db_from_last_dev(dep_type="mno"):
        dev = ariane.distribution_service.get_dev_distrib(dep_type=dep_type)
        if not isinstance(dev, modelAndServices.Distribution):
            return 1
        if dev.editable != "true":
            return 2
        cpy_dev = DatabaseManager.get_distrib_copies()
        if len(cpy_dev) > 0:
            return 3
        ariane.distribution_service.sync_db_from_last_dev(dev)
        return 0

    # noinspection PyTypeChecker
    @staticmethod
    def reset_database():
        if relmgr_path is None:
            LOGGER.error("Initialization problem (reset_database:relmgr_path is None)!")
            return 1

        alldistrib_file = "all.cypher"

        fpath = os.path.join(relmgr_path, "bootstrap", "dependency_db", alldistrib_file)

        if os.path.isfile(fpath):
            ariane.delete_all()
            LOGGER.info("DatabaseManager.reset_database - database reset ... in progress.")
            LOGGER.debug(RELMGR_CONFIG.neo4j_path+"/bin/neo4j-shell -file " + fpath)

            child = subprocess.Popen(RELMGR_CONFIG.neo4j_path+"/bin/neo4j-shell -file " + fpath,
                                     shell=True)

            while child.poll() is None:
                time.sleep(10)
                LOGGER.info("DatabaseManager.reset_database - database reset ... in progress.")

            rc = child.returncode
            if rc == 0:
                LOGGER.info("DatabaseManager.reset_database - database reset ... DONE.")
                return 0, ""
            else:
                LOGGER.error("DatabaseManager.reset_database - database reset ... FAILED.")
                return 1, fpath  # "Error while importing '"+fpath+"', file was not found "
        else:
            LOGGER.error("DatabaseManager.reset_database - database reset ... FAILED.")
            return 1, fpath  # "Error while importing '"+fpath+"', file was not found "


class GitManager(object):
    COMPONENTS_TO_TAG = []
    COMPONENTS_EXCEPTIONS = []
    PLUGINS_TO_TAG = []
    commit_comment = ""

    @staticmethod
    def commit_element(m, mpath, commit, comment, mode):
        rets = {"path_errs": ""}
        errs = ""
        warns = ""
        if os.path.exists(mpath):
            os.chdir(mpath)
            if subprocess.call("git add ./", shell=True) != 0:
                LOGGER.error("error_on_add("+m.name+");")
                errs += "error_on_add("+m.name+"); "
            else:
                LOGGER.info("GitManager.commit_element - " + m.name+" ("+m.version+") added")
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
                        LOGGER.warn("GitManager.commit_element - warning_on_tag("+m.name+" "+m.version+"): "+line+"; ")
                        break
                    if "error" in line:
                        LOGGER.error("GitManager.commit_element - error_on_commit(" + m.name + "): " + comment + "" + line + "; ")
                        errs += "error_on_commit(" + m.name + "): " + comment + "" + line + "; "
                        break
                if errs == "":
                    if subprocess.call("git push ", shell=True) != 0:
                        LOGGER.error("GitManager.commit_element - error_on_push("+m.name+"): " + m.version + ";")
                        errs += "error_on_push("+m.name+"): " + m.version + "; "
                    else:
                        LOGGER.info("GitManager.commit_element - " + m.name+"("+m.version+") pushed")
                        if mode == "Release":
                            LOGGER.info("GitManager.commit_element - " + m.name+"("+m.version+") commited")
                            if subprocess.call("git tag " + m.version, shell=True) != 0:
                                LOGGER.error("GitManager.commit_element - error_on_tag("+m.name+" "+m.version+"); ")
                                errs += "error_on_tag("+m.name+" "+m.version+"); "
                            else:
                                LOGGER.info("GitManager.commit_element - " + m.name+"("+m.version+") tagged")
                                if subprocess.call("git push origin " + m.version, shell=True) != 0:
                                    LOGGER.error("GitManager.commit_element - error_on_push_origin("+m.name+"): " + m.version + ";")
                                    errs += "error_on_push_origin("+m.name+"): " + m.version + "; "
                                else:
                                    LOGGER.info("GitManager.commit_element - " + m.name+"("+m.version+") origin pushed")
        else:
            rets["path_errs"] = mpath
        rets["errs"] = errs
        rets["warns"] = warns
        return rets

    # noinspection PyTypeChecker
    @staticmethod
    def commit_distrib(args):

        if project_path is None:
            LOGGER.error("Initialization problem (commit_distrib:project_path is None)!")
            return 1

        dist_dep_type = args["dist_dep_type"]
        mode = args["mode"]
        comment = args["comment"]
        isdistrib = args["isdistrib"]
        isplugin = args["isplugin"]

        # git commit -m "task comment" ./
        # git tag version_component
        # git push origin  version_component

        dist = ariane.distribution_service.get_dev_distrib(dep_type=dist_dep_type)
        if not isinstance(dist, modelAndServices.Distribution):
            return 1, "", ""  # "Server can not find the current Distribution to commit"

        LOGGER.info("GitManager.commit_distrib - start " + mode + " Distribution(" + dist.version + ") commit-tag-push ...")
        errs = ""
        warns = ""
        path_errs = []
        GitManager.commit_comment = comment
        commit = "git commit -m \""+GitManager.commit_comment+"\" ./"

        if isdistrib:
            rets = GitManager.commit_element(dist, os.path.join(
                project_path, ReleaseTools.get_distrib_path(dist)
            ), commit, comment, mode)

            errs += rets["errs"]
            warns += rets["warns"]
            if rets["path_errs"] != "":
                path_errs.append(rets["path_errs"])
        else:
            if isplugin:
                mod_plugs = ariane.plugin_service.get_all(dist)
            else:
                mod_plugs = ariane.component_service.get_all(dist)
            for m in mod_plugs:
                if isplugin:
                    if m.name not in GitManager.PLUGINS_TO_TAG:
                        LOGGER.warn(m.name+" (" + m.version + ") not in plugins to tag")
                        continue
                else:
                    if mode == "Release" and m.name not in GitManager.COMPONENTS_TO_TAG:
                        LOGGER.warn(m.name + " (" + m.version + ") not in components to tag")
                        continue
                    mpath = os.path.join(project_path, m.get_directory_name())
                    rets = GitManager.commit_element(m, mpath, commit, comment, mode)
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
                message = "'distrib' component from" + mode + "Distribution ("+dist.version+") Commit-Tag-Push done"
            elif isplugin:
                message = "plugins from  " + mode + " Distribution ("+dist.version+") Commit-Tag-Push done"
            else:
                message = "components from  " + mode + " Distribution ("+dist.version+") Commit-Tag-Push done"
        LOGGER.info("GitManager.commit_distrib - " + message)
        return 0, message, warns

    # noinspection PyTypeChecker
    @staticmethod
    def checkout_distrib(dist, isplugin=False):
        if project_path is None:
            LOGGER.error("Initialization problem (checkout_distrib:project_path is None)!")
            return 1

        if not isinstance(dist, modelAndServices.Distribution):
            return 1

        LOGGER.info("GitManager.checkout_distrib - clean repositories...")
        # First Checkout 'ariane.community.distrib' files: most of these files are versioned so we need to
        # remove them.
        # dirpath = os.path.join(project_path, ReleaseTools.get_distrib_path(dist))
        # subprocess.call("git clean -f", shell=True, cwd=dirpath)
        # subprocess.call("git checkout .", shell=True, cwd=dirpath)
        # LOGGER.info("distrib clean and checkout")
        # Second, Checkout all other components/Plugins files. There are 2 verisoned files (.plan et .json build)
        # so we remove them. For the not versioned files we use 'git checkout'. Plugin checkout is optionnal
        components = ariane.component_service.get_all(dist)
        if isplugin:
            plugins = ariane.plugin_service.get_all(dist)
            components.extend(plugins)

        for m in components:
            dirpath = os.path.join(project_path, m.get_directory_name() + '/')
            subprocess.call("git clean -f", shell=True, cwd=dirpath)
            subprocess.call("git checkout .", shell=True, cwd=dirpath)
            LOGGER.info("GitManager.checkout_distrib - " + m.name + " is now clean.")
        return 0

    # noinspection PyTypeChecker
    @staticmethod
    def pull_checkout_distrib(dist, isplugin=False):
        if project_path is None:
            LOGGER.error("GitManager.pull_checkout_distrib - Initialization problem "
                         "(pull_checkout_distrib:project_path is None)!")
            return 1

        LOGGER.info("GitManager.pull_checkout_distrib - check if repositories are up-to-date...")
        components = ariane.component_service.get_all(dist)
        plugins = ariane.plugin_service.get_all(dist)

        errs = ""
        for comp in components:
            p = os.path.join(project_path, comp.get_directory_name())
            if os.path.exists(p):
                branches = subprocess.check_output(['git', 'branch'], cwd=p)
                if comp.branch not in str(branches):
                    if subprocess.call('git branch -v -a', shell=True, cwd=p) != 0:
                        errs += "error while getting other remote git branches {} \n".format(p)
                    if subprocess.call(
                            'git checkout -b ' + comp.branch + ' remotes/origin/' + comp.branch,
                            shell=True, cwd=p) != 0:
                        errs += "error while checkout remote branch {} \n".format(comp.branch)
                    branches = subprocess.check_output(['git', 'branch'], cwd=p)
                if ("* " + comp.branch) not in str(branches):
                    if subprocess.call('git checkout ' + comp.branch, shell=True, cwd=p):
                        errs += "error while checkout on branch {} \n".format(comp.branch)

                status = subprocess.check_output(['git', 'status'], cwd=p)
                if 'Changes not staged for commit' in str(status) or 'Untracked files:' in str(status):
                    errs += "current git local repository has diff {} \n".format(p)
                # if subprocess.call('git checkout ./', shell=True, cwd=p) != 0:
                #     errs += "error while git checkout {}-".format(p)
                if subprocess.call('git pull', shell=True, cwd=p) != 0:
                    errs += "error while git pull {}-".format(p)
                LOGGER.info("GitManager.pull_checkout_distrib - " + comp.name + " is up-to-date")

        if isplugin:
            for plug in plugins:
                p = os.path.join(project_path, plug.get_directory_name())
                if os.path.exists(p):
                    # if subprocess.call('git checkout ./', shell=True, cwd=p) != 0:
                    #     errs += "error while git checkout {}-".format(p)
                    status = subprocess.check_output(['git', 'status'], cwd=p)
                    if 'Changes not staged for commit' in str(status) or 'Untracked files:' in str(status):
                        errs += "current git local repository has diff {}-".format(p)
                    if subprocess.call('git pull', shell=True, cwd=p) != 0:
                        errs += "error while git pull {}-".format(p)

        if errs != "":
            LOGGER.warn("GitManager.pull_checkout_distrib - checks done but errors occured for some repositories: " +
                        errs)
            return 1, errs
        else:
            LOGGER.info("GitManager.pull_checkout_distrib - ... done !")
            return 0, errs

    # noinspection PyTypeChecker
    @staticmethod
    def rollback_checkout_tags(dep_type="mno", isdistrib=False, isplugin=False):
        if project_path is None:
            LOGGER.error("Initialization problem (checkout_tags:project_path is None)!")
            return 1

        # git tag -d version_component
        # git push origin :refs/tags/version_component
        # if git log -1 --pretty=%B | grep "last commit ticket + last commit comment" == 0
        #    git reset --hard HEAD~1
        backpath = os.getcwd()
        LOGGER.info("GitManager.rollback_checkout_tags - rollback last git ops in progress... ")
        dist = ariane.distribution_service.get_dev_distrib(dep_type=dep_type)
        if not isinstance(dist, modelAndServices.Distribution):
            return 1, ""  # "Server can not find the current Distribution to commit"

        if isplugin:
            mod_plugs = ariane.plugin_service.get_all(dist)
        else:
            mod_plugs = ariane.component_service.get_all(dist)
        errs = ""
        path_errs = []
        # Handle 'distrib' component
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
                        if subprocess.call("git log -1 --pretty=%B | grep '" + re.escape(GitManager.commit_comment) +
                                           "'", shell=True) != 0:
                            LOGGER.info("GitManager.rollback_checkout_tags - "
                                        "no need to reset last commit in distrib repository")
                        else:
                            if subprocess.call("git reset --hard HEAD~1", shell=True) != 0:
                                errs += "error_on_reset:distrib( " + dist.version + "); "
                            else:
                                if subprocess.call("git push --force origin master", shell=True) != 0:
                                    errs += "error_on_reset_commit: distrib(" + dist.version + "); "
                                else:
                                    LOGGER.info("GitManager.rollback_checkout_tags - "
                                                "rollback git ops on distrib repository ... DONE.")

        for m in mod_plugs:
            if isplugin:
                if m.name not in GitManager.PLUGINS_TO_TAG:
                    continue
            else:
                if m.name not in GitManager.COMPONENTS_TO_TAG:
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
                                LOGGER.info("GitManager.rollback_checkout_tags - "
                                            "no need to reset last commit in " + m.name +" repository")
                            else:
                                if subprocess.call("git reset --hard HEAD~1", shell=True) != 0:
                                    errs += "error_on_reset: "+m.name+"(" + m.version + "); "
                                else:
                                    if subprocess.call("git push --force origin " + m.branch, shell=True) != 0:
                                        errs += "error_on_reset_commit: " + m.name + "(" + m.branch + "/" + \
                                                m.version + "); "
                                    else:
                                        LOGGER.info("GitManager.rollback_checkout_tags - "
                                                    "rollback git ops on " + m.name + " repository ... DONE.")
                else:
                    path_errs.append(mpath)

        os.chdir(backpath)
        if len(path_errs) > 0:
            errs += "GitManager.rollback_checkout_tags - error: Following paths does not exist {} ; ".format(path_errs)
        if len(errs) > 0:
            message = "GitManager.rollback_checkout_tags - errors occured. Please correct them manually.\n" + errs
            LOGGER.error(message)
            return 2, message
        else:
            message = "GitManager.rollback_checkout_tags - rollback last git ops ... DONE. "
            LOGGER.info(message)
        return 0, message


class BuildManager(object):
    path_zip = ""
    zipfile = ""

    @staticmethod
    def build_distrib(version, from_tags, dep_type):
        # Command is either 'distpkgr master.SNAPSHOT'
        # or 'distpkgr {version}.SNAPSHOT' where {version} is version's value (i.e version= '0.6.4')
        LOGGER.info("BuildManager.build_distrib - build distrib (" + version + "," + dep_type + ") begins...")
        if "SNAPSHOT" in version:
            # version = "master.SNAPSHOT"
            version_cmd = version
        else:
            if from_tags:
                version_cmd = version
            else:
                version_cmd = version + ".SNAPSHOT"

        # Remove existing zip target directory (recreated by distribmgr)
        path_zip = BuildManager.path_zip
        if os.path.exists(path_zip):
            shutil.rmtree(path_zip)

        cmd_slack = ""
        if RELMGR_CONFIG.url_slack != "":
            cmd_slack = "-s " + RELMGR_CONFIG.url_slack
            LOGGER.info("BuildManager.build_distrib - notifications will be pushed on Slack (" +
                        RELMGR_CONFIG.url_slack + ")")

        cmd = "./distribManager.py " + cmd_slack + " distpkgr " + version_cmd + " " + dep_type
        LOGGER.debug("BuildManager.build_distrib - " + cmd)
        build_done = False
        child = subprocess.Popen(cmd, shell=True, cwd=project_path + "/ariane.community.distrib")

        LOGGER.debug("BuildManager.build_distrib - call (" + version_cmd + ", " + dep_type + ") in progress... ")
        while child.poll() is None:
            time.sleep(10)
            LOGGER.info("BuildManager.build_distrib - build distrib (" + version + "," + dep_type +
                        ") in progress...")

        rc = child.returncode
        if rc == 0:
            for (dp, dn, fn) in os.walk(path_zip):
                if len(fn) == 1:
                    BuildManager.zipfile = fn[0]
                    build_done = True
                    break

        if build_done:
            LOGGER.info("BuildManager.build_distrib - build distrib (" + version + "," + dep_type + ") ... DONE !")
            return 0
        else:
            LOGGER.error("BuildManager.build_distrib - build distrib (" + version + "," + dep_type + ") ... FAILED !")
            return 1  # "Error while building"

    @staticmethod
    def compile():
        child = subprocess.Popen("mvn clean install -DskipTests", shell=True, cwd=project_path)
        LOGGER.debug("BuildManager.compile - call maven compil in progress... ")
        while child.poll() is None:
            time.sleep(10)
            LOGGER.info("BuildManager.compile - in progress...")

        mvn_done = False
        rc = child.returncode
        if rc == 0:
            mvn_done = True
        if mvn_done:
            LOGGER.info("BuildManager.compile - ... DONE !")
            return 0
        else:
            LOGGER.info("BuildManager.compile - ... FAILED !")
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
    def generate_files(cmd_str, version, dep_type="mno"):
        LOGGER.debug("FileGenManager.generate_files: {" + str(cmd_str) + ", " + str(version) + ", " +
                     str(dep_type) + "}")
        GitManager.COMPONENTS_EXCEPTIONS = []
        GitManager.COMPONENTS_TO_TAG = []
        if ReleaseTools.build_component_tag_list(dep_type) == -1:
            return 1, None  # "There is no copy of the master SNAPSHOT Distribution"

        cmd = Command(dao_ariane=ariane, project_path=project_path)
        # cmd.gen.set_release_component_exceptions(GitManager.COMPONENTS_EXCEPTIONS)
        try:
            cmd.execute(cmd_str, version, None, dep_type=dep_type)
            return 0, None
        except err.CommandError as cmderr:
            return 2, cmderr

    # noinspection PyTypeChecker
    @staticmethod
    def get_file_diff(nid):
        if project_path is None:
            LOGGER.error("Initialization problem (get_file_diff:project_path is None)!")
            return 1

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
