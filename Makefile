install:
	pip3 install -e .

create-db:
	flask create-db
	flask populate-db

run:
	FLASK_APP=online_streaming_store/app.py FLASK_ENV=development flask run

clear:
	rm -rf *.egg-info