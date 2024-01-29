USE littlelemondb;
CREATE VIEW orders_view
AS
SELECT
	order_id,
    total_cost,
    total_quantity
FROM orders
WHERE total_quantity > 2;
