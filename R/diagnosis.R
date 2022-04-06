#' Cleans dataframe
#'
#' take a data frame and change diagnosis column that is greater than 0 to 1
#' must only have numeric types
#'
#' @param df A dataframe or dataframe extension that must contain a column called diagnosis
#'
#' @return A dataframe with modified diagnosis input
#' @export
#'
#' @examples
#' diagnosis(heart_disease)
diagnosis <- function(df) {
  if (!is.data.frame(df)) {
    stop("`df` should be a dataframe")
  }
  df$diagnosis[df$diagnosis > 0] <- 1
  return(df)
}
