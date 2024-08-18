{
  description = "Nix flake for R package development";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:

    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };

        # Base packages
        basePackages = with pkgs; [
          bashInteractive
          gettext
          gh
          git
          pandoc
          quarto
          R
          radianWrapper
        ];

        # R packages
        rPackages = with pkgs.rPackages; [
          # Utils
          devtools
          languageserver
          pak
          renv
          usethis
          knitr
          rlang
          rmarkdown
          # Project
          brulee
          cleanNLP
          conflicted
          dplyr
          factoextra
          forcats
          fs
          ggplot2
          ggraph
          ggrepel
          glmnet
          ranger
          here
          igraph
          infer
          janitor
          kableExtra
          pacman
          parsnip
          purrr
          readr
          reprex
          rpart
          rsyntax
          rvest
          scales
          skimr
          textrecipes
          textstem
          tibble
          tidylo
          tidymodels
          tidyr
          tidytext
          tinytable
          tm
          torch
          udpipe
          vip
          word2vec
        ];

        # Texlive packages
        texlivePackages = with pkgs; [
          (texlive.combine {
            inherit (texlive) scheme-small
              amsmath
              geometry
              ;
          })
        ];

        allPackages = basePackages ++ rPackages ++ texlivePackages;
      in
      {
        devShell = pkgs.mkShell {
          name = "r-dev";
          buildInputs = allPackages;
          shellHook = ''
            export R_LIBS_USER=$PWD/R/Library; mkdir -p $R_LIBS_USER;
            echo "R development environment loaded"
            echo "Available tools: R, radian, quarto, ..."
          '';
        };
      });
}
