-- ------------------------------------------------------------
-- Fourth query of the data that finds the first and last name of any person who received a phone call from an adult as well as the number of calls they received.
-- ------------------------------------------------------------
select `performed_communication[call].communicated_with[person].entity_label`, count(`performed_communication[call].entity_id`) number_of_calls
from dtimbr.adult
group by `performed_communication[call].communicated_with[person].entity_label`
order by number_of_calls desc
-- ------------------------------------------------------------
