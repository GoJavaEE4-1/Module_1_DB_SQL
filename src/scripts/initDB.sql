
create table developers (
    developer_id integer primary key not null,
    developer_first_name character varying(15) not null,
    developer_last_name character varying(15) not null,
    developer_email character varying(50) not null,
    developer_phone character varying(15) not null,
    developer_experience integer not null
);

CREATE TABLE projects (
    project_id integer primary key NOT NULL,
    project_name character varying(30) NOT NULL,
    project_budget numeric,
    project_dev_team character varying(20),
    project_description text
);

--create table developers_projects (
--    developer_id integer primary key not null,
--    project_id integer primary key NOT NULL
--);