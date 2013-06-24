# This must be added in order to do correct path lookups for the views
from bottle import route, template, default_app

@route('/')
def index():
	return template('index')

@route('/grantee/<name>')
def search(name=None):
	if name is None:
		return index()
	return template('grantee', name=name)

@route('/<appid>')
@route('/<appid>/<productid>')
def search(appid=None, productid=None):
	if appid is None:
		return index()
	if productid is None:
		productid = ''
	if len(appid) > 5:
		productid = appid[5:] + productid
		appid = appid[:5]
	return template('search', appid=appid, productid=productid)

application=default_app()
