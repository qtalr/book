# Install non-nix R Packages

# Check if the package is already installed, if not install it

if (!requireNamespace("pak", quietly = TRUE)) {
  install.packages("pak")
}

if (!requireNamespace("qtkit", quietly = TRUE)) {
  install.packages("qtkit")
}

if (!requireNamespace("wordVectors", quietly = TRUE)) {
  pak::pak("bmschmidt/wordVectors")
}

if (!requireNamespace("TBDBr", quietly = TRUE)) {
  pak::pak("TalkBank/TBDBr")
}

if (!requireNamespace("torch", quietly = TRUE)) {
  install.packages("torch");
  torch::install_torch();
}

