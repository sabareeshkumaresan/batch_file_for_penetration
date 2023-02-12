#!/bin/bash

# Define the base URL for the upload endpoint
base_url="http://example.com/upload"

# Directory containing the files to upload
folder="./files"

# Loop through the files in the folder and upload each one
for file in "$folder"/*; do
  curl -T "$file" "$base_url/${file##*/}"
done
