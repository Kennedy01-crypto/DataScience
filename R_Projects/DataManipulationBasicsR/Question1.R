install.packages("dplyr")
install.packages("readr")

library(dplyr)
library(readr)

#load the dataset
sales_data <- read.csv("sales_data.csv")

#Select only product and sales columns
product_sales <- sales_data %>%
  select(Product,Sales)

#Display the result
print(poduct_sales)

#Filter rows where Sales is greater than 5000
high_sales <- sales_data %>%
  filter(Sales > 5000)

#Diaplay the result
print(high_sales)

#Group by Region and calculate total sales per region
region_sales <- sales_data %>%
  group_by(Region)%>%
  summarise(otal_Sales = sum(Sales, na.rm = TRUE))

#Display the summarized data
print(region_sales)

#save the summarized data to a new CSV file
write.csv(region_sales, "region_sales.csv")

