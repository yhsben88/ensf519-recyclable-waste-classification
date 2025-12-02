.PHONY: download unzip 

download unzip

download:
	@echo "Downloading dataset..."
	kaggle datasets download -d alistairking/recyclable-and-household-waste-classification -p data

unzip:
	python3 unzip-data.py