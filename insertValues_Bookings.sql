-- ALTER TABLE `LittleLemon`.`Bookings` 
-- ADD COLUMN `CustomerID` INT NULL,
-- ADD CONSTRAINT `FK_BookingsCustomer`
--   FOREIGN KEY (`CustomerID`)
--   REFERENCES `LittleLemon`.`CustomerDetails` (`CustomerID`)
--   ON DELETE NO ACTION
--   ON UPDATE NO ACTION;
  
INSERT INTO `LittleLemon`.`Bookings` (`BookingDate`, `TableNumber`, `CustomerID`) VALUES
('2022-10-10', 5, 1),
('2022-11-12', 3, 3),
('2022-10-11', 2, 2),
('2022-10-13', 2, 1);

SELECT * FROM `LittleLemon`.`Bookings`;