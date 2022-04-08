library(testthat)
library(tidyverse)

source("../../tests/testthat/helper-accuracy_plot.r")
source("../../R/accuracy_plot.r")

test_that("`accuracy_plot` should return a ggplot", {
  expect_s3_class(accuracy_plot(empty_tibble), "ggplot")
  expect_s3_class(accuracy_plot(tibble_2_row), "ggplot")
  expect_s3_class(accuracy_plot(tibble_5_row), "ggplot")
})

test_that("`accuracy_plot` should return a ggplot and uses correct data", {
  expect_that(tibble_2_row, equals(accuracy_plot(tibble_2_row)$data))
  expect_that(tibble_5_row, equals(accuracy_plot(tibble_5_row)$data))
})

test_that("`accuracy_plot` should return a ggplot with x and y axis properly labeled", {
  expect_equal(accuracy_plot(tibble_2_row)$labels$x, "Neighbors")
  expect_equal(accuracy_plot(tibble_2_row)$labels$y, "Accuracy Estimate")
})

test_that("`accuracy_plot` should return a ggplot and plot layers match expectations - Testing within the layers", {
  expect_equal(accuracy_plot(tibble_2_row)$data$mean, accuracy_tibble_2_row$data$mean)
  expect_equal(accuracy_plot(tibble_2_row)$data$neighbors, accuracy_tibble_2_row$data$neighbors)
  expect_equal(accuracy_plot(tibble_5_row)$data$mean, accuracy_tibble_5_row$data$mean)
  expect_equal(accuracy_plot(tibble_5_row)$data$neighbors, accuracy_tibble_5_row$data$neighbors)
})

test_that("`accuracy_plot` should throw an error when incorrect types are passed to `tibble` argument", {
  expect_error(accuracy_plot(df0))
  expect_error(accuracy_plot(0))
  expect_error(accuracy_plot("abc"))
})
