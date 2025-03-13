SELECT Menu.Cuisines AS MenuName
FROM Menu
WHERE Menu.OrderID = ANY (
    SELECT OrderID
    FROM Orders
    WHERE Orders.Quantity > 2
);

