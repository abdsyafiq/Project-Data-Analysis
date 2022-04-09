SELECT
	SUBSTR(productCode, 1, 3) AS categoryID,
	COUNT(DISTINCT orderNumber) AS total_order,
	SUM(quantity) AS total_penjualan
FROM (
	SELECT
		productCode,
		orderNumber,
		quantity,
		status
	FROM
		orders_2
	WHERE
		status = 'Shipped'
	) AS tabel_c
GROUP BY
	1
ORDER BY
	2 DESC;
