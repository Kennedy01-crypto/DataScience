# Data Manipulation Basics in R

## Overview

This project contains various R scripts that demonstrate fundamental data manipulation techniques using the `dplyr` and `ggplot2` libraries. The scripts focus on loading datasets, performing data transformations, and visualizing results.

## Scripts Included

### Question1.R

- **Purpose**: Load a sales dataset, filter and summarize sales data by product and region.
- **Key Functions**:
  - `read.csv()`: Load the dataset.
  - `select()`: Select specific columns.
  - `filter()`: Filter rows based on conditions.
  - `group_by()`: Group data by a specific variable.
  - `summarise()`: Summarize data.
  - `write.csv()`: Save summarized data to a new CSV file.

### Question2.R

- **Purpose**: Create visualizations for total sales by product and sales trends over time for a specific region.
- **Key Functions**:
  - `ggplot()`: Create visualizations.
  - `geom_bar()`: Create bar charts.
  - `geom_line()`: Create line plots.
  - `labs()`: Add titles and labels to plots.

### Question3.R

- **Purpose**: Perform statistical analysis on sales data, including summary statistics and t-tests.
- **Key Functions**:
  - `summary()`: Generate summary statistics.
  - `t.test()`: Perform t-tests to compare means between groups.

## Usage

1. Ensure that the required libraries (`dplyr`, `ggplot2`) are installed.
2. Place the `sales_data.csv` file in the working directory.
3. Run the scripts in R to see the data manipulation and visualization results.

## Installation

To install the required libraries, run the following commands in R:

```R
install.packages("dplyr")
install.packages("ggplot2")
```

## License

This project is licensed under the MIT License.
