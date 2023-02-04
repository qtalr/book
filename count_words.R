# Description
# This script counts the number of words in files in a quarto book project
# Usage: Rscript count_words.R
# Author: Jerid Francom
# Date: 2023-02-02

# Load packages
shhh <- suppressPackageStartupMessages

shhh(library(tidyverse))
shhh(library(wordcountaddin))
shhh(library(yaml))

# Read the _quarto.yml file
yml_file <- yaml.load_file(input = "_quarto.yml")

chapters <-
  yml_file$book$chapters |> # Extract the chapters
  unlist() |> # Unlist the chapters
  tibble(chapter = _) # Convert to a tibble

# Count the words in each chapter
chapter_info <-
  chapters |> # For each chapter
  pull(chapter) |> # Extract the chapter name
  map_int(\(x) word_count(filename = x)) |> # Count the words
  tibble(wc = _) |> # Convert to a tibble
  bind_cols(chapters) |> # Combine with the chapters tibble
  select(chapter, wc) # Select the chapter and word count columns

# Print the results
message("\nTotal words in the book: ")
chapter_info |>
  summarise(total_words = sum(wc)) |>
  knitr::kable(format.args = list(big.mark = ","))

# Print the results
message("\nWords in each chapter: ")
chapter_info |>
  knitr::kable(format.args = list(big.mark = ","))
