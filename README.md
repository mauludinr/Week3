# Data Quality with Great Expectations

## Tools
```
1) Great Expectations v0.13.42
2) Python v3.8.10 (i am using 64bit installer)
3) Pybigquery v0.10.2
4) Pyarrow v6.0.0
5) Google Cloud :
- Bigquery
- Storage
6) Jupyter Notebook
```
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
## Execute
*Make sure to change the project_id with yours and set your GOOGLE_APPLICATION_CREDENTIALS, and has same Cloud Stroage and Bigquery data location
1) Run .sh file(this file contains list of commands to upload data to your Google Cloud Storage, make a dataset in Bigquery, then make a table inside there)
