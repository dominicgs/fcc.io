# Change working directory so relative paths (and template lookup) work again
import os
os.chdir(os.path.dirname(__file__))

import sys
sys.path.insert(0, os.path.dirname(__file__))

import bottle
import fccio

class StripPathMiddleware(object):
	def __init__(self, app):
		self.app = app
	def __call__(self, e, h):
		e['PATH_INFO'] = e['PATH_INFO'].rstrip('/')
		return self.app(e,h)

# Do NOT use bottle.run() with mod_wsgi
application = StripPathMiddleware(bottle.default_app())

