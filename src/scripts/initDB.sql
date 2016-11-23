


     create table skills(
            skill_id serial primary key,
            skill_name varchar not null
    );


     create table customers(
            customer_id serial primary key,
            customer_name varchar not null
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