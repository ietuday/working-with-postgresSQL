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
-- Check 1 NF

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


--Check 2NF 

SELECT * from transactions;

-- Seperate Customer specific column

CREATE TABLE TMP AS 
SELECT CUSTOMERID,
       FIRSTNAME,
	   SURNAME,
	   SHIPPING_STATE,
	   LOYALTY_DISCOUNT
FROM TRANSACTIONS


SELECT * FROM TMP -- Contains lots of repetative details

-- Remove Duplicates
CREATE TABLE CUSTOMERS AS 
SELECT DISTINCT * 
FROM TMP


SELECT * FROM CUSTOMERS 

-- Let's back to transaction table now
SELECT * 
FROM TRANSACTIONS


-- Remove Customer specific columns
-- Leave the customerId column so that it can connect.

ALTER TABLE TRANSACTIONS 
DROP COLUMN FIRSTNAME,
DROP COLUMN SURNAME,
DROP COLUMN SHIPPING_STATE,
DROP COLUMN LOYALTY_DISCOUNT

SELECT * 
FROM TRANSACTIONS

DROP TABLE TMP


-- Check 3NF 
SELECT * 
FROM CUSTOMERS

-- TRANSITIVE DEPENDENCY NEED TO BE SEPERATED INTO THEIR OWN TABLE

CREATE TABLE TMP AS 
SELECT ITEM,
       DESCRIPTION,
       RETAIL_PRICE
FROM TRANSACTIONS

-- TO MAKE NEW TABLE INTO 1NF REMOVE DUPLICATE ROWS
CREATE TABLE ITEMS AS 
SELECT DISTINCT *
FROM TMP;

SELECT * FROM ITEMS -- 3NF CONFIRMED


-- NOW REMOVE THE EXTRACTED ROWS FROM THE TRANSACTION TABLE 
-- BUT KEEP THE FORIEGN KEY "ITEM"

ALTER TABLE TRANSACTIONS
DROP COLUMN DESCRIPTION,
DROP COLUMN RETAIL_PRICE

-- Remove "Temporary" (TMP) TABLE

DROP TABLE TMP 