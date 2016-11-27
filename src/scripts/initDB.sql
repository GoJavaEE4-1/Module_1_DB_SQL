create table skills(
    skill_id serial primary key,
    skill_name varchar not null
);

create table customers(
    customer_id serial primary key,
    customer_name varchar not null
);

create table companies (
    company_id serial not null,
    company_name varchar(30) not null,
    company_staff int not null,
    constraint companies_pk primary key (company_id)
);

create table projects (
    project_id serial primary key,
    project_name character varying(30) not null,
    project_description text,
    project_profit numeric,
    company_id_fk integer references companies(company_id),
    customer_id_fk integer references customers(customer_id)
);

create table developers (
    developer_id serial primary key,
    developer_first_name character varying(15) not null,
    developer_last_name character varying(15) not null,
    developer_email character varying(50) not null,
    developer_phone character varying(15) not null,
    project_id_fk integer references projects(project_id),
    company_id_fk integer references companies(company_id)
);


create table dev_skills(
    developer_id integer not null,
    skill_id integer not null,
    developer_id_fk integer references developers (developer_id)
    on delete no action on update no action,
    skill_id_fk integer references skills (skill_id)
    on delete no action on update no action
);


    alter table projects add production_date date;