# Load the ggplot2 library
library(ggplot2)

# Sample data
data <- data.frame(
  height = c(150, 160, 170, 180, 190, 200),
  weight = c(50, 60, 70, 80, 90, 100)
)

# Create scatter plot with regression line
ggplot(data, aes(x = height, y = weight)) +
  geom_point() +  # Add points
  geom_smooth(method = "lm", se = FALSE, color = "blue") +  # Add regression line
  labs(title = "Relationship between Height and Weight",
       x = "Height (cm)",
       y = "Weight (kg)") +
  theme_minimal()  # Use a minimal theme