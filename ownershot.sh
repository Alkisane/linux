bash
#!/bin/bash

directory=$1

if [ -d "$directory" ]; then
  for file in $directory/*; do
    owner=$(stat -c %U "$file")
    mkdir -p "$directory/$owner"
    cp "$file" "$directory/$owner"
  done
else
  echo "Directory does not exist"
fi
