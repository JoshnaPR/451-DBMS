DELIMITER //

CREATE PROCEDURE UpdateBooking(IN booking_id INT, IN booking_date DATE)
BEGIN
    -- Update the booking with the new date
    UPDATE Bookings 
    SET BookingDate = booking_date 
    WHERE BookingID = booking_id;
    
    -- Confirm the update
    SELECT CONCAT('Booking ', booking_id, ' updated') AS 'Confirmation';
END //

DELIMITER ;

CALL UpdateBooking(9, '2022-12-17');