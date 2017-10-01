BULK
INSERT Location
FROM 'C:\simpsons_script_lines.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)
GO