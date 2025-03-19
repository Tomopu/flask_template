import os

from flask import Flask, render_template, send_from_directory

app = Flask(__name__)


@app.route("/favicon.ico")
def favicon():
    return send_from_directory(os.path.join(app.root_path, "static"), "favicon.ico", mimetype="images/favicon.ico")


@app.route("/")
def hello():
    return render_template("index.html")


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001, debug=True)
