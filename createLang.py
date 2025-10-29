# current floder insaid show the list of files

import os

json_path = os.path.join(os.path.dirname(__file__), "translations")

# List all files in the folder
for f in os.listdir(json_path):
    if os.path.isfile(os.path.join(json_path, f)):
        print(f)
        
