USE LittleLemonDB;

DROP PROCEDURE IF EXISTS UpdateBooking;
DELIMITER //
CREATE PROCEDURE UpdateBooking(IN in_booking_id INT, IN in_booking_date DATE)
BEGIN
	UPDATE booking
    SET time_slot = '19:00:00'
    WHERE booking_id = in_booking_id AND booking_date = in_booking_date;
    SELECT CONCAT('Booking ', in_booking_id, ' updated') AS confirmation;
END //
DELIMITER ;

-- Try the code
CALL UpdateBooking(12, '2023-03-02');