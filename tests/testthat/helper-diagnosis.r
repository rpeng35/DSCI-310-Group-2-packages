# function inputs for tests
empty <- data.frame(diagnosis = NULL)
all_zeros <- data.frame(diagnosis = c(0, 0, 0))
one_one <- data.frame(diagnosis = c(0, 1, 0, 0))
one_two <- data.frame(diagnosis = c(2, 0, 0, 0))
one_three <- data.frame(diagnosis = c(0, 0, 3, 0))
one_four <- data.frame(diagnosis = c(0, 0, 0, 4))
one_everything <- data.frame(diagnosis = c(0, 1, 2, 3, 4))
vec <- 1:3
test_list <- list(2,3,4)
everything_rownames <- data.frame(diagnosis = c(0, 1, 2))


# function outputs for tests
all_zeros_output <- data.frame(diagnosis = c(0, 0, 0))
one_one_output <- data.frame(diagnosis = c(0, 1, 0, 0))
one_two_output <-data.frame(diagnosis = c(1, 0, 0, 0))
one_three_output <- data.frame(diagnosis = c(0, 0, 1, 0))
one_four_output <- data.frame(diagnosis = c(0, 0, 0, 1))
one_everything_output <- data.frame(diagnosis = c(0, 1, 1, 1, 1))
