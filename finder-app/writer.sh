#!/bin/bash

# check if 2 arg provided
if [ $# -ne 2 ]; then
    echo "Error: Must provide 2 arguments."
    exit 1
fi

# Assign arguments to variables
writefile="$1"
writestr="$2"

# create dir 
mkdir -p "$(dirname "$writefile")"

# create or overwrite file 
echo "$writestr" > "$writefile"

# check file created
if [ $? -ne 0 ]; then
    echo "Error: could not create or write."
    exit 1
fi

echo "File $writefile has been created with the content."

