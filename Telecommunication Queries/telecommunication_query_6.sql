-- ------------------------------------------------------------
-- Sixth query of the data that finds the first and last name of any person who received any form of communication from an adult, whether it be a call, message or anything else that we defined as a communication.
-- ------------------------------------------------------------
select `performed_communication[communication].communicated_with[person].entity_label`, count(`performed_communication[communication].entity_id`) number_of_communications
from dtimbr.adult
group by  `performed_communication[communication].communicated_with[person].entity_label`
order by number_of_communications desc
-- ------------------------------------------------------------
