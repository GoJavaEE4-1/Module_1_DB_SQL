
create table developers (
    developer_id integer primary key not null,
    developer_first_name character varying(15) not null,
    developer_last_name character varying(15) not null,
    developer_email character varying(50) not null,
    developer_phone character varying(15) not null,
    developer_experience integer not null,
);

CREATE TABLE projects (
    project_id integer primary key NOT NULL,
    project_name character varying(30) NOT NULL,
    project_budget numeric,
    project_dev_team character varying(20),
    project_description text
);

--creating links between developers and projects (1-M)

    alter table developers add column project_id integer;
    ALTER TABLE developers ADD constraint project_id_fk FOREIGN KEY (project_id) REFERENCES projects(project_id);
    

    update developers set project_id = 1 where project_id < 4;
    update developers set project_id = 1 where project_id >= 4 and project_id < 6;
    update developers set project_id = 1 where project_id >= 6;