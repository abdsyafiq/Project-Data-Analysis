SELECT COUNT(DISTINCT customerID) as total_customers FROM orders_1;

SELECT
	'1' AS quarter,
	(COUNT(DISTINCT customerID) / 25) * 100 AS Q2
FROM
	orders_1
WHERE
	customerID IN (
		SELECT
			DISTINCT customerID
		FROM
			orders_2
	);