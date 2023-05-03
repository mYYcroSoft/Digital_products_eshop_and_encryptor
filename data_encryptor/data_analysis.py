import os 
import json
from cryptography.fernet import Fernet
dir_path = r'C:\Users\jsivc\Desktop\Programovaní\Python-Data-encryptor\data_encryptor\files'
path_files = './data_encryptor/files/'
path_keys = './data_encryptor/keys/'
files_list = []

for path in enumerate(os.listdir(dir_path)):
        if os.path.isfile(os.path.join(dir_path, path[1])):
            my_file  = []
            my_file.append(path[0])
            my_file.append(path[1])

            key = Fernet.generate_key()
            path_to_key = (f'{path_keys}{path[1]}.key')
            with open(path_to_key, 'wb') as filekey:
                 filekey.write(key)

            my_file.append(os.path.getsize('./data_encryptor/files/' + path[1]) / 1000)
            files_list.append(my_file)


for data in files_list:
      print(f"----------> [ID] {data[0]} ----------> [file name] {data[1]} [size] ----------> {data[2]}")
      data = [
            {"file_name": data[1], "file_size": data[2]},
        
      ]
  
     
      with open("./data_encryptor/json_data/files_data.json", "r+") as json_file:
          # Načíst data ze souboru
          file_data = json.load(json_file)
          # Přidat nový řádek
          file_data.append(data)
          # Přepisovat soubor s novými daty
          json_file.seek(0)
          json.dump(file_data, json_file)



