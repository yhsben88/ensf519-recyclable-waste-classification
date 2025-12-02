.PHONY: download unzip 

env-freeze:
	pip freeze > requirements.txt
env-unkeep:
	pip install -r requirements.txt

download:
	@echo "Downloading dataset..."
	kaggle datasets download -d alistairking/recyclable-and-household-waste-classification -p data

unzip:
	python3 unzip-data.py