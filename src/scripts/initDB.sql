     create table skills(
            skill_id serial primary key,
            skill_name varchar not null
    );

     create table customers(
            customer_id serial primary key,
            customer_name varchar not null
    );

     create table companies (
			company_id int4 not null,
			name char(30) collate default not null,
			staff int4,
			constraint companies_pkey primary key (company_id)
	);

    create table projects (
             project_id serial primary key,
             project_name character varying(30) not null,
             project_description text,
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
            dev_id integer not null,
            sk_id integer not null,
            constraint dev_id_fk foreign key (dev_id) references developers (developer_id) on delete no action on update no action,
            constraint sk_id_fk foreign key (sk_id) references skills (skill_id) on delete no action on update no action
    );

    alter table projects add production_date date;