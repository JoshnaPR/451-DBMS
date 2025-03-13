SELECT 
    CustomerDetails.CustomerID,
    CustomerDetails.Fullname,
    Orders.OrderID,
    Orders.TotalCost,
    Menu.Cuisines AS MenuName,
    Menu.Courses AS CourseName, 
    Menu.Starters AS StarterName
FROM Orders
JOIN CustomerDetails ON Orders.CustomerID = CustomerDetails.CustomerID
JOIN Menu ON Orders.OrderID = Menu.OrderID
WHERE Orders.TotalCost > 150
ORDER BY Orders.TotalCost ASC;
