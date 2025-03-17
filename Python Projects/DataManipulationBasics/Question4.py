import pandas as pd

# a) Load the dataset into Python (Pandas).
try:
    df = pd.read_csv("employee_data.csv")
except FileNotFoundError:
    print("Error: employee_data.csv not found. Please create the file or ensure it's in the correct directory.")
    # Create a dummy dataframe for testing if file does not exist.
    df = pd.DataFrame({'Name': [], 'Department': [], 'Salary': [], 'Hire_Date': []})

# b) Display only the Name and Salary columns.
print("\nName and Salary Columns:")
print(df[["Name", "Salary"]])

# c) Filter records where Salary is above 60000.
high_salary = df[df["Salary"] > 60000]
print("\nEmployees with Salary > 60000:")
print(high_salary)

# d) Group the data by Department and calculate the average salary per department.
avg_salary_per_dept = df.groupby("Department")["Salary"].mean()
print("\nAverage Salary per Department:")
print(avg_salary_per_dept)

# e) Save the summarized data to department_salary.csv.
avg_salary_per_dept.to_csv("department_salary.csv")
print("\nAverage salary per department saved to department_salary.csv")
