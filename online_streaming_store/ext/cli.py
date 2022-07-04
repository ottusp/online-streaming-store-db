from oracledb import DatabaseError, IntegrityError
from online_streaming_store.ext.db.database import Database

def init_app(app):

	tables = [
		"AMIZADE",
		"COMPRA",
		"DENUNCIA",
		"AVALIACAO",
		"CONTEM",
		"MUSICA",
		"ELENCO",
		"TRAILER",
		"DEMO",
		"JOGO",
		"AUTOR",
		"LIVRO",
		"ENDERECO_LOJA",
		"CHAT",
		"FUNCIONARIO",
		"LOJA",
		"MENSAGENS",
		"FILME",
		"POSSUI",
		"PACOTE",
		"USUARIO",
		"PRODUTO",
	]

	@app.cli.command("create-db")
	def create_db():
		"""Creates tables in database"""
		file = open("online_streaming_store/ext/db/esquema.sql")
		sql = file.read().split(";")
		file.close()

		cursor = Database.connection.cursor()
		for i in sql:
			cursor.execute(i)
		
		Database.connection.close()
		print("Database created successfully")

	@app.cli.command("populate-db")
	def populate_db():
		"""Populates database"""

		file = open("online_streaming_store/ext/db/dados.sql")
		sql = file.read().split(";")
		file.close()

		cursor = Database.connection.cursor()
		for i in sql:
			if i:
				try:
					cursor.execute(i)
				except IntegrityError as ie:
					print(f"Error on inserting command '{i}'. {ie}")
		
		Database.connection.commit()
		Database.connection.close()

	@app.cli.command("drop-db")
	def drop_db():
		"""Drops database"""

		cursor = Database.connection.cursor()
		for i in tables:
			try:
				sql = f"DROP TABLE {i}"
				cursor.execute(sql)
			except DatabaseError as de:
				print(f"Error on dropping table {i} - {de}.")
		
		Database.connection.commit()
		Database.connection.close()

		print("\nTables dropped successfully")

	@app.cli.command("empty-tables")
	def empty_tables():
		"""Empty tables"""

		cursor = Database.connection.cursor()
		for i in tables:
			try:
				sql = f"DELETE FROM {i}"
				print(sql)
				cursor.execute(sql)
			except Exception as e:
				print(f"Error on deleting table {i} - {e}.")
		
		Database.connection.commit()
		Database.connection.close()

		print("\nTables empty successfully")
