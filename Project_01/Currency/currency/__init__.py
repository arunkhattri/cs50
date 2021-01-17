# pylint: disable=missing-docstring, invalid-name, wrong-import-position
# pylint: disable=import-self

from flask import Flask
from config import Config


app = Flask(__name__)
app.config.from_object(Config)


from currency import routes  # noqa: E402, F401
