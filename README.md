# An Introduction to Quantitative Text Analysis for Linguistics
> Reproducible Research using R

## Abstract

The goal of this textbook is to provide readers with foundational knowledge and practical skills in quantitative text analysis using the R programming language. By the end of this textbook, readers will be able to identify, interpret and evaluate data analysis procedures and results to support research questions within language science. Additionally, readers will gain experience in designing and implementing research projects that involve processing and analyzing textual data employing modern programming strategies. This textbook aims to instill a strong sense of reproducible research practices, which are critical for promoting transparency, verification, and sharing of research findings.

This textbook is geared towards advanced undergraduates, graduate students, and researchers looking to expand their methodological toolbox. It assumes no prior knowledge of programming or quantitative methods and prioritizes practical application and intuitive understanding over technical details.

<img src="https://raw.githubusercontent.com/FortAwesome/Font-Awesome/0698449d50f2b95517562295a59d414afc68b369/svgs/solid/wrench.svg" width="25" height="25"> **This textbook is currently under development.**


## Reproduce this book

A. Docker + Clone

Download the Docker image and run the container:

```bash
docker run -d -p 8787:8787 -e DISABLE_AUTH=true -v $(pwd):/home/rstudio/ --name book qtalr/book:latest
```

Open RStudio at `http://localhost:8787` and clone the GitHub repository:

```bash
git clone https://
```

Run `renv::restore()` to install the necessary packages.

```r
renv::restore()
```

Run Quarto to build the book:

*You can add the `--to html` or `--to pdf` flag for a single format*

```bash
quarto render
```

