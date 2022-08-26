from config import settings
from flask import Flask

app = Flask(__name__, template_folder=settings.FRONTEND + 'templates')
app.static_url_path = settings.FRONTEND + 'static'
app.static_folder = settings.FRONTEND + 'static'

from routes import *

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=settings.DEBUG, port=settings.PORT)
