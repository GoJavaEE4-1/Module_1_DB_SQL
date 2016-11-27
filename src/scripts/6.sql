create view avarage as
select projects.project_profit, projects.project_id, developers.developer_salary
from projects, developers
where projects.project_id=developers.project_id_fk and project_profit=
(select min(project_profit) from projects);

select avg(developer_salary) from avarage;