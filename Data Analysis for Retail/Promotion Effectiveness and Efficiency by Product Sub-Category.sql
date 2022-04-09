SELECT
	DATE_FORMAT(order_date, '%Y') AS years,
	product_sub_category,
	product_category,
	SUM(sales) AS sales,
	SUM(discount_value) AS promotion_value,
	ROUND((SUM(discount_value) / SUM(sales)) * 100, 2) AS burn_rate_percentage
FROM
	dqlab_sales_store
WHERE
	DATE_FORMAT(order_date, '%Y') = 2012 AND
	order_status = 'Order Finished'
GROUP BY
	3,2,1
ORDER BY
	4 DESC;