#!/bin/bash

# This script correctly handles the case where no files are found.

files=$(find . -name "*.txt")

if [ -z "$files" ]; then
  echo "No files found."
else
  while IFS= read -r -d $'\0' file; do
    # Process each file
    echo "Processing: $file"
    # ... (code to process the file) ...
  done < <(find . -name "*.txt" -print0)
fi