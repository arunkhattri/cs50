import os
from secrets import token_hex


class Config():
    SECRET_KEY = os.environ.get('SECRET_KEY') or token_hex(16)
    SQLALCHEMY_DATABASE_URI = 'sqlite:///books.db'
    SQLALCHEMY_TRACK_MODIFICATION = False
    KEY = os.environ.get('KEY')
