-- ------------------------------------------------------------
-- Creates all the data mappings in the knowledge graph
-- ------------------------------------------------------------
CREATE OR REPLACE MAPPING `map_person_1` INTO `person` AS SELECT `age` AS `age`, `city` AS `city`, `first_name` AS `first_name`, `last_name` AS `last_name`, `person_id` AS `person_id`,`phone_number` AS `phone_number` FROM `calls`.`people`;
CREATE OR REPLACE MAPPING `map_device_1` INTO `device` AS SELECT `call_id` AS `call_id`, `device_id` AS `device_id`, `device_type` AS `device_type`, `person_id` AS `person_id` FROM `calls`.`devices`;
CREATE OR REPLACE MAPPING `map_contract_1` INTO `contract` AS SELECT `company_name` AS `company_name`, `contract_date` AS `contract_date`, `contract_type` AS `contract_type`, `person_id` AS `person_id`, `phone_number` AS `phone_number` FROM `calls`.`contracts`;
CREATE OR REPLACE MAPPING `map_company_1` INTO `company` AS SELECT `company_name` AS `company_name`, `technology` AS `technology` FROM `calls`.`companies`;
CREATE OR REPLACE MAPPING `map_call_1` INTO `call` AS SELECT `callee_number` AS `callee_number`, `caller_number` AS `caller_number`, `call_duration` AS `call_duration`, `call_id` AS `call_id`, `device_id` AS `device_id`, CAST(`started_at` AS TIMESTAMP) AS `started_at` FROM `calls`.`calls`;
-- ------------------------------------------------------------
