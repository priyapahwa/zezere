PYTHON_EXE?=python3
MANAGE=venv/bin/python manage.py
ACTIVATE?=. venv/bin/activate;
GET_SECRET_KEY=`base64 /dev/urandom | head -c50`
ENV_FILE=.env

PORT = 8080

virtualenv:
	@echo "-> Making Virtual Environment"
	@${PYTHON_EXE} -m venv venv

genkey: virtualenv
	@echo "-> Generating Secret key"
	@if test -f ${ENV_FILE}; then echo ".env file exists already"; true; else \
	mkdir -p $(shell dirname ${ENV_FILE}) && touch ${ENV_FILE}; \
	echo secret_key=\"${GET_SECRET_KEY}\" > ${ENV_FILE}; \
	cat etc/env.txt >> ${ENV_FILE}; fi

dev: genkey
	@echo "-> Installing Dependencies"
	@${ACTIVATE} pip install -r etc/dev.txt
	@${ACTIVATE}mod_wsgi-express start-server


install: genkey
	@echo "-> Installing Dependencies"
	@${ACTIVATE} pip install .

zezere:
	@${ACTIVATE} cp zezere/default.conf ./zezere.conf

migrate:
	@echo "-> Creating database file"
	@${MANAGE} migrate --noinput
	@echo "-> Collecting static file"
	@${MANAGE} collectstatic

superuser:
	@${ACTIVATE} zezere-manage createsuperuser --username admin --email user@domain.tld

run: 
	./app.sh