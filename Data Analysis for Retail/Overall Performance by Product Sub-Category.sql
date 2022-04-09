SELECT
	*,
	ROUND(((total_sales_2012 - total_sales_2011) / total_sales_2012) * 100, 2) AS growth_sales
FROM (
	SELECT
		product_sub_category,
		SUM(IF(DATE_FORMAT(order_date, '%Y') = 2011, sales, 0)) AS total_sales_2011,
		SUM(IF(DATE_FORMAT(order_date, '%Y') = 2012, sales, 0)) AS total_sales_2012
	FROM
		dqlab_sales_store
	WHERE
		order_status = 'Order Finished'
	GROUP BY
		1
	) AS product_sub_category
ORDER BY
	4 DESC;