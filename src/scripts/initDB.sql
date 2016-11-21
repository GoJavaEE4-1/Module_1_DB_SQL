
create table developers (
    developer_id serial primary key,
    developer_first_name character varying(15) not null,
    developer_last_name character varying(15) not null,
    developer_email character varying(50) not null,
    developer_phone character varying(15) not null,
    developer_experience integer not null,
    project_id_fk serial REFERENCES projects(project_id)
);

CREATE TABLE projects (
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



    
-- Create table "COMPANIES"
    CREATE TABLE homework_1."COMPANIES"(
    "COMPANY_ID" integer NOT NULL,
    "NAME" character(30) COLLATE pg_catalog."default" NOT NULL,
    "STAFF" integer,
    CONSTRAINT companies_pkey PRIMARY KEY ("COMPANY_ID"));