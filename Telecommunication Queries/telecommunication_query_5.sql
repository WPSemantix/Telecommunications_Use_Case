-- ------------------------------------------------------------
-- Fifth query of the data that finds the first and last name of any person who received a text message from an adult, as well as the number of messages they received.
-- ------------------------------------------------------------
select `performed_communication[message].communicated_with[person].entity_label`, count(`performed_communication[message].entity_id`) number_of_messages
from dtimbr.adult
group by  `performed_communication[message].communicated_with[person].entity_label`
order by number_of_messages desc
-- ------------------------------------------------------------
