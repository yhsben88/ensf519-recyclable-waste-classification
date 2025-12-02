from zipfile import ZipFile
FILE_DIR = "data/recyclable-and-household-waste-classification.zip"
TARGET_DIR = "data"
with ZipFile(FILE_DIR, 'r') as zip:
    zip.extractall(path=TARGET_DIR)
    print(f"SUCCESS: data unzipped to file directory: {TARGET_DIR}")