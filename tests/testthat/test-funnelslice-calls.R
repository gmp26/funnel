context("Funnelslice runs silently")

test_that("funnelslice defaults work", {
  load("cabg.rda")
  x <- cabg
  expect_silent(
    {out <- funnelslice(x)})
  expect_null(out)
})
