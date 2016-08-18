# Ariane Release Manager
# Ariane Release Server
# User Mgr
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
__author__ = 'ikito'

from passlib.apps import custom_app_context as pwd_context
import os
import argparse


class User(object):
    id = 0
    username = ""
    password_hash = ""
    users_file = ""

    def __init__(self, id_, username, pwd):
        self.id = id_
        self.username = username
        self.password_hash = pwd

    @staticmethod
    def hash_password(password):
        return pwd_context.encrypt(password)

    def verify_password(self, password):
        return pwd_context.verify(password, self.password_hash)

    @staticmethod
    def create_user(username, pwd):
        if os.path.isfile(User.users_file):
            user_file = ""
            with open(User.users_file, "r") as target:
                user_file = target.read()
                isempty = (user_file == '')
                if isempty:
                    user_file = str(username) + ":" + str(User.hash_password(pwd))
                else:
                    print("A user is already registered. Can not add another one")
                    return 1
                    # The following code can handle multiple users. However there is an issue while jumping lines
                    
                    # already_exists = False
                    # lines = user_file.split("\n\r")
                    # for l in lines:
                    #     str_match = username+":"
                    #     if l.startswith(str_match):
                    #         user_file = ""
                    #         already_exists = True
                    #         break
                    #
                    # if not already_exists:
                    #     user_file += "\n\r" + str(username) + ":" + str(User.hash_password(pwd))
                    # else:
                    #     print("User " + username + " already exists")

            if user_file != "":
                with open(User.users_file, "w") as target:
                    target.write(user_file)
                    # LOGGER.info("User '"+username+"' was added.")
                    return 0
        else:
            with open(User.users_file, "w") as target:
                user_file = str(username) + ":" + str(User.hash_password(pwd))
                target.write(user_file)
                return 0

    @staticmethod
    def change_password(username, newpwd):
        is_changed = False
        lines = []
        with open(User.users_file, "r") as target:
            lines = target.readlines()
            match = username + ":"
            newline = ""
            newline_id = 0
            for l in lines:
                if l.startswith(match):
                    tmp = l.split(":")
                    if len(tmp) == 2:
                        tmp[1] = User.hash_password(newpwd)
                        newline = tmp[0] + ":" + tmp[1]
                        is_changed = True
                    break
                newline_id += 1
            lines[newline_id] = newline

        if is_changed:
            with open(User.users_file, "w") as target:
                target.writelines(lines)
            return 0
        return None

    @staticmethod
    def get_user(username):
        if os.path.isfile(User.users_file):
            with open(User.users_file, "r") as target:
                # user_file = json.load(target)
                lines = target.readlines()
                for l in lines:
                    r_name = l.split(":")
                    r_pwd = r_name[1]
                    r_name = r_name[0]
                    if username == r_name:
                        return User(0, username, r_pwd)
        return None

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("command",
                        help="define your Ariane ProcOS configuration file path")
    parser.add_argument("-p", "--password",
                        help="define your Ariane ProcOS configuration file path")
    parser.add_argument("-u", "--username",
                        help="define your Ariane ProcOS configuration file path")
    args = parser.parse_args()
    if args.command == "new_password":
        if args.password and args.username:
            ret = User.change_password(args.username, args.password)
            if ret == 0:
                print("Password of '"+args.username+"' has been changed")
            else:
                print("The password has not been changed")
