# Crowdfunding_ETL

This is a mini project for the TCC Data Analyst bootcamp. The purpose of this project is to test skills learned in class such as SQL and Python. This project resembles the first class homework assignment done in Excel (module-1-challenge in repo), however it shows the benefit of using python, pandas, and SQL as tools for analysts. The project organizes an excel workbook titled "crowdfunding.xlsx" and organizes the tables into dataframes which can then be stored on a SQL database. 

# Files in this Repository
ETL_Mini_Project_SBrittle - main source of code
crowdfunding_db_schema - SQL table schema
ERD_Crowdfunding - ERD of csv files

Resources: 
    crowdfunding.xlsx - original document
    campaign.csv
    category.csv
    contacts.csv
    subcategory.csv

# Dependencies

Pandas
numpy
PostGres Admin

# Code
1. Setting up the data.
    a. Importing the data using pd.read_excel.
    b. Analysing the data using .info
    c. Finding the names of the coulmns using .columns
2. Seperating 'category & subcategory' into two lists
    a. .unique is used for the categories and subcategories variables to ensure no values are repeated in the new list.
    b. The length is recorded, and then an array is created to store the length of each variable.
    c. A list comprehension is used to assign the array a 'cat' or 'subcat' to each ID.
    d. Two ne dataframes are created to assign the category list to the category array, etc.
    e. These dataframes are converted into csvs to be uploaded to SQL server.
3. Crowdfunding dataframe is created
    a. The original dataframe is copied with .copy.
    b. Some columns are renamed and changed to float types.
    c. Date columns are changed to datetypes using to_datetime.
    d. Each category and subcategory dataframe is merged with the campaign dataframe to create a new data frame with four new columns (cat_id, category, subcat_id, subcategory).
    e. Some columns are deleted.
    f. New dataframe is converted to campaign.CSV.
4. Contatcs dataframe
    a. The pandas option was chosen for this part of the assignment.
    b. The first row of data is identified using iloc.
    c. the data is converted using json.loads.
    d. Two lists are created for the loop.
    e. Using iterrows, the data is looped through with column names and values being appended to the lists.
    f. A new dataframe is made using the new lists.
    g. The name column is split using str.split to first_name and last_name
    h. The columns are reordered and converted to contacts.csv.
5. Postgres SQL
    a. Using QuickDBD, an ERD of the newly made csv files is sketched.
    b. The tables are created in a new database in SQL.
    c. The tables are uploaded with their corresponding csv files.

# Acknowledgements
Thank you to Othmane Benyoucef and Bryan Harris for their many contributions and help troubleshooting. 