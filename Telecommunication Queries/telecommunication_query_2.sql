-- ------------------------------------------------------------
-- Second query of the data that also finds the first and last name of any person who is age 18 and above who made a phone call and lives in the city of Metropolis, however this time doing so with busniess logic
-- ------------------------------------------------------------
select `caller[adult].first_name`, `caller[adult].last_name`
from `dtimbr`.`call` 
where `caller[adult].city` = 'Metropolis' 
-- ------------------------------------------------------------
