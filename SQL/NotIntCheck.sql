--Determine if field has non int values

SELECT  character_id
FROM    [Script-Load]  
WHERE   CASE WHEN IsNumeric(location_id) = 1 THEN CASE WHEN CAST(location_id AS FLOAT) <> CAST(CAST(location_id AS FLOAT) AS INT) THEN 1 END ELSE 1 END = 1 AND location_id != NULL

/*
SELECT  character_id
FROM    [Script-Load]  
where character_id = 'guess what i also play frankenstein'
order by character_id
*/

/*
update [Script-Load]
set character_id = 999
where character_id = 'guess what i also play frankenstein'
*/