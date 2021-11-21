gsutil -m cp -r data gs://de-week3-bucket/

bq load --skip_leading_rows=1 --source_format=CSV --replace red-function-330907:2021_10_10.inventory gs://de-week3-bucket/data/2021-10-10/2021-10-10-inventory.csv store_id:INTEGER,product_id:INTEGER,stock_on_hand:STRING

bq load --skip_leading_rows=1 --source_format=CSV --replace red-function-330907:2021_10_10.products gs://de-week3-bucket/data/2021-10-10/2021-10-10-products.csv product_id:INTEGER,product_name:STRING,product_category:STRING,product_cost:STRING,product_price:STRING

bq load --skip_leading_rows=1 --source_format=CSV --replace red-function-330907:2021_10_10.stores gs://de-week3-bucket/data/2021-10-10/2021-10-10-stores.csv store_id:INTEGER,store_name:STRING,store_city:STRING,store_location:STRING,store_open_date:STRING

bq load --skip_leading_rows=1 --source_format=CSV --replace red-function-330907:2021_10_10.sales gs://de-week3-bucket/data/2021-10-10/2021-10-10-sales.csv sale_id:INTEGER,date:STRING,store_id:INTEGER,product_id:INTEGER,units:STRING

bq load --skip_leading_rows=1 --source_format=CSV --replace red-function-330907:2021_10_11.new_inventory gs://de-week3-bucket/data/2021-10-11/2021-10-11-inventory.csv store_id:INTEGER,product_id:INTEGER,stock_on_hand:STRING

bq load --skip_leading_rows=1 --source_format=CSV --replace red-function-330907:2021_10_11.new_products gs://de-week3-bucket/data/2021-10-11/2021-10-11-products.csv product_id:INTEGER,product_name:STRING,product_category:STRING,product_cost:STRING,product_price:STRING

bq load --skip_leading_rows=1 --source_format=CSV --replace red-function-330907:2021_10_11.new_stores gs://de-week3-bucket/data/2021-10-11/2021-10-11-stores.csv store_id:INTEGER,store_name:STRING,store_city:STRING,store_location:STRING,store_open_date:STRING

bq load --skip_leading_rows=1 --source_format=CSV --replace red-function-330907:2021_10_11.new_sales gs://de-week3-bucket/data/2021-10-11/2021-10-11-sales.csv sale_id:INTEGER,date:STRING,store_id:INTEGER,product_id:INTEGER,units:STRING



