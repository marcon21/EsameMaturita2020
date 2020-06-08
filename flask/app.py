from flask import Flask, redirect, send_from_directory, render_template
from modules.db import queries, db
from modules.weddings import bp as weddingsbp
from modules.weddinglist import bp as weddinglistbp
from modules.people import bp as peoplebp

app = Flask(__name__)
app.register_blueprint(weddingsbp)
app.register_blueprint(weddinglistbp)
app.register_blueprint(peoplebp)

# redirect to the home page
@app.route('/')
def root():
    return redirect("/home")

# 404 error handler
@app.errorhandler(404)
def page_not_found(e):
    return render_template('error.html', error_message="Page not found")

# send the js files
@app.route('/js/<path:path>')
def send_js(path):
    return send_from_directory('js', path)

# send the css files
@app.route('/css/<path:path>')
def send_css(path):
    return send_from_directory('css', path)

# send favicon.ico
@app.route('/favicon.ico')
def favicon():
    return send_from_directory('./', 'favicon.ico', mimetype='image/vnd.microsoft.icon')


@app.route('/home')
def home():
    return render_template('home.html')


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)
