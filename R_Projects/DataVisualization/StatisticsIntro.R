# mtcars
# print(mtcars)

# get information about mtcars data set
# ?mtcars
# print(?mtcars)

# Get Information
# Use the dim() function to find the dimensions of the data set, 
# and the names() function to view the names of the variables:
Data_Cars <- mtcars
print(dim(Data_Cars)) # Output: [1] 32 11
print(names(Data_Cars)) # Output:  [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt" ....

#Use the rownames() function to get the name of
#each row in the first column, which is the name of each car:
print(rownames(Data_Cars))

# Print Variable Values
print(Data_Cars$cyl) # 6 6 4 6 8 6 8 4 4 6 6 8 8 8 8 8 ...

# Sort variable values
print(sort(Data_Cars$cyl)) # in ascending order

# Analyzing the data
# Use the summary() function to get a summary of the data set
print(summary(Data_Cars))

# ----------------------------------------------------------------

# MAX MIN
# find the highst and lowest value of variable hp
print(max(Data_Cars$hp)) #335
print(min(Data_Cars$hp)) #52

# find the index position of the max and min value
print(which.max(Data_Cars$hp)) # 32
print(which.min(Data_Cars$hp)) # 19

# combine which.max() and which.min() with the rownames() function to get the 
# name of the car with the largest and smallest horsepower:
print(rownames(Data_Cars)[which.max(Data_Cars$hp)]) # Output: "Maserati Bora"
print(rownames(Data_Cars)[which.min(Data_Cars$hp)]) # Output: "Honda Civic"

# --------------------------------------------------------------
# MEAN MEDIAN MODE
# Mean
# Calculate the mean of the variable weight(wt)
print(mean(Data_Cars$wt)) # 3.21725

# Median
# Calculate the median of the variable weight(wt)
print(median(Data_Cars$wt)) # 3.325

# Mode
# Calculate mode(wt)
print(names(sort(-table(Data_Cars$wt)))[1])

# ---------------------------------------------------
Percentiles