# An Introduction to Quantitative Text Analysis for Linguistics
> Reproducible Research using R

## Abstract

The goal of this textbook is to provide readers with foundational knowledge and practical skills in quantitative text analysis using the R programming language. By the end of this textbook, readers will be able to identify, interpret and evaluate data analysis procedures and results to support research questions within language science. Additionally, readers will gain experience in designing and implementing research projects that involve processing and analyzing textual data employing modern programming strategies. This textbook aims to instill a strong sense of reproducible research practices, which are critical for promoting transparency, verification, and sharing of research findings.

This textbook is geared towards advanced undergraduates, graduate students, and researchers looking to expand their methodological toolbox. It assumes no prior knowledge of programming or quantitative methods and prioritizes practical application and intuitive understanding over technical details.

<img src="https://raw.githubusercontent.com/FortAwesome/Font-Awesome/0698449d50f2b95517562295a59d414afc68b369/svgs/solid/wrench.svg" width="25" height="25"> **This textbook is currently under development.**

## Note to publishers

### Building the book

The book cannot be built based on the GitHub repository as the data files are not included in the repository for licensing reasons. However, the book can be built from the source files provided in the `book` directory shared via Google Drive link.

To ensure that you can build the book from source, please follow the following steps:

1. Download the `book` directory from the Google Drive shared link.
2. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/) on your system (note the macOS and Windows configurations).
3. Pull the `rocker/rstudio:4.3.3` image from Docker Hub.
4. Create a container from the image by running the image and setting the following configurations:
   1. Port: 8787:8787
   2. Volume: <path/to/the/shared/book/>:/home/rstudio/book/
   3. PASSWORD: <whatever>
   4. ROOT: true
5. Open RStudio in your browser (http://localhost:8787) and login with username `rstudio` and the password you set.
6. Create a new project in RStudio, and select the book directory.
7. Install these two packages manually at the R console:
   1. `install.packages(c("renv", "pak"))`
8. Run `renv::restore()` to install the necessary packages.
   1. This will take some time, so be patient.
9. Run `pak::sysreqs_check_installed()` to check if all system dependencies are installed. If not, install them by running `pak::sysreqs_fix_installed()`.
10. Build the book by either:
   1. Click the "Rende" button in the RStudio IDE with a `*.qmd` file open.
   2. Running `quarto::quarto_serve()` at the R console to build the book and serve it locally.
   3. Running `quarto render && quarto preview` in the terminal.


