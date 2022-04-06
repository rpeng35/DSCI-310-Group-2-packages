#' Cleans dataframe
#'
#' Finds all instances of missing data and converts it to NA
#' Then removes all rows with NA to create a new dataframe, this dataframe
#' must only have museric types
#'
#' @param df A dataframe or dataframe extension
#'
#' @return A dataframe with only numeric data with no missing values
#' @export
#'
#' @examples
#' clean_data(heart_disease)
clean_data <- function(df) {
  if (!is.data.frame(df)) {
    stop("`df` should be a dataframe")
  }

  na_df <- dplyr::na_if(df, "?")
  if (nrow(na_df) == 0) {
    return(na_df)
  }
  else {
    na_df[] <- lapply(na_df, function(x) as.numeric(as.character(x)))
    clean_df <- na.omit(na_df)
    return(clean_df)
  }
}
