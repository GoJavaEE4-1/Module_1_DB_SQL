-- 3) To calculate the total salary of all Java developers - https://trello.com/c/t5Xa1Lz4
select
	skills.skill,
	sum( developers.salary )
from
	skills inner join dev_ski on dev_ski.ski_id = skills.skill_id
	inner join developers on dev_ski.dev_id = developers.developer_id
where
	skills.skill = 'Java'
group by
	skills.skill