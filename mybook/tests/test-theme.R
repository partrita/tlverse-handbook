library(testthat)
library(ggplot2)

# Source _common.R once in a controlled environment
common_env <- new.env()
# We attempt to source _common.R. We use a project-relative path if possible,
# or assume the test is run from the tests directory.
tryCatch({
  # If running via testthat::test_file() or similar,
  # the working directory is often the package root or the tests folder.
  source(testthat::test_path("../_common.R"), local = common_env)
}, error = function(e) {
  # Fallback for manual execution from the tests directory
  source("../_common.R", local = common_env)
})

theme_transparent <- common_env$theme_transparent

test_that("theme_transparent returns a valid ggplot2 theme", {
  theme <- theme_transparent()
  expect_s3_class(theme, "theme")
  expect_s3_class(theme, "gg")
})

test_that("theme_transparent sets backgrounds to transparent", {
  theme <- theme_transparent()

  # Elements to check for transparency
  elements <- c("panel.background", "plot.background", "legend.background", "legend.key")

  for (el in elements) {
    expect_equal(theme[[el]]$fill, "transparent", info = el)
    expect_true(is.na(theme[[el]]$colour), info = el)
  }
})

test_that("theme_transparent sets legend position to bottom", {
  theme <- theme_transparent()
  expect_equal(theme$legend.position, "bottom")
})

test_that("theme_transparent passes arguments to theme_bw", {
  theme <- theme_transparent(base_size = 15)
  # theme_bw(base_size = 15) sets text size to 15
  expect_equal(theme$text$size, 15)
})

test_that("theme_transparent handles base_family override", {
  # Default
  theme_default <- theme_transparent()
  expect_equal(theme_default$text$family, "Noto Sans CJK KR")

  # Override
  theme_override <- theme_transparent(base_family = "Arial")
  expect_equal(theme_override$text$family, "Arial")
})
