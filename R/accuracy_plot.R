#' accuracy plot function takes in a tibble with mean of accuracy and neighbours and plots it
#'
#' @param accuracies a tibble that contains accuracy estimates at different numbers of neighbours
#'
#' @return a plot that indicates accuracy estimates at different value of neighbours
#'
#' @examples
#' accuracy_plot(accuracy)

accuracy_plot <- function(tibble) {
  # returns a line plot
  if(!tibble::is_tibble(tibble)) {
    stop("'tibble' should be of type tibble")
  }
  plot <- ggplot2::ggplot(tibble, aes(neighbors, mean)) +
    geom_point() +
    geom_line() +
    labs(x = "Neighbors", y = "Accuracy Estimate") +
    theme(text = element_text(size = 12)) +
    ggtitle("Accuracy of K-NN Model with Neighbors")
  return(plot)
}
