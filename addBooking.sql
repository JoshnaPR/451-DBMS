DELIMITER //

CREATE PROCEDURE AddBooking(
    IN booking_id INT, 
    IN customer_id INT, 
    IN booking_date DATE, 
    IN table_number INT
)
BEGIN
    INSERT INTO Bookings (BookingID, CustomerID, BookingDate, TableNumber)
    VALUES (booking_id, customer_id, booking_date, table_number);
    
    SELECT 'New booking added' AS 'Confirmation';
END //

DELIMITER ;

CALL AddBooking(9, 3, '2022-12-30',4);