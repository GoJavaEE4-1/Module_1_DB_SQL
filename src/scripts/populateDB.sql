--inserting DATA into SKILLS table

insert into skills (skill_name) values ('Java');
insert into skills (skill_name) values ('C++');
insert into skills (skill_name) values ('Fortran');
insert into skills (skill_name) values ('Basic');
insert into skills (skill_name) values ('ObjectiveC');
insert into skills (skill_name) values ('Pascal');
insert into skills (skill_name) values ('C');
insert into skills (skill_name) values ('Python');
insert into skills (skill_name) values ('PHP');
insert into skills (skill_name) values ('Ruby');

--inserting DATA into CUSTOMERS table

insert into customers (customer_name) values ('John Derreck');
insert into customers (customer_name) values ('Merry Jane');
insert into customers (customer_name) values ('Lisa Huvir');
insert into customers (customer_name) values ('Sobby Sorrotski');
insert into customers (customer_name) values ('Nanny Debili');

--inserting DATA into COMPANIES table

insert into companies (company_name, company_staff) values ('epam', 4500);
insert into companies (company_name, company_staff) values ('softserve', 4171);
insert into companies (company_name, company_staff) values ('luxoft', 3735);
insert into companies (company_name, company_staff) values ('globallogic', 2751);
insert into companies (company_name, company_staff) values ('ciklum', 2500);
insert into companies (company_name, company_staff) values ('nix solutions ltd.', 1500);

--inserting DATA into PROJECTS table

insert into projects
(project_name, project_description, project_profit, company_id_fk, customer_id_fk)
values ('Wedding agency', 'Some project description', 20000, 1, 2);
insert into projects
(project_name, project_description, project_profit, company_id_fk, customer_id_fk)
values ('Online hotel booking',  'Some project description', 30000, 2, 3);
insert into projects
(project_name, project_description, project_profit, company_id_fk, customer_id_fk)
values ('Online currency converter',  'Some project description', 5000, 4, 2);
insert into projects
(project_name, project_description, project_profit, company_id_fk, customer_id_fk)
values ('Social advertising',  'Some project description', 5000, 1, 3);
insert into projects
(project_name, project_description, project_profit, company_id_fk, customer_id_fk)
values ('Flight tickets',  'Some project description', 10000, 3, 4);
insert into projects
(project_name, project_description, project_profit, company_id_fk, customer_id_fk)
values ('Web-banking',  'Some project description', 30000, 4, 2);
insert into projects
(project_name, project_description, project_profit, company_id_fk, customer_id_fk)
values ('Chinese food market',  'Some project description', 15000, 5, 3);

--inserting DATA into DEVELOPERS table

insert into developers
(developer_first_name, developer_last_name, developer_email,
developer_phone, project_id_fk, company_id_fk)
values ('Ivan', 'Virsky', 'devmon@gmail.com', '+380224563454', 2, 1);
insert into developers
(developer_first_name, developer_last_name, developer_email,
developer_phone, project_id_fk, company_id_fk)
values ('John', 'Table', 'info@softlab.com', '+380231528414', 4, 3);
insert into developers
(developer_first_name, developer_last_name, developer_email,
developer_phone, project_id_fk, company_id_fk)
values ('Potty', 'Mist', 'ss@gmail.com', '+380294626396', 6, 6);
insert into developers
(developer_first_name, developer_last_name, developer_email,
developer_phone, project_id_fk, company_id_fk)
values ('David', 'Dorts', 'it.zone@zoneit.com', '+380270534522', 1, 3);
insert into developers
(developer_first_name, developer_last_name, developer_email,
developer_phone, project_id_fk, company_id_fk)
values ('Valiant', 'Miserty', 'it.zone@zoneit.com', '+380270534522', 2, 2);
insert into developers
(developer_first_name, developer_last_name, developer_email,
developer_phone, project_id_fk, company_id_fk)
values ('Jenny', 'Telly', 'it.zone@zoneit.com', '+380270534522', 1, 5);
insert into developers
(developer_first_name, developer_last_name, developer_email,
developer_phone, project_id_fk, company_id_fk)
values ('Roger', 'Brown', 'it.zone@zoneit.com', '+380270534522', 4, 4);












