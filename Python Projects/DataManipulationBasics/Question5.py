import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns  # For better boxplots

try:
    df = pd.read_csv("employee_data.csv")
except FileNotFoundError:
    print("Error: employee_data.csv not found. Please create the file or ensure it's in the correct directory.")
    df = pd.DataFrame({'Name': [], 'Department': [], 'Salary': [], 'Hire_Date': []})

# a) Create a histogram of the Salary distribution.
plt.figure(figsize=(8, 6))
plt.hist(df["Salary"], bins=10, edgecolor="black")  # Adjust bins as needed
plt.title("Salary Distribution")
plt.xlabel("Salary")
plt.ylabel("Frequency")
plt.grid(True, linestyle='--', alpha=0.6)
plt.show()

# b) Create a boxplot showing Salary by Department.
plt.figure(figsize=(10, 6))
sns.boxplot(x="Department", y="Salary", data=df)
plt.title("Salary by Department")
plt.xlabel("Department")
plt.ylabel("Salary")
plt.grid(True, axis='y', linestyle='--', alpha=0.6)
plt.show()