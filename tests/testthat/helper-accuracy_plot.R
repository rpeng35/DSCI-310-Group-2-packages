library(tidyverse)
# function inputs for tests
df0 <- data.frame(
  neighbors = NULL,
  mean = NULL)
df2 <- data.frame(
  neighbors = c(1:2),
  mean = c(0.2, 0.4))
df5 <- data.frame(
  neighbors = c(1:5),
  mean = c(0.1,0.2,0.3,0.4,0.5))
empty_tibble <- as_tibble(df0)
tibble_2_row <- as_tibble(df2)
tibble_5_row <- as_tibble(df5)


# function outputs for tests
accuracy_empty_tibble <- ggplot(empty_tibble, aes(x = neighbors, y = mean)) +
  geom_point() +
  geom_line() +
  labs(x = "Neighbors", y = "Accuracy Estimate") +
  theme(text = element_text(size = 12)) +
  ggtitle("Accuracy of K-NN Model with Neighbors")
accuracy_tibble_2_row <- ggplot(tibble_2_row, aes(x = neighbors, y = mean)) +
  geom_point() +
  geom_line() +
  labs(x = "Neighbors", y = "Accuracy Estimate") +
  theme(text = element_text(size = 12)) +
  ggtitle("Accuracy of K-NN Model with Neighbors")
accuracy_tibble_5_row <- ggplot(tibble_5_row, aes(x = neighbors, y = mean)) +
  geom_point() +
  geom_line() +
  labs(x = "Neighbors", y = "Accuracy Estimate") +
  theme(text = element_text(size = 12)) +
  ggtitle("Accuracy of K-NN Model with Neighbors")
