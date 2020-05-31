from flask import Flask, request, redirect, send_from_directory, render_template, g
import pugsql

app = Flask(__name__)
queries = pugsql.module('./queries')
queries.connect('postgres://admin:1234@localhost:5432/l_nozze')


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


@app.route('/api/')
def send_css(path):
    return send_from_directory('css', path)


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)
