USE LittleLemonDB;

DROP PROCEDURE IF EXISTS CancelBooking;
DELIMITER //
CREATE PROCEDURE CancelBooking(IN in_booking_id INT)
BEGIN
	DELETE FROM booking WHERE booking_id = in_booking_id;
    SELECT CONCAT('Booking ', in_booking_id, ' cancelled') AS confirmation;
END //
DELIMITER ;

-- Try the code
CALL CancelBooking(12);