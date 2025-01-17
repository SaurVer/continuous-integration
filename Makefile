install:
		pip install --upgrade pip &&\
				pip install -r requirements.txt

tests:
		python3 -m pytest -vv test_hello.py


format:
		black *.py

lint:
		pylint --disable=R,C hello.py

all: install lint test


