from dotenv import load_dotenv

def init_app(app):
	app.config["SECRET_KEY"] = "banco de dados"
	load_dotenv()