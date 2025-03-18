DELIMITER //

CREATE PROCEDURE CancelBooking(IN booking_id INT)
BEGIN
    -- Delete the booking with the specified ID
    DELETE FROM Bookings 
    WHERE BookingID = booking_id;
    
    -- Confirm the cancellation
    SELECT CONCAT('Booking ', booking_id, ' cancelled') AS 'Confirmation';
END //

DELIMITER ;

CALL CancelBooking(9);