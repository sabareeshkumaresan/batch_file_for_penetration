#!/bin/bash

# Define the base URL for the upload endpoint
base_url="http://example.com/upload"

# List of files to upload
files=(file1.txt file2.txt file3.txt)

# Loop through the list of files and upload each one
for file in "${files[@]}"; do
  curl -T "$file" "$base_url/$file"
done
