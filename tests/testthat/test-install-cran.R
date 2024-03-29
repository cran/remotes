test_that("", {

  skip_on_cran()
  skip_if_offline()

  repos <- getOption("repos")
  if (length(repos) == 0) repos <- character()
  repos[repos == "@CRAN@"] <- "http://cran.rstudio.com"

  Sys.unsetenv("R_TESTS")

  lib <- tempfile()
  on.exit(unlink(lib, recursive = TRUE), add = TRUE)
  dir.create(lib)

  # we'll get warnings when CRAN moves binary packages to the
  # cran-archive server.
  suppressWarnings(
    install_cran("pkgconfig", lib = lib, repos = repos, force = TRUE, quiet = TRUE)
  )

  expect_silent(packageDescription("pkgconfig", lib.loc = lib))
})
