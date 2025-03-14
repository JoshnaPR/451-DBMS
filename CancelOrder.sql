DELIMITER //

CREATE PROCEDURE CancelOrder(IN customer_OrderID INT)
BEGIN
    DELETE FROM Orders WHERE OrderID = customer_OrderID;
    SELECT CONCAT('Order ', customer_OrderID, ' is cancelled') AS Confirmation;
END //

DELIMITER ;

