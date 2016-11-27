
-- adding column cost to table projects


alter table projects add column project_cost real not null default 0;

-- adding DATA to table projects in column project_cost

UPDATE projects
SET project_cost = 13000
where project_id = 1;

UPDATE projects
SET project_cost = 20300
where project_id = 2;

UPDATE projects
SET project_cost = 10800
where project_id = 3;

UPDATE projects
SET project_cost = 25800
where project_id = 4;

UPDATE projects
SET project_cost = 10200
where project_id = 5;

UPDATE projects
SET project_cost = 7200
where project_id = 6;

UPDATE projects
SET project_cost = 63100
where project_id = 7;


SELECT * FROM projects