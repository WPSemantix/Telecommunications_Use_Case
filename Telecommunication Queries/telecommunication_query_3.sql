-- ------------------------------------------------------------
-- Third query of the data that finds the first and last name as well as the phone number of any person who made a cellular contract with a company called "Breezcom" from the beginning of 2018 and onwards
-- ------------------------------------------------------------
select `signed_by[person].first_name`, `signed_by[person].last_name`, `phone_number`, `contract_date`, `company_name`
from `dtimbr`.`contract`  
where `company_name` = 'Breezcom'  
and `contract_date` > '2018-01-01' 
-- ------------------------------------------------------------
