import os 
import json
import sys
from cryptography.fernet import Fernet
from pathlib import Path

file_name = str(sys.argv[1])

print(file_name)
# load key
with open(f'../keys/{file_name}.key') as filekey:
    key = filekey.read()

fernet = Fernet(key)

# read data
with open(f'../files/{file_name}', 'rb') as file:
    original = file.read()

# encryptef file 
encrypted = fernet.encrypt(original)


with open(f'../files/{file_name}', 'wb') as encrypted_file:
    encrypted_file.write(encrypted)

Path(f"../files/{file_name}").rename(f"../encrypted_files/{file_name}")
