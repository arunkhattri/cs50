# pylint: disable=missing-docstring, too-few-public-methods

import os
from secrets import token_hex


class Config():
    SECRET_KEY = os.environ.get('SECRET_KEY') or token_hex(16)
    ACCESS_KEY = "6fce700a385113eb70295be225f8a704"
