# Assuming you have sales_data.csv in your working directory

# Install and load necessary libraries
#if (!requireNamespace("ggplot2", quietly = TRUE)) {
#   install.packages("ggplot2")  # Uncomment to install ggplot2 if not already installed
# }
# if (!requireNamespace("dplyr", quietly = TRUE)) {
#   install.packages("dplyr")  # Uncomment to install dplyr if not already installed
# }

library(ggplot2)  # For data visualization
library(dplyr)    # For data manipulation

# a) Create a bar chart showing total sales for each Product.

# Load the sales data
sales_data <- read.csv("sales_data.csv")
head(sales_data)  # Display the first few rows of the dataset

# Calculate total sales per product
product_sales <- sales_data %>%
  group_by(Product) %>%
  summarise(Total_Sales = sum(Sales))

# Create bar chart
barplot <- ggplot(product_sales, aes(x = Product, y = Total_Sales)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Total Sales by Product",
       x = "Product",
       y = "Total Sales") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for readability

print(barplot)  # Display the bar chart

# b) Create a line plot showing sales trends over time for a region.
# Assuming sales_data has a 'Date' column in a suitable date format
# and a 'Region' column.

# Load the sales data again (if needed)
sales_data <- read.csv("sales_data.csv")
sales_data$Date <- as.Date(sales_data$Date)  # Convert Date column to Date format

selected_region <- "Region A"  # Use the test region.

# Filter data for the selected region and summarize sales by date
region_data <- sales_data %>%
    filter(Region == selected_region) %>%
    group_by(Date) %>%
    summarise(Total_Sales = sum(Sales))

print(region_data)  # Print the data for the selected region
print(str(region_data))  # Print the structure of the summarized data

# Line Plot
line_plot <- ggplot(region_data, aes(x = Date, y = Total_Sales)) +
  geom_line(color = "blue") +
  geom_point(color = "red") +
  labs(title = paste("Sales Trend in", selected_region),
       x = "Date",
       y = "Total Sales")
print(line_plot)  # Display the line plot
