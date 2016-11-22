-- 3) To calculate the total salary of all Java developers - https://trello.com/c/t5Xa1Lz4
	SELECT
	"SKILLS"."SKILL",
	SUM ("DEVELOPERS"."SALARY")
	FROM
	"SKILLS"
	INNER JOIN "DEV_SKI" ON "DEV_SKI"."SKI_ID" = "SKILLS"."SKILL_ID"
	INNER JOIN "DEVELOPERS" ON "DEV_SKI"."DEV_ID" = "DEVELOPERS"."DEVELOPERS_ID"
	GROUP BY
	"SKILLS"."SKILL"
	HAVING
	homework_1."SKILLS"."SKILL" = 'Java';