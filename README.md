<<<<<<< HEAD
# Retail-Order-Analysis
ETL Analysis for Retail_Orders with Python, dbt, PowerBi and MySQL


## Overview

This project aims to analyze retail orders data to uncover key business insights. The data is extracted from Kaggle, loaded into a MySQL database, transformed and analyzed using dbt tools, and finally visualized to present the findings.

## Business Flow

![Retail_order analysis Flows](https://github.com/kyawzayar-lin/Retail-Order-Analysis/assets/159099715/9b9927be-e33d-4e4e-a026-9c14daad8a05)


### 1. Data Extraction

- **Source**: Kaggle
- **Tool**: Python
- The retail orders data is extracted from Kaggle using Python scripts. This step involves downloading the dataset and preparing it for loading into the database.

### 2. Data Loading

- **Database**: MySQL
- The extracted data is loaded into a MySQL database. This step ensures that the data is stored in a structured format, making it ready for transformation and analysis.

### 3. Data Transformation and Analysis

- **Tool**: dbt (Data Build Tool)
- The data in MySQL is transformed and analyzed using dbt. The transformation steps involve creating various stages and analysis tables:

  - **Stage Tables**:
    - `stage_orders`: This table includes cleaned and preprocessed order data.
  
  - **Analysis Tables**:
    - `monthly_growth_subcategory`: Analyzes the monthly growth rate of sales by subcategory.
    - `monthly_growth_category`: Analyzes the monthly growth rate of sales by category.
    - `top10_products_by_revenue`: Identifies the top 10 products by revenue.
    - `top5_selling_products_per_region`: Identifies the top 5 selling products in each region.
    - `monthlygrowth compare 2022 and 2023`: Compare monthly growth of 2022 and 2023 sales performance.

### 4. Visualization

- **Tools**: Power BI, Tableau, or any preferred visualization tool
- The key metrics and analysis results are visualized to create comprehensive reports. These visualizations help in understanding the data insights effectively.

## Key Metrics and Visualizations

1. **Monthly Growth by Subcategory**
   - Visualization showing the monthly growth rates of different product subcategories.

2. **Monthly Growth by Category**
   - Visualization depicting the monthly growth rates of different product categories.

3. **Top 10 Products by Revenue**
   - A chart highlighting the top 10 products based on the revenue generated.

4. **Top 5 Selling Products per Region**
   - Visual representation of the top 5 selling products in each region.

## How to Use

1. **Setup**:
   - Ensure Python, MySQL, and dbt are installed on your system.
   - Clone this repository to your local machine.

2. **Data Extraction**:
   - Run the Python script to download and prepare data from Kaggle.

3. **Data Loading**:
   - Load the extracted data into the MySQL database.

4. **Data Transformation and Analysis**:
   - Use dbt to run the transformation scripts and create the necessary tables.

5. **Visualization**:
   - Use your preferred visualization tool to create the reports based on the analysis tables.

## Conclusion

This project provides a structured approach to analyzing retail orders data, from extraction to visualization. The insights derived from this analysis can help businesses make informed decisions and optimize their operations.
