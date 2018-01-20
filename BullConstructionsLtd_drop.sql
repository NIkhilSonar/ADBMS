-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-11-11 06:42:58.151

-- foreign keys
ALTER TABLE Client_Transactions
    DROP CONSTRAINT Client_Transactions_Client;

ALTER TABLE Client_Transactions
    DROP CONSTRAINT Client_Transactions_Project;

ALTER TABLE Project
    DROP CONSTRAINT Project_Client;

ALTER TABLE equipment_list
    DROP CONSTRAINT equipment_list_Equipment;

ALTER TABLE equipment_list
    DROP CONSTRAINT equipment_list_Project;

ALTER TABLE material_list
    DROP CONSTRAINT material_list_Project;

ALTER TABLE material_list
    DROP CONSTRAINT material_list_material;

ALTER TABLE material
    DROP CONSTRAINT material_vendor;

ALTER TABLE project_Team
    DROP CONSTRAINT project_Team_Project;

ALTER TABLE project_Team
    DROP CONSTRAINT project_Team_Staff;

-- tables
DROP TABLE Client;

DROP TABLE Client_Transactions;

DROP TABLE Equipment;

DROP TABLE Project;

DROP TABLE Staff;

DROP TABLE equipment_list;

DROP TABLE material;

DROP TABLE material_list;

DROP TABLE project_Team;

DROP TABLE vendor;

-- End of file.

