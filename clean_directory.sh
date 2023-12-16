bash
#!/bin/bash

directory=$1

if [ -d "$directory" ]; then
  find $directory -name '*.bak' -o -name '*.tmp' -o -name '*.backup' -type f -delete
else
  echo "Directory does not exist"
fi
