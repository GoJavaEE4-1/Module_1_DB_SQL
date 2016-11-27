-- 2) To find the most expensive project (based on the salary of developers) - https://trello.com/c/81yF3qR5

select projects.project_name, sum(developers.developer_salary)
from projects
inner join developers on developers.project_id_fk = projects.project_id
group by projects.project_name
order by sum desc
limit 1