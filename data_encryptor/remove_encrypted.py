import os 
import json
import sys

path_files = './data_encryptor/files/'

file_name = str(sys.argv[1])


print(f"Python for remove: {file_name}")
os.remove(f'../encrypted_files/{file_name}')
os.remove(f'../keys/{file_name}.key')