create view avarage as
select projects.project_profit, projects.project_id, developers.salary
from projects, developers
where projects.project_id=developers.project_id_fk and project_profit=
(select min(project_profit) from projects);

select avg(salary) from avarage;