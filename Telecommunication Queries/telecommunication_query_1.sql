-- ------------------------------------------------------------
-- First query of the data that finds the first and last name of any person who is age 18 and above who made a phone call and lives in the city of Metropolis
-- ------------------------------------------------------------
select `caller[person].first_name`, `caller[person].last_name`
from `dtimbr`.`call` 
where `caller[person].age` >= 18
and `caller[person].city` = 'Metropolis' 
-- ------------------------------------------------------------
