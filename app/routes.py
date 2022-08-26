from flask import render_template
from app import app


@app.route('/')
def index():
    # return "OK!"
    return render_template('index.html', titulo='Teste')


@app.route('/glossario')
def glossario():
    return render_template('pages/glossario.html')


@app.route('/teste')
def teste():
    return render_template('pages/glossario.html')