-- 5) To find a client (customer) that brings the least profit of the company (the company) for each of the companies - https://trello.com/c/hKPUsy6t
	SELECT
	"COMPANIES"."COMPANY_ID",
	"COMPANIES"."NAME",
	"PROJECTS"."PROJECT_NAME",
	"PROJECTS"."COST",
	"CUSTOMERS"."NAME"
	FROM
	"COMPANIES"
	INNER JOIN "COM_PRO" ON "COM_PRO"."COM_ID" = "COMPANIES"."COMPANY_ID"
	INNER JOIN "PROJECTS" ON "COM_PRO"."PRO_ID" = "PROJECTS"."PROJECT_ID"
	INNER JOIN "CUSTOMERS" ON "PROJECTS"."CUSTOMER_ID" = "CUSTOMERS"."CUSTOMER_ID"
	ORDER BY "COMPANIES"."NAME", "PROJECTS"."COST";