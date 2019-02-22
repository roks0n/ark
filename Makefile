test:
	py.test -vv -s -x $(ARGS)

remove-pyc:
	find . -name "*.pyc" -delete


create-migrations:
	cd ark/plugins/database_peewee; python create_migrations.py

migrate:
	cd ark/plugins/database_peewee; python migrate.py


black:
	black .

black-check:
	black --check .


profile:
	python -m cProfile -o spongebob.prof spongebob.py

snakeviz:
	snakeviz spongebob.prof