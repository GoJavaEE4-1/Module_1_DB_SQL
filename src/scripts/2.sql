-- 2) To find the most expensive project (based on the salary of developers) - https://trello.com/c/81yF3qR5
	SELECT
	"PROJECTS"."PROJECT_NAME",
	SUM ("DEVELOPERS"."SALARY")
	FROM
	"PROJECTS"
	INNER JOIN "DEVELOPERS" ON "DEVELOPERS"."PROJECT_ID" = "PROJECTS"."PROJECT_ID"
	GROUP BY
	"PROJECTS"."PROJECT_NAME"
	ORDER BY
	SUM DESC
	LIMIT 1;