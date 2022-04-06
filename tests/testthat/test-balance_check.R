library(testthat)
source("../../R/balance_check.r")
source("../../tests/testthat/helper-balance_check.R")

test_that("'balance_check' should return a table", {
  expect_type(tab1_output, "list")
  expect_type(tab2_output, "list")
})


test_that("'balance_check' should return a table with the count and percentage based on the given column's data.",{
  expect_equivalent(balance_check(df1, diagnosis), tab1_output)
  expect_equivalent(balance_check(df2, diagnosis), tab2_output)
})


test_that("'balance_check' should return an error when the given 'data_frame' is empty",{
  expect_error(balance_check(df0, diagnosis))
})
