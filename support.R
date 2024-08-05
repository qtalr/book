# Generate a list of dependencies for a project
.create_dependencies <- function(additional_pkgs = NULL) {

  pkgs <- c(renv::dependencies(quiet = TRUE)$Package, additional_pkgs)

  pkg_list <- pak::pkg_list()
  pkg_list <- pkg_list[pkg_list$package %in% pkgs, c("package", "version", "remoteusername")]

  # If `remoteusername` is NA, then it is a CRAN package
  pkg_list$packages <- ifelse(is.na(pkg_list$remoteusername),
    paste0(pkg_list$package, "@", pkg_list$version), paste0(pkg_list$remoteusername, "/", pkg_list$package)
  )

  writeLines(pkg_list$packages, con = "dependencies.txt")
}
