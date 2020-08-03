from flask import Flask
from jsonrpc.backend.flask import api

app = Flask(__name__)
app.register_blueprint(api.as_blueprint())


@api.dispatcher.add_method
def ping(msg):
    return msg[::-1]
