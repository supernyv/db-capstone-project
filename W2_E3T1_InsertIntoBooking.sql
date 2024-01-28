USE LittleLemonDB;

INSERT INTO booking 
(booking_id, booking_date, table_id, number_of_guests, time_slot, customer_id, staff_id)
VALUES
(1, '2022-10-10', 5, 4, '19:00:00', 1, 20),
(2, '2022-11-12', 3, 6, '20:00:00', 3, 12),
(3, '2022-10-11', 2, 8, '18:30:00', 2, 18),
(4, '2022-10-13', 2, 5, '19:30:00', 1, 7);