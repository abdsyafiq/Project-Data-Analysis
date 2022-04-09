SELECT
	quarter,
	SUM(quantity) AS total_penjualan,
	SUM(quantity * priceeach) AS revenue
FROM (
	SELECT
		orderNumber,
		status,
		quantity,
		priceeach,
		'1' AS quarter
	FROM
		orders_1
	UNION
	SELECT
		orderNumber,
		status,
		quantity,
		priceeach,
		'2' AS quarter
	FROM
		orders_2
	) AS tabel_a
WHERE
	status = 'Shipped'
GROUP BY
	1
ORDER BY
	1;