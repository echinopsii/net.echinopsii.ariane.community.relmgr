__author__ = 'stanrenia'

class NeoDAOError(Exception):
    def __repr__(self):
        return "Unspecified NeoDAO Error has occured"

class GraphFabricError(Exception):
    def __repr__(self):
        return "Graph fabric has raised an error: Invalid Graph type"

class NeoDAOAuthError(NeoDAOError):
    def __repr__(self):
        return self.args[0] + " is an incorrect Login/Password"

class NeoDAOTypeError(NeoDAOError):
    def __repr__(self):
        return self.args[0] + " is a wrong object type. It should be an ArianeNode subclass object"

class NeoDAOPropertyError(NeoDAOError):
    def __repr__(self):
        return self.args[0] + " is a wrong property. It should be an existent property in a Neo4j database's node"

class NeoDAODataFromDbError(NeoDAOError):
    def __repr__(self):
        return self.args[0] + "Data retrieved from database are corrupted. Compare Database's Data with data Model"

class NeoDAOFileNotFound(NeoDAOError):
    def __repr__(self):
        return self.args[0] + " file not found"
