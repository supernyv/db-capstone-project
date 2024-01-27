USE littlelemondb;
SELECT
	cst.customer_id,
    CONCAT(cst.first_name, ' ', cst.last_name) AS full_name,
    ord.order_id,
    ord.total_cost,
    men.menu_name,
    crs.name AS course_name,
    str.name AS starter_name
FROM
	customer AS cst
    INNER JOIN orders AS ord ON cst.customer_id = ord.customer_id
    INNER JOIN order_items AS oit ON oit.order_id = ord.order_id
    INNER JOIN menu AS men ON men.menu_id = oit.menu_id
    LEFT JOIN menu_items AS str ON str.item_id = men.starter_item_id
    LEFT JOIN menu_items AS crs ON crs.item_id = men.course_item_id
WHERE ord.total_cost > 150;