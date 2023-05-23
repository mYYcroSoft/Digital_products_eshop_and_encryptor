import os 
import json
import sys
from cryptography.fernet import Fernet
from pathlib import Path
from datetime import datetime

file_name = str(sys.argv[1])

print(file_name)
# Načtení klíče z ../keys/*
with open(f'../keys/{file_name}.key') as filekey:
    key = filekey.read()

fernet = Fernet(key)

# Přečte data ze souoru  > file_name
with open(f'../files/{file_name}', 'rb') as file:
    original = file.read()

# Kodování textu na základě dokenu (.key) 
encrypted = fernet.encrypt(original)



# Přepiše data souboru
with open(f'../files/{file_name}', 'wb') as encrypted_file:
    encrypted_file.write(encrypted)


# Přesune soubor do složky encrypted_files
Path(f"../files/{file_name}").rename(f"../encrypted_files/{file_name}")

now = datetime.now()
date = now.strftime("%d/%m/%Y %H:%M")

data = {"file_name": file_name, "key": key, "Date": date},
with open("../json_data/encrypted_files.json", "r+") as json_file:
          # Načíst data ze souboru
          file_data = json.load(json_file)
          # Přidat nový řádek
          file_data.append(data)
          # Přepisovat soubor s novými daty
          json_file.seek(0)
          json.dump(file_data, json_file)