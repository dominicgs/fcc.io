# This must be added in order to do correct path lookups for the views
from bottle import route, template, default_app, static_file, run
import string

@route('/')
@route('/index.html')
def index():
	return static_file('index.html', root='/var/www/fccio/static')

@route('/favicon.ico')
def favicon():
	return static_file('favicon.ico', root='/var/www/fccio/static')

@route('/robots.txt')
def favicon():
	return static_file('robots.txt', root='/var/www/fccio/static')

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

	if appid[0] in string.ascii_letters:
		app_len = 3
	elif appid[0] in string.digits:
		app_len = 5
	else:
		return index()

	if len(appid) > app_len:
		productid = appid[app_len:] + productid
		appid = appid[:app_len]
	return template('search', appid=appid, productid=productid)

application=default_app()

if __name__ == '__main__':
	run(host='localhost', port=8080, debug=True)