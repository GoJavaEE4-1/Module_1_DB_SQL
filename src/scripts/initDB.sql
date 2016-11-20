
create table developers (
    developers_id integer primary key not null,
    developers_name text not null,
    developers_total_staff integer not null,
    developers_email character varying(50) not null,
    developers_phone character varying(15) not null
);

CREATE TABLE projects (
    projects_id integer primary key NOT NULL,
    projects_name character varying(30) NOT NULL,
    projects_budget numeric,
    projects_dev_team character varying(20),
    projects_description text
);