--Finalized Queries

--Writer count of episodes
select Writer.Writer, WC.Writer_Count from Writer
LEFT JOIN Episode on Writer.Episode_Code = Episode.Episode_Code
join (select Writer.Writer, count(*) as Writer_Count from Writer
         group by Writer.Writer) WC
	on Writer.Writer = WC.writer
--	where episode.Season in (1,2,3,4,5,6,7)
 group by writer.writer, Writer_Count
ORDER BY WC.Writer_Count desc, Writer.Writer

--Writer count of episodes by season
select Writer.Writer, Episode.Season,  count(*) as Writer_Count from Writer
LEFT JOIN Episode on Writer.Episode_Code = Episode.Episode_Code
group by Writer.Writer, Episode.Season
order by Writer.Writer, Episode.Season

--count of characters
select Episode.Season,  count(Distinct Script_Load.character_id) as Character_Count from Script_Load
LEFT JOIN Episode on Script_Load.episode_id = Episode.ID
group by Episode.Season
order by Episode.Season

--count of locations
select Episode.Season,  count(Distinct Script_Load.location_id) as Location_Count from Script_Load
LEFT JOIN Episode on Script_Load.episode_id = Episode.ID
group by Episode.Season
order by Episode.Season

--TO DO --

--select unique count of characters
select  Episode.Season, count(*) as Writer_Count from Episode
INNER JOIN Script_Load on Episode.id = Script_Load.Episode_ID
LEFT JOIN Character on Script_Load.character_id = Character.ID
LEFT JOIN Location on Script_Load.location_id = Location.ID
LEFT JOIN Writer on Episode.Episode_Code = Writer.Episode_Code
WHERE Episode.Number_In_Season in (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18)
AND character.normalized LIKE '%simpson%'
--order by Character.Normalized
ORDER BY Writer.Writer, Season, Number_In_Season



-- Rought Work --

select Episode.Title, Character.Normalized, Location.Normalized, Spoken_Words from Script_Load
INNER JOIN Character on Script_Load.character_id = Character.ID
INNER JOIN Location on Script_Load.location_id = Location.ID
INNER JOIN Episode on Script_Load.episode_id = Episode.ID
WHERE Episode.Number_In_Season in (1,2,3)
AND Spoken_Words LIKE '%d''oh%'
order by Character.Normalized



select Episode.Title, Character.Name, Character.Normalized, Location.Normalized, Script_Load.spoken_Words from Episode
INNER JOIN Script_Load on Episode.id = Script_Load.Episode_ID
LEFT JOIN Character on Script_Load.character_id = Character.ID
LEFT JOIN Location on Script_Load.location_id = Location.ID
WHERE character.normalized LIKE '%simpson%'
--WHERE Script_Load.Spoken_Words LIKE '%duff%'
order by Character.Normalized


select Episode.Title, Writer.Writer from Episode
left join Writer on Episode.Episode_Code = Writer.Episode_Code


select Episode.Title, Character.Normalized, Location.Normalized, Script_Load.spoken_Words, Writer.Writer, Episode.Season, Episode.Number_In_Season from Episode
INNER JOIN Script_Load on Episode.id = Script_Load.Episode_ID
LEFT JOIN Character on Script_Load.character_id = Character.ID
LEFT JOIN Location on Script_Load.location_id = Location.ID
LEFT JOIN Writer on Episode.Episode_Code = Writer.Episode_Code
WHERE Episode.Number_In_Season in (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18)
AND character.normalized LIKE '%simpson%'
--order by Character.Normalized
ORDER BY Writer.Writer, Season, Number_In_Season


select Writer.Writer, WC.Writer_Count from Writer
LEFT JOIN Episode on Writer.Episode_Code = Episode.Episode_Code
join (select Writer.Writer, count(*) as Writer_Count from Writer
         group by Writer.Writer) WC
	on Writer.Writer = WC.writer
 group by writer.writer, Writer_Count
ORDER BY WC.Writer_Count desc, Writer.Writer

--Writer count of episodes
select Writer.Writer, WC.Writer_Count from Writer
LEFT JOIN Episode on Writer.Episode_Code = Episode.Episode_Code
join (select Writer.Writer, count(*) as Writer_Count from Writer
         group by Writer.Writer) WC
	on Writer.Writer = WC.writer
--	where episode.Season in (1,2,3,4,5,6,7)
 group by writer.writer, Writer_Count
ORDER BY WC.Writer_Count desc, Writer.Writer
