-- ------------------------------------------------------------
-- Creates all the concepts that contain the relevant data in the knowledge graph
-- ------------------------------------------------------------
CREATE OR REPLACE CONCEPT `person` (`age` bigint, `city` string, `first_name` string, `last_name` string, `person_id` bigint, `phone_number` string , PRIMARY KEY(`person_id`), LABEL(`first_name`, `last_name`)) INHERITS (`thing`) DESCRIPTION 'Information about an individual person: name, age, phone number and city';
CREATE OR REPLACE CONCEPT `device` (`call_id` bigint, `device_id` bigint, `device_type` string, `person_id` bigint , PRIMARY KEY(`device_id`), LABEL(`device_type`)) INHERITS (`thing`) DESCRIPTION 'Information on the types of devices and the calls that were made from them.';
CREATE OR REPLACE CONCEPT `contract` (`company_name` string, `contract_date` string, `contract_type` string, `person_id` bigint, `phone_number` string , PRIMARY KEY(`phone_number`), LABEL(`company_name`)) INHERITS (`thing`) DESCRIPTION 'A contract between a person and a company'; 
CREATE OR REPLACE CONCEPT `company` (`company_name` string, `technology` string , PRIMARY KEY(`company_name`), LABEL(`company_name`)) INHERITS (`thing`) DESCRIPTION 'Names of companies and their technologies '; 
CREATE OR REPLACE CONCEPT `adult`  INHERITS (`person`) DESCRIPTION 'Information about individual adults: name, age, phone number and city' FROM `timbr`.`person` WHERE `age` >= 18;
CREATE OR REPLACE CONCEPT `minor`  INHERITS (`person`) DESCRIPTION 'Information about individual minors: name, age, phone number and city' FROM `timbr`.`person` WHERE `age` < 18;
CREATE OR REPLACE CONCEPT `pc`  INHERITS (`device`) DESCRIPTION 'Information on the calls that were made by people using a PC' FROM `timbr`.`device` WHERE `device_type` = 'PC';
CREATE OR REPLACE CONCEPT `tablet`  INHERITS (`device`) DESCRIPTION 'Information on the calls that were made by people using Tablets' FROM `timbr`.`device` WHERE `device_type` = 'Tablet';
CREATE OR REPLACE CONCEPT `smartwatch`  INHERITS (`device`) DESCRIPTION 'Information on the calls that were made by people using smartwatches' FROM `timbr`.`device` WHERE `device_type` = 'Smartwatch';
CREATE OR REPLACE CONCEPT `smartphone`  INHERITS (`device`) DESCRIPTION 'Information on the calls that were made by people using smartphones' FROM `timbr`.`device` WHERE `device_type` = 'Smartphone';
CREATE OR REPLACE CONCEPT `call` (`callee_number` string, `caller_number` string, `call_duration` bigint, `call_id` bigint, `device_id` bigint, `started_at` timestamp , PRIMARY KEY(`call_id`), LABEL(`call_id`)) INHERITS (`thing`) DESCRIPTION 'A call between two people as caller and callee, including call start time and call duration';
CREATE OR REPLACE CONCEPT `call_longer_than_five_min`  INHERITS (`call`) DESCRIPTION 'A call between two people as caller and callee, including call start time and call duration for calls longer than 5 minutes' FROM `timbr`.`call` WHERE `call_duration` > 300;
-- ------------------------------------------------------------
