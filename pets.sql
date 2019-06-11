SELECT * FROM pets LEFT JOIN owners ON pets.ownerid = owners.ownerid;
SELECT * from owners
SELECT * from pets
SELECT * from owners
SELECT * from pets
SELECT * from owners
SELECT * from pets
COPY proceduredetails FROM '/home/geeky-uday/projects/SQL/P9-ProceduresDetails.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM pets LEFT JOIN owners ON pets.ownerid = owners.ownerid;
SELECT pets.name,owners.name,kind FROM pets LEFT JOIN owners ON pets.ownerid = owners.ownerid;
COPY proceduredetails FROM '/home/geeky-uday/projects/SQL/P9-ProcedureDetails.csv' DELIMITER ',' CSV HEADER;
COPY proceduredetails FROM '/home/geeky-uday/projects/SQL/P9-ProcedureDetails.csv' DELIMITER ',' CSV HEADER;
COPY procedurehistory FROM '/home/geeky-uday/projects/SQL/P9-ProceduresHistory.csv' DELIMITER ',' CSV HEADER;
COPY procedurehistory FROM '/home/geeky-uday/projects/SQL/P9-Procedurehistory.csv' DELIMITER ',' CSV HEADER;
COPY procedurehistory FROM 'C:\Users\Kirill\Desktop\Databases\procedurehistory.csv' DELIMITER ',' CSV HEADER;
COPY proceduredetails FROM '/home/geeky-uday/projects/SQL/P9-Proceduredetails.csv' DELIMITER ',' CSV HEADER;
COPY owners FROM '/home/geeky-uday/projects/SQL/P9-Owners.csv' DELIMITER ',' CSV HEADER;
COPY pets FROM '/home/geeky-uday/projects/SQL/P9-Pets.csv' DELIMITER ',' CSV HEADER;
CREATE TABLE procedurehistory ( petid varchar, proceduredate date, proceduretype varchar, proceduresubcode varchar );
CREATE TABLE proceduredetails ( proceduretype varchar, proceduresubcode varchar, description varchar, price float );

SELECT * 
FROM pets 
LEFT JOIN owners 
ON pets.ownerid = owners.ownerid


SELECT pets.name, owners.name 
FROM pets 
LEFT JOIN owners 
ON pets.ownerid = owners.ownerid
WHERE left(pets.name, 1) = left(owners.name, 1)


SELECT A.name, B.name 
FROM pets as A
LEFT JOIN owners as B
ON A.ownerid = B.ownerid
WHERE left(A.name, 1) = left(B.name, 1)


SELECT A.name as PETNAME, B.name as OWNERNAME 
FROM pets as A
LEFT JOIN owners as B
ON A.ownerid = B.ownerid
WHERE left(A.name, 1) = left(B.name, 1)


SELECT A.name PETNAME, B.name OWNERNAME 
FROM pets A
LEFT JOIN owners B
ON A.ownerid = B.ownerid
WHERE left(A.name, 1) = left(B.name, 1)


SELECT A.name PETNAME, B.name OWNERNAME 
FROM owners B
RIGHT JOIN pets A 
ON A.ownerid = B.ownerid
WHERE left(A.name, 1) = left(B.name, 1)



