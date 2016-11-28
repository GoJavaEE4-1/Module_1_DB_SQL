select avg(developers.salary)
from projects, developers
where projects.project_id=developers.project_id_fk and project_profit=
(select min(project_profit) from projects);