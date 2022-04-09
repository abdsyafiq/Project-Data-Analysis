SELECT
	quarter,
	COUNT(DISTINCT customerID) AS total_customers
FROM (
	SELECT
		customerID,
		createDate,
		QUARTER(createDate) AS quarter
	FROM
		customer
	WHERE
		createDate BETWEEN '2004-01-01' AND '2004-06-30'
	) AS tabel_b
GROUP BY
	1
ORDER BY
	1;