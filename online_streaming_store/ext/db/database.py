import oracledb
import os

class Database:

	connection = oracledb.connect(user=os.environ["DATABASE_USER"],
						password=os.environ["DATABASE_USER"],
						dsn=os.environ["DATABASE_URI"] + "/" + os.environ["DATABASE_SERVICE"])

	@staticmethod
	def get_tables():
		cursor = Database.connection.cursor()

		sql = """
		SELECT table_name FROM ALL_TABLES
		WHERE TABLESPACE_NAME = 'USERS'
		"""

		res = cursor.execute(sql)

		return [''.join(i) for i in res]

	@staticmethod
	def get_all(table):
		cursor = Database.connection.cursor()

		sql = f"SELECT * FROM {table}"
		return list(cursor.execute(sql))

	@staticmethod
	def get_by_args(table, args):
		args_list = list(args.items())
		where_clause = ' AND '.join(map(
			lambda filter: f"{filter[0] if filter[1].isnumeric() else f'UPPER({filter[0]})'} = '{filter[1].upper()}'",
			args_list))

		sql = f"""
			SELECT * FROM {table}
			WHERE {where_clause}
		"""

		cursor = Database.connection.cursor()
		return list(cursor.execute(sql))

	@staticmethod
	def get_headers(table):
		cursor = Database.connection.cursor()

		sql = f"""SELECT column_name
			FROM USER_TAB_COLUMNS
			WHERE TABLE_NAME = '{table.upper()}'
			"""

		res = cursor.execute(sql)

		return [''.join(i) for i in res]

	@staticmethod
	def insert(table, args):
		cursor = Database.connection.cursor()

		columns = [column for column in args]
		values = [f"'{values}'" for (column, values) in args.items()]

		sql = f"""
		INSERT INTO {table} ({','.join(columns)})
			VALUES ({','.join(values)})
		"""

		cursor.execute(sql)
		Database.connection.commit()
		
