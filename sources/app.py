from flask import Flask

app = Flask(__name__)


@app.route("/")
def home():
    return "<h>Hello World!!!!</h1>"


if __name__ == "__main__":
    app.run(host='0.0.0.0',debug=True)