-- adding column salary to table developers

alter table developers add column developer_salary real not null default 0;

-- adding DATA to table developers in column developer_salary

UPDATE developers
SET developer_salary = 1300
where developer_id = 1;

UPDATE developers
SET developer_salary = 2300
where developer_id = 2;

UPDATE developers
SET developer_salary = 1800
where developer_id = 3;

UPDATE developers
SET developer_salary = 2800
where developer_id = 4;

UPDATE developers
SET developer_salary = 1200
where developer_id = 5;

UPDATE developers
SET developer_salary = 3200
where developer_id = 6;

UPDATE developers
SET developer_salary = 2100
where developer_id = 7;


SELECT * FROM developers