import os
import shutil
import time
from datetime import datetime

source_dir = "F:\\Sync\\DCIM\\PlantNet"
dest_dir = "F:\\temp\\Fotos"
file_types = ('.jpg', '.jpeg', '.png', '.mp4', '.mov', '.ogv', '.3gp')

for file_name in os.listdir(source_dir):
    if file_name.endswith(file_types):
        file_path = os.path.join(source_dir, file_name)
        mod_time = os.path.getmtime(file_path)
        mod_date = datetime.fromtimestamp(mod_time)
        year = str(mod_date.year)
        month = f'{mod_date.month:02d}'
        # create subdirectories per year and month
        if not os.path.exists(os.path.join(dest_dir, year, month)):
            os.makedirs(os.path.join(dest_dir, year, month))
        # copy file to the subdirectory
        shutil.copy2(file_path, os.path.join(dest_dir, year, month, file_name))
