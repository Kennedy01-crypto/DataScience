# Install necessary packages
#install.packages("dplyr")  # For data manipulation
#install.packages("readr")   # For reading CSV files

# Load the required libraries
library(dplyr)
library(readr)

# Load the dataset
sales_data <- read_csv("sales_data.csv")

# Select only product and sales columns
product_sales <- sales_data %>%
  select(Product, Sales)

# Display the result of selected product and sales
print(product_sales)

# Filter rows where Sales is greater than 5000
high_sales <- sales_data %>%
  filter(Sales > 5000)

# Display the filtered result
print(high_sales)

# Group by Region and calculate total sales per region
region_sales <- sales_data %>%
  group_by(Region) %>%
  summarise(Total_Sales = sum(Sales, na.rm = TRUE))

# Display the summarized data
print(region_sales)

# Save the summarized data to a new CSV file
write_csv(region_sales, "region_sales.csv")
