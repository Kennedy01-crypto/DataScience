# Load necessary libraries
if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")  # Install dplyr if not already installed
}

library(dplyr)  # Load the dplyr library for data manipulation

# Read the CSV data
sales_data <- read.csv("sales_data.csv")

# Convert Date to Date format (if not already)
sales_data$Date <- as.Date(sales_data$Date, format="%d/%m/%Y")  # Convert Date column

# a) Perform a summary() of the Sales column.
summary_sales <- summary(sales_data$Sales)  # Get summary statistics for Sales
print(summary_sales)  # Print the summary statistics

# b) Test whether the mean sales for Region A are significantly different from Region B using a t-test.
region_a_sales <- sales_data$Sales[sales_data$Region == "Region A"]  # Sales for Region A
region_b_sales <- sales_data$Sales[sales_data$Region == "Region B"]  # Sales for Region B

t_test_result <- t.test(region_a_sales, region_b_sales)  # Perform t-test
print(t_test_result)  # Print the t-test result

# c) Interpret the p-value in your t-test result.
p_value <- t_test_result$p.value  # Extract p-value from t-test result

if (p_value < 0.05) {
  print(paste("The p-value is", p_value, ". This indicates that there is a statistically significant difference between the mean sales of Region A and Region B."))
} else {
  print(paste("The p-value is", p_value, ". This indicates that there is no statistically significant difference between the mean sales of Region A and Region B."))

}
