library(testthat)

source("../../R/clean_data.r")
source("../../tests/testthat/helper-clean_data.r")

test_that("`clean_data` should return a data frame", {
    expect_s3_class(clean_data(empty), "data.frame")
    expect_s3_class(clean_data(two_cols_1_qmissing), "data.frame")
    expect_s3_class(clean_data(two_cols_2_qmissing), "data.frame")
    expect_s3_class(clean_data(two_cols_2_qmissing_and_na), "data.frame")
    expect_s3_class(clean_data(two_cols_2_na), "data.frame")
})

test_that("`clean_data` should return a data frame with the same or less than number of rows from the original dataset", {
    expect_equal(nrow(clean_data(empty)), nrow(empty))
    expect_equal(nrow(clean_data(two_cols_1_qmissing)), nrow(two_cols_1_qmissing_output))
    expect_equal(nrow(clean_data(two_cols_2_qmissing)), nrow(two_cols_2_qmissing_output))
    expect_equal(nrow(clean_data(two_cols_2_qmissing_and_na)), nrow(two_cols_2_qmissing_and_na_output))
    expect_equal(nrow(clean_data(two_cols_2_na)), nrow(two_cols_2_na_output))    
})

test_that("`clean_data` should return a data frame with the same number of columns as the dataframe from the original dataset", {
    expect_equal(ncol(clean_data(empty)), ncol(empty))
    expect_equal(ncol(clean_data(two_cols_1_qmissing)), ncol(two_cols_1_qmissing_output))
    expect_equal(ncol(clean_data(two_cols_2_qmissing)), ncol(two_cols_2_qmissing_output))
    expect_equal(ncol(clean_data(two_cols_2_qmissing_and_na)), ncol(two_cols_2_qmissing_and_na_output))
    expect_equal(ncol(clean_data(two_cols_2_na)), ncol(two_cols_2_na_output))    
})

test_that("`clean_data` preserves row names", {
    expect_equivalent(clean_data(two_cols_1_qmissing_rownames)[,1], two_cols_1_qmissing_rownames_output[,1])    
})

test_that("`clean_data` should return a dataframe with no missing values", {
    expect_equivalent(clean_data(empty), empty)
    expect_equivalent(clean_data(two_cols_1_qmissing), two_cols_1_qmissing_output)
    expect_equivalent(clean_data(two_cols_2_qmissing), two_cols_2_qmissing_output)
    expect_equivalent(clean_data(two_cols_2_qmissing_and_na), two_cols_2_qmissing_and_na_output)
    expect_equivalent(clean_data(two_cols_2_na), two_cols_2_na_output)
})

test_that("`clean_data` should throw an error when incorrect types are passed to `data_frame` argument", {
    expect_error(clean_data(vec))
    expect_error(clean_data(test_list))
})
