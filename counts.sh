#!/bin/bash

# Purpose: Use the markdown files created by quarto
# to count the number of words in each file by converting
# the markdown files to plain text and then counting the
# number of words in each file.

# Run quarto to render the markdown files
# quarto render --no-clean --to html

# Remove the old files
rm -r documentation/*.txt

# Move the files to md/
mv *.html.md documentation/

# Convert the files to plain text
# with pandoc file --to plain file.txt

for file in documentation/*.html.md; do
  pandoc $file --to plain -o "${file%.html.md}.txt"
done

# Count the number of words in each file
# and print the output in a tabular format
# with the filename and the number of words
# in a new file called `counts`
# at the end of this file give a total count of words

echo "Words,File" > counts.csv

for file in documentation/*.txt; do
  wc -w $file | awk -v var="$file" '{print $1","var}' >> counts.csv
done

Rscript --vanilla -e 'read.csv("counts.csv")[1] |> sum() |> print()'

# Clean up the files
rm documentation/*.html.md

