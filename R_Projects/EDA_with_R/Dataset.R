# install.packages('ggvis')
# Load libraries
# library('ggvis')
# library('tidyverse')
library('ggplot2')

# Read dataset and obtain high level understanding
bike_buyers = read.csv('bike_buyers.csv')
head(bike_buyers)

# check datatype
class(bike_buyers)

str(bike_buyers)

summary(bike_buyers)

levels(bike_buyers$Gender)

# Assign factors to string values
bike_buyers$Marital.Status <- as.factor(bike_buyers$Marital.Status)
bike_buyers$Gender <- as.factor(bike_buyers$Gender)
bike_buyers$Home.Owner <- as.factor(bike_buyers$Home.Owner)
bike_buyers$Purchased.Bike <- as.factor(bike_buyers$Purchased.Bike)
str(bike_buyers)

# Check for any empty columns
colSums(is.na(bike_buyers))

summary(bike_buyers)

### Viewing trends in attributes with NA values
hist(bike_buyers$Income)
hist(bike_buyers$Children, breaks = 20)
hist(bike_buyers$Cars, breaks = 15)
hist(bike_buyers$Age)

### Dealing with NA values
# Since, the distribution of Income and Age is left-skewed. We will impute median values
median(na.omit((bike_buyers$Income)))
median(na.omit((bike_buyers$Age))) 

bike_buyers_clean <- bike_buyers
colSums(is.na(bike_buyers_clean))

# Income replaced with Median
bike_buyers_clean$Income[is.na(bike_buyers_clean$Income)] <- 
  median(na.omit((bike_buyers$Income)))

# Age replaced with Median
bike_buyers_clean$Age[is.na(bike_buyers_clean$Age)] <- 
  median(na.omit((bike_buyers$Age)))

colSums(is.na(bike_buyers_clean))
### Mode function

# Since mode is not an inbuilt function in R, we write a function which calculates the maximum frequency of unique values in every column.

get_mode <- function(x) {                 
  unique_x <- unique(x)
  tabulate_x <- tabulate(match(x, unique_x))
  unique_x[tabulate_x == max(tabulate_x)]
}

# Marital Status replaced with Mode
bike_buyers_clean$Marital.Status[is.na(bike_buyers_clean$Marital.Status)] <- 
  get_mode(bike_buyers$Marital.Status)

# Gender replaced with Mode
bike_buyers_clean$Gender[is.na(bike_buyers_clean$Gender)] <- 
  get_mode(bike_buyers$Gender)

# Children replaced with Mode
bike_buyers_clean$Children[is.na(bike_buyers_clean$Children)] <- 
  get_mode(bike_buyers$Children)

# Home Owner replaced with Mode
bike_buyers_clean$Home.Owner[is.na(bike_buyers_clean$Home.Owner)] <- 
  get_mode(bike_buyers$Home.Owner)

colSums(is.na(bike_buyers_clean))

# Cars replaced with Mean
bike_buyers_clean$Cars[is.na(bike_buyers_clean$Cars)] <- 
  mean(bike_buyers$Cars, na.rm = TRUE)

colSums(is.na(bike_buyers_clean))