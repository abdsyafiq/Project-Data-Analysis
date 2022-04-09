SELECT
	DATE_FORMAT(order_date, '%Y') AS years,
	SUM(sales) AS sales,
	SUM(discount_value) AS promotion_value,
	ROUND((SUM(discount_value) / SUM(sales)) * 100, 2) AS burn_rate_percentage
FROM
	dqlab_sales_store
WHERE
	order_status = 'order Finished'
GROUP BY
	1
ORDER BY
	1;