
--inserting DATA into DEVELOPERS table

insert into developers (developer_first_name, developer_last_name, developer_email, developer_phone, project_id_fk, company_id_fk)
values ('Ivan', 'Virsky', 'devmon@gmail.com', '+380224563454', 2, 1);
insert into developers (developer_first_name, developer_last_name, developer_email, developer_phone, project_id_fk, company_id_fk)
values ('John', 'Table', 'info@softlab.com', '+380231528414', 4, 3);
insert into developers (developer_first_name, developer_last_name, developer_email, developer_phone, project_id_fk, company_id_fk)
values ('Potty', 'Mist', 'ss@gmail.com', '+380294626396', 6, 6);
insert into developers (developer_first_name, developer_last_name, developer_email, developer_phone, project_id_fk, company_id_fk)
values ('David', 'Dorts', 'it.zone@zoneit.com', '+380270534522', 1, 7);
insert into developers (developer_first_name, developer_last_name, developer_email, developer_phone, project_id_fk, company_id_fk)
values ('Valiant', 'Miserty', 'it.zone@zoneit.com', '+380270534522', 2, 2);
insert into developers (developer_first_name, developer_last_name, developer_email, developer_phone, project_id_fk, company_id_fk)
values ('Jenny', 'Telly', 'it.zone@zoneit.com', '+380270534522', 1, 5);
insert into developers (developer_first_name, developer_last_name, developer_email, developer_phone, project_id_fk, company_id_fk)
values ('Roger', 'Brown', 'it.zone@zoneit.com', '+380270534522', 4, 4);



--inserting DATA into PROJECTS table

insert into projects (project_name, project_description, project_profit, company_id_fk, customer_id_fk)
values ('Wedding agency', 'Some project description', 20000, 1, 2);
insert into projects (project_name, project_description, project_profit, company_id_fk, customer_id_fk)
values ('Online hotel booking',  'Some project description', 30000, 2, 3);
insert into projects (project_name, project_description, project_profit, company_id_fk, customer_id_fk)
values ('Online currency converter',  'Some project description', 5000, 4, 2);
insert into projects (project_name, project_description, project_profit, company_id_fk, customer_id_fk)
values ('Social advertising',  'Some project description', 5000, 1, 3);
insert into projects (project_name, project_description, project_profit, company_id_fk, customer_id_fk)
values ('Flight tickets',  'Some project description', 10000, 3, 4);
insert into projects (project_name, project_description, project_profit, company_id_fk, customer_id_fk)
values ('Web-banking',  'Some project description', 30000, 4, 2);
insert into projects (project_name, project_description, project_profit, company_id_fk, customer_id_fk)
values ('Chinese food market',  'Some project description', 15000, 5, 3);



--inserting DATA into COMPANIES table
insert into companies (company_id,"name",staff) values (0,'epam',4500);
insert into companies (company_id,"name",staff) values (1,'softserve',4171);
insert into companies (company_id,"name",staff) values (2,'luxoft',3735);
insert into companies (company_id,"name",staff) values (3,'globallogic',2751);
insert into companies (company_id,"name",staff) values (4,'ciklum',2500);
insert into companies (company_id,"name",staff) values (5,'nix solutions ltd.',1500);










