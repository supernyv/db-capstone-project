USE LittleLemonDB;

DROP PROCEDURE IF EXISTS GetMaxQuantity;

DELIMITER //
CREATE PROCEDURE GetMaxQuantity()
BEGIN
	SELECT MAX(total_quantity)
    FROM orders;
END //
DELIMITER ;
