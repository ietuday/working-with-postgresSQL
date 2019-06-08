BULK INSERT Consumer_Complaints
    FROM '/home/geeky-uday/projects/SQL/P9-ConsumerComplaints.csv'
    WITH
    (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    ERRORFILE = '/home/geeky-uday/projects/SQL/P9-ConsumerComplaints.csv',
    TABLOCK
    )
GO

select *
from consumer_complaints
select product_name
from consumer_complaints
where lower(product_name) LIKE '%credit%'
select lower(product_name)
from consumer_complaints
select upper(product_name)
from consumer_complaints
select product_name
from consumer_complaints
where upper(product_name) LIKE '%CREDIT%'
select company, product_name, zip_code
from consumer_complaints
where zip_code LIKE '4_____'
select *
from consumer_complaints
select product_name
from consumer_complaints
where lower(product_name) LIKE '%credit%'
select lower(product_name)
from consumer_complaints
select upper(product_name)
from consumer_complaints
select product_name
from consumer_complaints
where upper(product_name) LIKE '%CREDIT%'
select *
from consumer_complaints
select product_name
from consumer_complaints
where lower(product_name) LIKE '%credit%'
select lower(product_name)
from consumer_complaints
select upper(product_name)
from consumer_complaints
select product_name
from consumer_complaints
where upper(product_name) LIKE '%CREDIT%'
select *
from consumer_complaints
select product_name
from consumer_complaints
where lower(product_name) LIKE '%credit%'
select lower(product_name)
from consumer_complaints
select upper(product_name)
from consumer_complaints
select product_name
from consumer_complaints
where upper(product_name) LIKE '%CREDIT%'
select *
from consumer_complaints
select product_name
from consumer_complaints
where lower(product_name) LIKE '%credit%'
select product_name
from consumer_complaints
select product_name
from consumer_complaints
where upper(product_name) LIKE '%CREDIT%'
select *
from consumer_complaints
select product_name
from consumer_complaints
where lower(product_name) LIKE '%credit%'
select product_name
from consumer_complaints
select *
from consumer_complaints
select product_name
from consumer_complaints
where lower(product_name) LIKE '%credit%'
select lower(product_name)
from consumer_complaints
select *
from consumer_complaints
select product_name
from consumer_complaints
where lower(product_name) LIKE '%credit%'
select *
from consumer_complaints
select product_name
from consumer_complaints
where lower(product_name) LIKE '%Credit%'
select *
from consumer_complaints
select product_name
from consumer_complaints
where product_name LIKE '%Credit%'
select *
from consumer_complaints
select product_name
from consumer_complaints
where product_name LIKE '%credit%'
select *
from consumer_complaints
select product_name
from consumer_complaints
where product_name LIKE '%credit%'
select *
from consumer_complaints
select product_name
from consumer_complaints
where product_name LIKE '%credit%'
select *
from consumer_complaints
select product_name
from consumer_complaints
where product_name LIKE '%credit%'
select *
from consumer_complaints
select prod_name
from consumer_complaints
where product_name LIKE '%credit%'
select *
from consumer_complaints
select prod_name
from consumer_complaints
where product_name LIKE '%credit%'
select *
from consumer_complaints
select prod_name
from consumer_complaints
where product_name='%credit%'
select *
from consumer_complaints
select product_name
from consumer_complaints
where lower(product_name) LIKE '%credit%'
select lower(product_name)
from consumer_complaints
select upper(product_name)
from consumer_complaints
select product_name
from consumer_complaints
where upper(product_name) LIKE '%CREDIT%'
select company, product_name, zip_code
from consumer_complaints
where zip_code LIKE '4___7'
select company, product_name, zip_code
from consumer_complaints
where zip_code NOT LIKE '%4%'
select *
from consumer_complaints
select product_name
from consumer_complaints
where lower(product_name) LIKE '%credit%'
select lower(product_name)
from consumer_complaints
select upper(product_name)
from consumer_complaints
select product_name
from consumer_complaints
where upper(product_name) LIKE '%CREDIT%'
select company, product_name, zip_code
from consumer_complaints
where zip_code LIKE '4___7'
select *
from consumer_complaints
select product_name
from consumer_complaints
where lower(product_name) LIKE '%credit%'
select lower(product_name)
from consumer_complaints
select upper(product_name)
from consumer_complaints 
select product_name from consumer_complaints where upper(product_name) LIKE '%CREDIT%' 
select company, product_name, zip_code from consumer_complaints where zip_code LIKE '4____'