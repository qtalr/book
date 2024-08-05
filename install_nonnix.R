# Install non-nix R Packages

# Check if the package is already installed, if not install it with pak

if (!requireNamespace("pak", quietly = TRUE)) {
  install.packages("pak")
}

if (!requireNamespace("qtalrkit", quietly = TRUE)) {
  pak::pak("qtalr/qtalrkit")
}

if (!requireNamespace("wordVectors", quietly = TRUE)) {
  pak::pak("bmschmidt/wordVectors")
}

if (!requireNamespace("TBDBr", quietly = TRUE)) {
  pak::pak("TalkBank/TBDBr")
}

