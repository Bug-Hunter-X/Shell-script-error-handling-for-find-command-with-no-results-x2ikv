#!/bin/bash

# This script attempts to process a list of files, but contains a subtle error.
# The error occurs when the find command finds no files matching the pattern.

files=$(find . -name "*.txt")

if [ -z "$files" ]; then
  echo "No files found."
else
  for file in $files; do
    # Process each file here
    echo "Processing: $file"
    # ... (code to process the file) ...
  done
fi