-- 3) To calculate the total salary of all Java developers - https://trello.com/c/t5Xa1Lz4
select
	skills.skill_id, skill_name,
	sum( developers.developer_salary )
from
	skills 
	inner join dev_skills on dev_skills.skill_id = skills.skill_id
	inner join developers on dev_skills.developer_id = developers.developer_id
where skills.skill_name = 'Java'
group by skills.skill_id