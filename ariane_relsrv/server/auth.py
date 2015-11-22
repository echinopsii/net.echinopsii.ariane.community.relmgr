
__author__ = 'ikito'

import os
import json
from flask import request, Response
from functools import wraps
from passlib.apps import custom_app_context as pwd_context

RELMGR_CONFIG = None
LOGGER = None
def start_auth_module(cfg, log):
    global RELMGR_CONFIG, LOGGER
    RELMGR_CONFIG = cfg
    LOGGER = log

class User(object):
    id = 0
    username = ""
    password_hash = ""

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
        if os.path.isfile(RELMGR_CONFIG.users_file):
            user_file = ""
            with open(RELMGR_CONFIG.users_file, "r") as target:
                user_file = target.read()
                isempty = user_file == ''
                if isempty:
                    user_file = str(username) + ":" + str(User.hash_password(pwd))
                else:
                    # user_file = json.load(target)
                    already_exists = False
                    lines = user_file.split("\n\r")
                    for l in lines:
                        str_match = username+":"
                        if l.startswith(str_match):
                            user_file = ""
                            already_exists = True
                            break

                    if not already_exists:
                        user_file += "\n\r" + str(username) + ":" + str(User.hash_password(pwd))
                    else:
                        LOGGER.warn("User " + username + " already exists")

            if user_file != "":
                with open(RELMGR_CONFIG.users_file, "w") as target:
                    # json.dump(user_file, target)
                    target.write(user_file)
                    LOGGER.info("User '"+username+"' was added.")
            else:
                LOGGER.warn("Can not add user. Could not read the user_password file from the configuration file")

    @staticmethod
    def getUser(username):
        if os.path.isfile(RELMGR_CONFIG.users_file):
            with open(RELMGR_CONFIG.users_file, "r") as target:
                # user_file = json.load(target)
                lines = target.readlines()
                for l in lines:
                    r_name = l.split(":")
                    r_pwd = r_name[1]
                    r_name = r_name[0]
                    if username == r_name:
                        return User(0, username, r_pwd)
        return None


# The following code is from http://flask.pocoo.org/snippets/8/
def check_auth(username, password):
    """This function is called to check if a username /
    password combination is valid.
    """
    user = User.getUser(username)
    if user is None:
        return False
    return user.verify_password(password)

def authenticate():
    """Sends a 401 response that enables basic auth"""
    return Response(
        'Could not verify your access level for that URL.\n'
        'You have to login with proper credentials', 401,
        {'WWW-Authenticate': 'Basic realm="Login Required"'})

def requires_auth(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        auth = request.authorization
        if not auth or not check_auth(auth.username, auth.password):
            return authenticate()
        return f(*args, **kwargs)
    return decorated