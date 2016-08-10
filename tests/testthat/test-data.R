context("Sane data in package")

test_that("data directory exists", {
  expect_equal(file_test("-d",
                         file.path(testthat::test_path(),"..","..","data")),
               T);
})

test_that("CABG hospital data loads", {
  data_dir <- file.path(testthat::test_path(),"..","..","data");
  cabg <- load(file.path(data_dir, "cabg.rda"));
  expect_equal(length(cabg),6);
})
