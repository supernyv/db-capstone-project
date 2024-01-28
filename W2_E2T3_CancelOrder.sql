DROP PROCEDURE IF EXISTS CancelOrder;

DELIMITER //
CREATE PROCEDURE CancelOrder(IN OrderID INT)
BEGIN
	DELETE FROM orders WHERE order_id = OrderID;
    SELECT CONCAT('Order ', OrderID, ' is canceled') AS Confirmation;
END //
DELIMITER ;

/*Delete just for the sake of completing the excercise. Rollback to recover the data*/
START TRANSACTION;
CALL CancelOrder(5);
ROLLBACK;