BULK
INSERT Location
FROM 'C:\GitHub\The-Simpsons-SQL\CSV\simpsons_locations.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)
GO