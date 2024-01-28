USE LittleLemonDB;

DROP PROCEDURE IF EXISTS AddBooking;
DELIMITER //
CREATE PROCEDURE AddBooking(IN in_booking_id INT , IN in_customer_id INT, IN in_date_id DATE, IN in_table_id INT)
BEGIN
	INSERT INTO booking(booking_id, customer_id, booking_date, table_id)
    VALUES (in_booking_id, in_customer_id, in_date_id, in_table_id);
    SELECT 'New booking added' AS confirmation;
END //

DELIMITER ;

CALL AddBooking(41, 15, '2024-02-03', 5);