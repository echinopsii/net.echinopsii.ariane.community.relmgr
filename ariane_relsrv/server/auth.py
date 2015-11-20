
__author__ = 'ikito'

from flask import request, Response
from functools import wraps
from passlib.apps import custom_app_context as pwd_context

class User(object):
    id = 0
    username = ""
    password_hash = ""
    myUsrList = []

    def __init__(self, id, username, pwd):
        self.id = id
        self.username = username
        self.password_hash = User.hash_password(pwd)

    @staticmethod
    def hash_password(password):
        return pwd_context.encrypt(password)

    def verify_password(self, password):
        return pwd_context.verify(password, self.password_hash)

    @staticmethod
    def init_userlist():
        if len(User.myUsrList) == 0:
            User.myUsrList.append(User(12, "admin", "secret"))

    @staticmethod
    def getUser(username):
        for u in User.myUsrList:
            if u.username == username:
                return u
        return None

User.init_userlist()

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