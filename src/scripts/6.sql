create view avarage as
select projects.project_cost, projects.project_id, developers.developer_salary
from projects, developers
where projects.project_id = developers.project_id_fk
      and project_cost = (select min(project_cost) from projects);

select avg(developer_salary) from avarage;