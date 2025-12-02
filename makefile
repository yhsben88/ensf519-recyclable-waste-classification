.PHONY: download unzip 

# Make changes to environment
env-freeze:
	pip freeze > requirements.txt

# Stay up to date with latest environment changes
env-upkeep:
	pip install -r requirements.txt

# Get data from web to local repo
download:
	@echo "Downloading dataset..."
	kaggle datasets download -d alistairking/recyclable-and-household-waste-classification -p data

# Unzip data
unzip:
	python3 unzip-data.py