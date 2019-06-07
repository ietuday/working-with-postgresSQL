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