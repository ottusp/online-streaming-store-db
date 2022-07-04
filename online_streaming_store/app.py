from flask import Flask

from online_streaming_store.ext import config
from online_streaming_store.ext import cli
from online_streaming_store.ext import template_processor
from online_streaming_store.ext import site


def create_app():
    app = Flask(__name__)

    config.init_app(app)
    cli.init_app(app)
    template_processor.init_app(app)
    site.init_app(app)
    return app
