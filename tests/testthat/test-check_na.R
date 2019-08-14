obs <- c(3, 4, "str", 10, NA, NA, NA)
tested = check_na(obs)

test_that("NA calculations correct", {
  expect_equal(as.numeric(tested[1,"N"]), 7)
  expect_equal(as.numeric(tested[1,"NAs"]), 3)
  expect_equal(as.numeric(tested[1,"Non-NAs"]), 4)
})

test_that("NA output format", {
  expect_is(tested, "matrix")
  expect_equal(dim(tested), c(1,3))
})
