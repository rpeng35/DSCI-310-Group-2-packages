# function inputs for tests
df0 <- data.frame()
df1 <- data.frame(
  sex = c(factor(30), factor(40), factor(50)),
  age = c(double(0), double(1), double(0)),
  slope = c(factor(3), factor(2), factor(1)),
  diagnosis = c(factor(0), factor(0), factor(1)))
df2 <- data.frame(
  age = c(double(20), double(30)),
  diagnosis = c(factor(1), factor(1)))


# function outputs for tests
empty_df <- table(df0$diagnosis)
num_obs <- nrow(df1)
tab1_output <- group_by(df1, diagnosis) %>%
  summarize(count = dplyr::n(),
            percentage = dplyr::n() / num_obs * 100)
tab1_output
num_obs <- nrow(df2)
tab2_output <- group_by(df2, diagnosis) %>%
  summarize(count = dplyr::n(),
            percentage = dplyr::n() / num_obs * 100)
tab2_output
