#!/bin/bash

source_dir="./mailu"

backup_dir="./bckup"

backup_date=$(date +'%d_%m_%y')

backup_name="backup_$backup_date.zip"

zip -r "$backup_dir/$backup_name" "$source_dir"

if [ $? -eq 0 ]; then
  echo "Backup completed successfully: $backup_name"
else
  echo "Backup failed."
fi
