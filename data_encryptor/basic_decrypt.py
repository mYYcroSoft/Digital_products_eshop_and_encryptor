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
with open(f'../encrypted_files/{file_name}', 'rb') as file:
    original = file.read()

# Kodování textu na základě dokenu (.key) 
encrypted = fernet.decrypt(original)



# Přepiše data souboru
with open(f'../encrypted_files/{file_name}', 'wb') as encrypted_file:
    encrypted_file.write(encrypted)


# Přesune soubor do složky encrypted_files
Path(f"../encrypted_files/{file_name}").rename(f"../files/{file_name}")

now = datetime.now()
date = now.strftime("%d/%m/%Y %H:%M")

