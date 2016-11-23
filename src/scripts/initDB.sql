

     create table developers (
         developer_id serial primary key,
         developer_first_name character varying(15) not null,
         developer_last_name character varying(15) not null,
         developer_email character varying(50) not null,
         developer_phone character varying(15) not null,
         project_id_fk integer references projects(project_id),
         company_id_fk integer references companies(company_id)
     );

     create table skills(
            skill_id serial primary key,
            skill_name varchar not null
    );


     create table customers(
            customer_id serial primary key,
            customer_name varchar not null
    );
    
    create table companies (
			company_ID int4 NOT NULL,
			name char(30) collate default NOT NULL,
			staff int4,
			constraint companies_pkey primary key (company_ID)
	); 