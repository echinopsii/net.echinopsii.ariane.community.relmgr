__author__ = 'ikito'

from passlib.apps import custom_app_context as pwd_context
import os
import argparse

class User(object):
    id = 0
    username = ""
    password_hash = ""
    users_file = ""

    def __init__(self, id, username, pwd):
        self.id = id
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
                isempty = user_file == ''
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
    def changePassword(username, newpwd):
        isChanged = False
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
                        isChanged = True
                    break
                newline_id += 1
            lines[newline_id] = newline

        if isChanged:
            with open(User.users_file, "w") as target:
                target.writelines(lines)
            return 0
        return None

    @staticmethod
    def getUser(username):
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
            ret = User.changePassword(args.username, args.password)
            if ret == 0:
                print("Password of '"+args.username+"' has been changed")
            else:
                print("The password has not been changed")
