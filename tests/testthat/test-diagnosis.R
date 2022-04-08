library(testthat)

source("../../R/diagnosis.r")
source("../../tests/testthat/helper-diagnosis.r")

test_that("`diagnosis` should return a data frame", {
    expect_s3_class(diagnosis(empty), "data.frame")
    expect_s3_class(diagnosis(all_zeros), "data.frame")
    expect_s3_class(diagnosis(one_one), "data.frame")
    expect_s3_class(diagnosis(one_two), "data.frame")
    expect_s3_class(diagnosis(one_three), "data.frame")
    expect_s3_class(diagnosis(one_four), "data.frame")
    expect_s3_class(diagnosis(one_everything), "data.frame")
})

test_that("`diagnosis` should return a data frame with the same number of rows as the dataframe from the original dataset", {
    expect_equal(nrow(diagnosis(empty)), nrow(empty))
    expect_equal(nrow(diagnosis(all_zeros)), nrow(all_zeros_output))
    expect_equal(nrow(diagnosis(one_one)), nrow(one_one_output))
    expect_equal(nrow(diagnosis(one_two)), nrow(one_two_output))
    expect_equal(nrow(diagnosis(one_three)), nrow(one_three_output))
    expect_equal(nrow(diagnosis(one_four)), nrow(one_four_output))
    expect_equal(nrow(diagnosis(one_everything)), nrow(one_everything_output))
})

test_that("`diagnosis` should return a data frame with the same number of columns as the dataframe from the original dataset", {
    expect_equal(ncol(diagnosis(all_zeros)), ncol(all_zeros_output))
    expect_equal(ncol(diagnosis(one_one)), ncol(one_one_output))
    expect_equal(ncol(diagnosis(one_two)), ncol(one_two_output))
    expect_equal(ncol(diagnosis(one_three)), ncol(one_three_output))
    expect_equal(ncol(diagnosis(one_four)), ncol(one_four_output))
    expect_equal(ncol(diagnosis(one_everything)), ncol(one_everything_output))
})

test_that("`diagnosis` does not return the right value", {
    expect_equal(diagnosis(all_zeros), all_zeros_output)
    expect_equal(diagnosis(one_one), one_one_output)
    expect_equal(diagnosis(one_two), one_two_output)
    expect_equal(diagnosis(one_three), one_three_output)
    expect_equal(diagnosis(one_four), one_four_output)
    expect_equal(diagnosis(one_everything), one_everything_output)
})

test_that("`diagnosis` should throw an error when incorrect types are passed to `data_frame` argument", {
    expect_error(diagnosis(vec))
    expect_error(diagnosis(test_list))
})
