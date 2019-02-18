from ark.interfaces.plugin import IPlugin

from .database import Database


class Plugin(IPlugin):
    name = 'database'

    def register(self, app):
        return Database(app)
