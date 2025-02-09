#!/usr/bin/env bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Error: No input PDF file specified."
    echo "Usage: $0 <input_pdf_file>"
    exit 1
fi

# Get the input file name
input_file="$1"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: File '$input_file' not found."
    exit 1
fi

# Check if the input file is a PDF
if [[ ! "$input_file" == *.pdf ]]; then
    echo "Error: Input file must be a PDF."
    exit 1
fi

# Generate the output file name
output_file="${input_file%.*}_final.pdf"

# Run ghostscript to crop the PDF
gs -o "$output_file" -sDEVICE=pdfwrite -dDEVICEWIDTHPOINTS=493 -dDEVICEHEIGHTPOINTS=697.3 -dFIXEDMEDIA -c "<</PageOffset [-62 -37.4]>> setpagedevice" -f "$input_file" 

# Check if the output file was created
if [ -f "$output_file" ]; then
    echo "Cropped PDF saved as '$output_file'."
else
    echo "Error: Failed to crop PDF."
    exit 1
fi

