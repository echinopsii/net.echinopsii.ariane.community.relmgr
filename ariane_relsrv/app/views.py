import requests
from flask import render_template, request
from ariane_relsrv.app import app, ariane

@app.route('/')
@app.route('/index')
def index():
    user = {'nickname': 'Miguel'}  # fake user
    module = ariane.module_service.find({"name": "idm"})
    return render_template('index.html',
                           title='Home',
                           user=user, mod=module)