DELIMITER //

CREATE PROCEDURE CheckBooking(IN booking_date DATE, IN table_number INT)
BEGIN
    DECLARE booking_status VARCHAR(80);
    
    SELECT COUNT(*) INTO @booking_count 
    FROM Bookings 
    WHERE BookingDate = booking_date AND TableNumber = table_number;
    
    IF @booking_count > 0 THEN
        SET booking_status = CONCAT('Table ', table_number, ' is already booked');
    ELSE
        SET booking_status = CONCAT('Table ', table_number, ' is available');
    END IF;
    
    SELECT booking_status AS 'Booking status';
END //

DELIMITER ;

CALL CheckBooking('2022-11-12', 3);