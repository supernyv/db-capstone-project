PREPARE GetOrderDetails FROM
'
SELECT 
	order_id,
    total_quantity,
    total_cost
FROM orders
WHERE customer_id = ?
';

SET @my_id = 1;
EXECUTE GetOrderDetails USING @my_id