
create table developers (
    developer_id serial primary key,
    developer_first_name character varying(15) not null,
    developer_last_name character varying(15) not null,
    developer_email character varying(50) not null,
    developer_phone character varying(15) not null,
    developer_experience integer not null,
    project_id_fk serial REFERENCES projects(project_id)
);

create table projects (
    project_id serial primary key,
    project_name character varying(30) NOT NULL,
    project_budget numeric,
    project_description text
);

--creating links between developers and projects (1-M)

--    alter table developers add column project_id integer;
--    ALTER TABLE developers ADD constraint project_id_fk FOREIGN KEY (project_id) REFERENCES projects(project_id);


--    update developers set project_id = 1 where project_id < 4;
--    update developers set project_id = 2 where project_id >= 4 and project_id < 6;
--    update developers set project_id = 3 where project_id >= 6;

--deleting column from table

--ALTER TABLE projects DROP COLUMN project_dev_team

-- Create table "COMPANIES" - https://trello.com/c/tN3Ydzby
    CREATE TABLE homework_1."COMPANIES"(
    "COMPANY_ID" integer NOT NULL,
    "NAME" character(30) COLLATE pg_catalog."default" NOT NULL,
    "STAFF" integer,
    CONSTRAINT companies_pkey PRIMARY KEY ("COMPANY_ID"));
    
-- Create table "CUSTOMERS" - https://trello.com/c/W668ugNg
    CREATE TABLE homework_1."CUSTOMERS"(
    "CUSTOMER_ID" integer NOT NULL,
    "NAME" character(30) COLLATE pg_catalog."default" NOT NULL,
    "CITY" character varying(30) COLLATE pg_catalog."default",
    "MOBILE PHONE" integer,
    CONSTRAINT customers_pkey PRIMARY KEY ("CUSTOMER_ID"));
    
-- Разработчики могут иметь много навыков - https://trello.com/c/xJf5WyL3
    CREATE TABLE homework_1."DEVELOPERS"(
    "DEVELOPERS_ID" integer NOT NULL,
    "NAME" character(30) COLLATE pg_catalog."default" NOT NULL,
    "PROJECT_ID" integer,
    CONSTRAINT developers_pkey PRIMARY KEY ("DEVELOPERS_ID"),
    CONSTRAINT "PROJECT_ID_FK" FOREIGN KEY ("PROJECT_ID")
        REFERENCES homework_1."PROJECTS" ("PROJECT_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION);
        
    CREATE TABLE homework_1."DEV_SKI"(
    "DEV_ID" integer NOT NULL,
    "SKI_ID" integer NOT NULL,
    CONSTRAINT "DEV_ID_FK" FOREIGN KEY ("DEV_ID")
        REFERENCES homework_1."DEVELOPERS" ("DEVELOPERS_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "SKI_ID_FK" FOREIGN KEY ("SKI_ID")
        REFERENCES homework_1."SKILLS" ("SKILL_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION);
        
   	CREATE TABLE homework_1."SKILLS"(
    "SKILL_ID" integer NOT NULL,
    "SKILL" character(30) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT skills_pkey PRIMARY KEY ("SKILL_ID"));