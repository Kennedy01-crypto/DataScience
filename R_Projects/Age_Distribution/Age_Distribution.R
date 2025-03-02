# Generate sample data for 'age'
set.seed(123) # For reproducibility
mydata <- data.frame(age = sample(18:80, 200, replace = TRUE))

# Create a histogram using base R graphics
hist(mydata$age,
     main = "Distribution of Age",
     xlab = "Age",
     ylab = "Frequency",
     col = "lightblue",
     border = "darkblue")

# Create a histogram using ggplot2 (more customizable)
library(ggplot2)

ggplot(mydata, aes(x = age)) +
  geom_histogram(binwidth = 5, fill = "lightblue", color = "darkblue") +
  labs(title = "Distribution of Age",
       x = "Age",
       y = "Frequency") +
  theme_minimal()