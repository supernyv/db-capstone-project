USE LittleLemonDB;

DROP PROCEDURE IF EXISTS CheckBooking;
DELIMITER //
CREATE PROCEDURE CheckBooking(IN input_date DATE, IN target_id INT)
BEGIN
	DECLARE is_booked INT;
    
	SELECT table_id INTO is_booked FROM booking
    WHERE booking_date = input_date AND table_id = target_id;
    
    SELECT CASE
		WHEN is_booked IS NULL THEN CONCAT('Table ', target_id, ' is available')
        ELSE CONCAT('Table ', target_id, ' is already booked')
        END AS booking_status;
END //
DELIMITER ;

CALL CheckBooking('2022-11-12', 3);