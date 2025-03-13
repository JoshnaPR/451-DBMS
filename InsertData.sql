INSERT INTO CustomerDetails (CustomerID, Fullname, ContactNumber) VALUES
(1, 'John Smith', '123-456-7890'),
(2, 'Jane Doe', '222-333-4444'),
(3, 'Bob Johnson', '555-123-4567'),
(4, 'James Richards', '123-555-5678');

INSERT INTO Bookings (BookingID, BookingDate, TableNumber) VALUES
(1, '2025-03-01', 1),
(2, '2025-03-02', 2),
(3, '2025-03-03', 3),
(4, '2025-03-04', 4);

INSERT INTO OrderDeliveryStatus (DeliveryDate, DeliveryStatus) VALUES
('2025-03-01', 'Delivered'),
('2025-03-02', 'Pending'),
('2025-03-03', 'Delivered'),
('2025-03-04', 'In Progress');

INSERT INTO Orders (OrderDate, Quantity, TotalCost, CustomerID, StatusID) VALUES
('2025-03-01', 3, 100.50, 1, 1),
('2025-03-02', 2, 95.00, 2, 2),
('2025-03-03', 5, 350.00, 3, 3),
('2025-03-04', 1, 50.00, 4, 4);

INSERT INTO StaffInformation (Role, Salary) VALUES
('Waiter', '30000'),
('Chef', '50000'),
('Manager', '70000'),
('Waiter', '35000');

INSERT INTO Menu (MenuID, Starters, Cuisines, Courses, Drinks, Desserts, OrderID, BookingID, StaffID) VALUES
(1, 'Salad', 'Italian', 'Spaghetti', 'Sparkling Water', 'Tiramisu', 1, 1, 2),
(2, 'Fish Tacos', 'Mexican', 'Grilled Salmon', 'Lemonade', 'Churros', 2, 2, 1),
(3, 'Vegetable Soup', 'Vegetarian', 'Veggie Burger', 'Iced Tea', 'Fruit', 3, 3, 3),
(4, 'Buffalo Wings', 'American', 'BBQ Ribs', 'Soda', 'Ice Cream', 4, 4, 4);
