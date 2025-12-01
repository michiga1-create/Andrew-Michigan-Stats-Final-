library(readr)

library(ggplot2)

data <- read_csv("data.csv")


summary(data$first_term)

table(data$social_media_presence)



# BOX PLOT
ggplot(data, aes(x = as.factor(social_media_presence), y = first_term)) +
  geom_boxplot() +
  labs(title = "Box Plot of Senators first term by social media presence",
       x = "social_media_presence",
       y = "first_term") +
  theme_minimal()

ttest_results <- (t.test(first_term ~ social_media_presence, data = data))
print(ttest_results)
