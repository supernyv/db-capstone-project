USE LittleLemonDB;

DROP PROCEDURE IF EXISTS AddValidBooking;
DELIMITER //
CREATE PROCEDURE AddValidBooking(IN input_date DATE, IN input_table INT)
BEGIN
	DECLARE booking_count INT;
    
	/*Transaction starts*/
	START TRANSACTION;
    
    INSERT INTO booking (booking_date, table_id, time_slot, customer_id, staff_id)
    VALUES
    (input_date, input_table, '19:00:00', 1, 1);
    
    SELECT COUNT(table_id) INTO booking_count
	FROM booking
	WHERE booking_date = input_date AND table_id = input_table;

    IF booking_count > 1
		THEN ROLLBACK;
		SELECT CONCAT('Table ', input_table, ' is already booked - booking cancelled.')
        AS booking_status;
    ELSE
		COMMIT;
        SELECT CONCAT('Booking completed successfully for table ', input_table)
        AS booking_status;
    END IF;
    /*Transaction ends*/
END //
/*Procedure ends*/
DELIMITER ;

-- Try the code
CALL AddValidBooking('2022-10-10', 4);