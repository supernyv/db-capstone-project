USE LittleLemonDB;

SELECT
	menu_name
FROM menu
WHERE 
	menu_id = ANY(
		SELECT menu_id FROM order_items WHERE quantity > 2
	)