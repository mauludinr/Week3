# Data Quality with Great Expectations

## Tools
1) Great Expectations v0.13.42
2) Python v3.8.10 (i am using 64bit installer)
3) Pybigquery v0.10.2
4) Pyarrow v6.0.0
5) Google Cloud :
- Bigquery
- Storage
## Data
1) 2021-10-10 dataset that contains: inventory, products, sales, stores(training data)
2) 2021-10-11 dataset that contains: inventory, products, sales, stores(testing data)
## Setup Great Expectations with BigQuery Database
1) Upgrade python
```
python --version
python -m ensurepip --upgrade
```
2) Install Great Expectaitons
```
python -m pip install great_expectations
```
3) Setup other packages
```
pip install pybigquery
pip install pyarrow
```
*reference : https://docs.greatexpectations.io/docs/tutorials/getting_started/intro
## Running Great Expectations
*Make sure to change the project_id with yours and set your GOOGLE_APPLICATION_CREDENTIALS in terminal, and has same Cloud Stroage and Bigquery data location
1) Run .sh file(this file contains list of commands to upload data to your Google Cloud Storage, make a dataset in Bigquery, then make a table inside there)
2) Make a directory to put your Great Expectations there by running this command the terminal
```
# as example, i am using ge_week3
mkdir ge_week3
cd ge_week3
```
3) Initialize your Great Expectations deployment for the project, run this command in the terminal
```
great_expectations --v3-api init
```
4) Connect to the data  
```
great_expectations --v3-api datasource new
```
- Run above command
- Choose your data source type(i am using bigquery, so i choose relational database)
- This will open a new Jupyter Notebook, complete the datasource configuration then setting your data source connection there (*https://docs.greatexpectations.io/docs/guides/connecting_to_your_data/database/bigquery)
- Run all cells in jupyter notebook, change data source name with something more specific, do not forget to add GOOGLE_APPLICATION_CREDENTIALS in code there so it can connect to bigquery
- After you successfully run all cells, close jupyter notebook, data source will be saved in greeat_expectation.yml if you follow the procedure written on the notebook 
5) Create Expectations
```
great_expectations --v3-api suite new
```
- Run above command
- Choose interactive batch data option then select the data source
- This will open a new Jupyter Notebook, then follow the instruction in there to create expectation by adding validator.expect_table... and validator.expect_column...
- Run all cells in jupyter notebook
- Expectation folder will be created in your directory (*you can check by using command: great_expectations suite list)
![image](https://user-images.githubusercontent.com/38213112/142866429-e6551ac9-8133-4d76-8cca-0463d563f096.png)
(*you can edit suite from suite that has been created, by using command: great_expectations --v3-api suite edit expectation_name)
6) Validate your data using a Checkpoint
- Go back to your terminal and shut down the Jupyter Notebook, then run the following command
```
# you can use this command and change your checkpoint name with what you want
#great_expectations --v3-api checkpoint new <name>
great_expectations --v3-api checkpoint new checkpoint1
```
- This will open a new Jupyter Notebook, then follow the instruction in there and make sure to choose your data source (table name) in data_asset_name and expectation(suite) in expectation_suite_name
- Execute all cells and uncomment the last cell in the notebook in order to store the checkpoint, your checkpoint will be saved in checkpoint folder
![image](https://user-images.githubusercontent.com/38213112/142864870-ddf73800-c722-47e4-b3f2-2b29d9eeeed3.png)
7) sad
Use the following CLI command 
```
great_expectations --v3-api docs build --site-name local_site
```
- This command will create new documentation locally (*https://docs.greatexpectations.io/docs/guides/setup/configuring_data_docs/how_to_host_and_share_data_docs_on_a_filesystem/)
![image](https://user-images.githubusercontent.com/38213112/142853625-df282215-7c35-4022-8f58-4314447a96a5.png)
(*https://towardsdatascience.com/great-expectations-always-know-what-to-expect-from-your-data-51214866c24)
