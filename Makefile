install:
	python -m venv venv &&\
	. venv/bin/activate &&\
	python -m pip install --upgrade pip &&\
	pip install -r requirements.txt
install-aws:
	. venv/bin/activate &&\
	python -m pip install --upgrade pip &&\
	pip install -r requirements-aws.txt
install-amazon-linux:
	. venv/bin/activate &&\
	python -m pip install --upgrade pip &&\
	pip install -r amazon-linux.txt
lint:
	pylint --disable=R,C hello.py
format:
	black *.py
test:
	python -m pytest -vv test_hello.py