CREATE TABLE transactions (
    transactionid varchar,
    timestampsec timestamp,
    customerid varchar,
    firstname varchar,
    surname varchar,
    shipping_state varchar,
    item varchar,
    description varchar,
    retail_price float(2),
    loyalty_discount float(2)
);

COPY transactions FROM '/home/geeky-uday/projects/SQL/P9-OLTP.csv' DELIMITER ',' CSV HEADER;

SELECT * from transactions;

SELECT COUNT(*) 
FROM TRANSACTIONS

-- 3455

SELECT COUNT(*)
FROM 
(
	SELECT DISTINCT * 
	FROM TRANSACTIONS
) AS ABC;

-- 3455




