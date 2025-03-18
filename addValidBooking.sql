DELIMITER //

CREATE PROCEDURE AddValidBooking(IN booking_date DATE, IN table_number INT)
BEGIN
    DECLARE table_status INT;
    
    START TRANSACTION;
    
    -- here we check if the table is already booked on the given date
    SELECT COUNT(*) INTO table_status 
    FROM Bookings 
    WHERE BookingDate = booking_date AND TableNumber = table_number;
    
    -- This is to insert the new booking
    INSERT INTO Bookings (BookingDate, TableNumber, CustomerID)
    VALUES (booking_date, table_number, 1); -- Assuming CustomerID 1 for new bookings
    
    -- Check if the table is already booked
    IF table_status > 0 THEN
        -- Table is already booked - rollback
        ROLLBACK;
        SELECT CONCAT('Table ', table_number, ' is already booked - booking cancelled') AS 'Booking status';
    ELSE
        -- Table is available - commit
        COMMIT;
        SELECT CONCAT('Table ', table_number, ' has been booked successfully') AS 'Booking status';
    END IF;
END //

DELIMITER ;

CALL AddValidBooking('2022-11-12', 3);
CALL AddValidBooking('2022-12-17', 5);