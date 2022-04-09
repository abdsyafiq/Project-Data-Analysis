SELECT
	DATE_FORMAT(order_date, '%Y') AS years,
	SUM(sales) AS sales,
	COUNT(order_id) AS numer_of_order
FROM
	dqlab_sales_store
WHERE
	order_status = 'order Finished'
GROUP BY
	1
ORDER BY
	1;