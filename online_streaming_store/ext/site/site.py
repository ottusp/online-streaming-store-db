from flask import Blueprint, flash, redirect, render_template, request, url_for
from oracledb import IntegrityError

from online_streaming_store.ext.db.database import Database
from online_streaming_store.utils.helpers import snake_case_to_capital_all
from online_streaming_store.utils.errors import get_integrity_error_message

bp = Blueprint("site", __name__)

@bp.route("/")
def index():
	tables = Database.get_tables()
	return render_template("index.html", tables=tables)

@bp.route("/<string:table>")
def show_table(table):
	if not len(request.args):
		data = Database.get_all(table)
	else:
		non_empty_args = {column: value for column, value in
			filter(lambda arg: arg[1], request.args.items())}
		data = Database.get_by_args(table, non_empty_args)

	capital_headers = snake_case_to_capital_all(Database.get_headers(table))
	
	return render_template("show.html", _list=data, attr_names=capital_headers)

@bp.route("/<string:table>/search")
def search(table):
	fields = Database.get_headers(table)

	return render_template("search.html", table=table, fields=fields)

@bp.route("/<string:table>/create", methods = ['GET', 'POST'])
def template_for_creating(table):
	if request.method == 'GET':
		fields = Database.get_headers(table)

		return render_template("create.html", table=table, fields=fields)

	elif request.method == 'POST':
		try:
			Database.insert(table, request.form)
			flash(f"{table} adicionado com sucesso")

		except Exception as e:
			message = get_integrity_error_message(e)
			flash(message)

		return redirect(url_for("site.template_for_creating", table=table))
