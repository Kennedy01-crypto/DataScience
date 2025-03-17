# Load necessary libraries
if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")
}

library(dplyr)

# Read the CSV data
sales_data <- read.csv("sales_data.csv")

# Convert Date to Date format (if not already)
sales_data$Date <- as.Date(sales_data$Date, format="%d/%m/%Y")

# a) Perform a summary() of the Sales column.
summary_sales <- summary(sales_data$Sales)
print(summary_sales)

# b) Test whether the mean sales for Region A are significantly different from Region B using a t-test.
region_a_sales <- sales_data$Sales[sales_data$Region == "Region A"]
region_b_sales <- sales_data$Sales[sales_data$Region == "Region B"]

t_test_result <- t.test(region_a_sales, region_b_sales)
print(t_test_result)

# c) Interpret the p-value in your t-test result.
p_value <- t_test_result$p.value

if (p_value < 0.05) {
  print(paste("The p-value is", p_value, ". This indicates that there is a statistically significant difference between the mean sales of Region A and Region B."))
} else {
  print(paste("The p-value is", p_value, ". This indicates that there is no statistically significant difference between the mean sales of Region A and Region B."))
}