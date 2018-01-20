-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-11-12 02:06:44.106

-- tables
-- Table: Client
CREATE TABLE Client (
    client_id integer  NOT NULL,
    client_name varchar2(50)  NOT NULL,
    client_contact number(10,0)  NOT NULL,
    client_email varchar2(50)  NOT NULL,
    CONSTRAINT Client_pk PRIMARY KEY (client_id)
) ;

-- Table: Client_Transactions
CREATE TABLE Client_Transactions (
    transaction_id integer  NOT NULL,
    amount number(100,0)  NOT NULL,
    Project_project_id integer  NOT NULL,
    Client_client_id integer  NOT NULL,
    CONSTRAINT Client_Transactions_pk PRIMARY KEY (transaction_id)
) ;

-- Table: Equipment
CREATE TABLE Equipment (
    eq_id integer  NOT NULL,
    eq_name varchar2(50)  NOT NULL,
    CONSTRAINT Equipment_pk PRIMARY KEY (eq_id)
) ;

-- Table: Project
CREATE TABLE Project (
    project_id integer  NOT NULL,
    project_title varchar2(50)  NOT NULL,
    project_location varchar2(50)  NOT NULL,
    Client_client_id integer  NOT NULL,
    start_date date  NOT NULL,
    end_date date  NOT NULL,
    project_status varchar2(10)  NOT NULL,
    CONSTRAINT Project_pk PRIMARY KEY (project_id)
) ;

-- Table: Staff
CREATE TABLE Staff (
    staff_id integer  NOT NULL,
    staff_name varchar2(50)  NOT NULL,
    staff_contact number(15,0)  NOT NULL,
    designation varchar2(50)  NOT NULL,
    wages float(100)  NOT NULL,
    CONSTRAINT Staff_pk PRIMARY KEY (staff_id)
) ;

-- Table: equipment_list
CREATE TABLE equipment_list (
    sno integer  NOT NULL,
    eq_list integer  NOT NULL,
    Equipment_eq_id integer  NOT NULL,
    Project_project_id integer  NOT NULL,
    CONSTRAINT equipment_list_pk PRIMARY KEY (sno)
) ;

-- Table: material
CREATE TABLE material (
    material_id integer  NOT NULL,
    vendor_vendor_id integer  NOT NULL,
    CONSTRAINT material_pk PRIMARY KEY (material_id)
) ;

-- Table: material_list
CREATE TABLE material_list (
    sno integer  NOT NULL,
    material_list integer  NOT NULL,
    material_material_id integer  NOT NULL,
    Project_project_id integer  NOT NULL,
    Cost float(10)  NOT NULL,
    CONSTRAINT material_list_pk PRIMARY KEY (sno)
) ;

-- Table: project_Team
CREATE TABLE project_Team (
    sno integer  NOT NULL,
    team_id integer  NOT NULL,
    Staff_staff_id integer  NOT NULL,
    Project_project_id integer  NOT NULL,
    CONSTRAINT project_Team_pk PRIMARY KEY (sno)
) ;

-- Table: vendor
CREATE TABLE vendor (
    vendor_id integer  NOT NULL,
    vendor_name varchar2(50)  NOT NULL,
    CONSTRAINT vendor_pk PRIMARY KEY (vendor_id)
) ;

-- foreign keys
-- Reference: Client_Transactions_Client (table: Client_Transactions)
ALTER TABLE Client_Transactions ADD CONSTRAINT Client_Transactions_Client
    FOREIGN KEY (Client_client_id)
    REFERENCES Client (client_id);

-- Reference: Client_Transactions_Project (table: Client_Transactions)
ALTER TABLE Client_Transactions ADD CONSTRAINT Client_Transactions_Project
    FOREIGN KEY (Project_project_id)
    REFERENCES Project (project_id);

-- Reference: Project_Client (table: Project)
ALTER TABLE Project ADD CONSTRAINT Project_Client
    FOREIGN KEY (Client_client_id)
    REFERENCES Client (client_id);

-- Reference: equipment_list_Equipment (table: equipment_list)
ALTER TABLE equipment_list ADD CONSTRAINT equipment_list_Equipment
    FOREIGN KEY (Equipment_eq_id)
    REFERENCES Equipment (eq_id);

-- Reference: equipment_list_Project (table: equipment_list)
ALTER TABLE equipment_list ADD CONSTRAINT equipment_list_Project
    FOREIGN KEY (Project_project_id)
    REFERENCES Project (project_id);

-- Reference: material_list_Project (table: material_list)
ALTER TABLE material_list ADD CONSTRAINT material_list_Project
    FOREIGN KEY (Project_project_id)
    REFERENCES Project (project_id);

-- Reference: material_list_material (table: material_list)
ALTER TABLE material_list ADD CONSTRAINT material_list_material
    FOREIGN KEY (material_material_id)
    REFERENCES material (material_id);

-- Reference: material_vendor (table: material)
ALTER TABLE material ADD CONSTRAINT material_vendor
    FOREIGN KEY (vendor_vendor_id)
    REFERENCES vendor (vendor_id);

-- Reference: project_Team_Project (table: project_Team)
ALTER TABLE project_Team ADD CONSTRAINT project_Team_Project
    FOREIGN KEY (Project_project_id)
    REFERENCES Project (project_id);

-- Reference: project_Team_Staff (table: project_Team)
ALTER TABLE project_Team ADD CONSTRAINT project_Team_Staff
    FOREIGN KEY (Staff_staff_id)
    REFERENCES Staff (staff_id);

-- End of file.

