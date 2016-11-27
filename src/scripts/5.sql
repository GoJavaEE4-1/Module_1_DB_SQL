-- 5) To find a client (customer) that brings the least profit of the company (the company) for each of the companies - https://trello.com/c/hKPUsy6t



	select customer_name, company_name, min (project_cost) from customers c
    inner join projects p on c.customer_id = p.customer_id_fk
    left join companies on companies.company_id = p.company_id_fk
    where project_cost = (select min(project_cost) from projects)
    group by customer_name, company_name
    order by min (project_cost);



