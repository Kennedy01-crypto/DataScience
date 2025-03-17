import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, r2_score

# a) Load the dataset into Python.
try:
    df = pd.read_csv("Files/house_prices.csv")
except FileNotFoundError:
    print("Error: house_prices.csv not found. Please create the file or ensure it's in the correct directory.")
    df = pd.DataFrame({'Square_Feet': [], 'Bedrooms': [], 'Price': []})

# b) Use scikit-learn to create a Linear Regression model.
if not df.empty: #Only run if the dataframe is not empty.
    X = df[["Square_Feet", "Bedrooms"]]  # Features
    y = df["Price"]  # Target

    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42) #added split to show good practice.

    model = LinearRegression()
    model.fit(X_train, y_train)

    # c) Display the model coefficients and intercept.
    print("Model Coefficients:", model.coef_)
    print("Model Intercept:", model.intercept_)

    # d) Predict the price of a house with 2000 square feet and 3 bedrooms.
    new_house = pd.DataFrame({"Square_Feet": [2000], "Bedrooms": [3]})
    predicted_price = model.predict(new_house)
    print("Predicted Price:", predicted_price[0])

    #optional evaluation of model
    y_pred = model.predict(X_test)

    print('Mean squared error: %.2f' % mean_squared_error(y_test, y_pred))
    print('Coefficient of determination: %.2f' % r2_score(y_test, y_pred))