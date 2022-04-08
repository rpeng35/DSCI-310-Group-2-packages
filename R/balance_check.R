library(rlang)
library(tidyverse)
#' Creates a table
#'
#' take a data frame and an unquoted name of one column and creates a table with the percentage and count of the desired column's values
#' Specified column must only have numeric types
#'
#' @param df A dataframe or dataframe extension
#' @param col_n An unquoted column name of the desired column
#'
#' @return A table with three columns
#' @export
#'
#' @examples
#' balance_check(heart_disease_clean, diagnosis)
balance_check <- function(df, col_n) {
  if (!is.data.frame(df)) {
    stop("`df` should be a dataframe")
  }
  else {
    num_obs <- nrow(df)
    output <- dplyr::group_by(df, {{col_n}}) %>%
      dplyr::summarise(count := dplyr::n(),
                       percentage := dplyr::n() / num_obs * 100)
    output
  }
}
