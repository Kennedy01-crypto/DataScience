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