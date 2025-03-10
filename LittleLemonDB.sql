-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LittleLemon
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LittleLemon
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LittleLemon` DEFAULT CHARACTER SET utf8 ;
USE `LittleLemon` ;

-- -----------------------------------------------------
-- Table `LittleLemon`.`Bookings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemon`.`Bookings` (
  `BookingID` INT NOT NULL AUTO_INCREMENT,
  `BookingDate` DATE NULL,
  `TableNumber` INT NULL,
  PRIMARY KEY (`BookingID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemon`.`CustomerDetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemon`.`CustomerDetails` (
  `CustomerID` INT NOT NULL,
  `Fullname` VARCHAR(100) NULL,
  `ContactNumber` VARCHAR(100) NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE INDEX `CustomerID_UNIQUE` (`CustomerID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemon`.`OrderDeliveryStatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemon`.`OrderDeliveryStatus` (
  `StatusID` INT NOT NULL AUTO_INCREMENT,
  `DeliveryDate` DATE NULL,
  `DeliveryStatus` VARCHAR(100) NULL,
  PRIMARY KEY (`StatusID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemon`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemon`.`Orders` (
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `OrderDate` DATE NULL,
  `Quantity` INT NULL,
  `TotalCost` DECIMAL(10,2) NULL,
  `CustomerID` INT NULL,
  `StatusID` INT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `CustomerID_idx` (`CustomerID` ASC) VISIBLE,
  INDEX `StatusID_idx` (`StatusID` ASC) VISIBLE,
  CONSTRAINT `CustomerID`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `LittleLemon`.`CustomerDetails` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `StatusID`
    FOREIGN KEY (`StatusID`)
    REFERENCES `LittleLemon`.`OrderDeliveryStatus` (`StatusID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemon`.`StaffInformation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemon`.`StaffInformation` (
  `StaffID` INT NOT NULL AUTO_INCREMENT,
  `Role` VARCHAR(100) NULL,
  `Salary` VARCHAR(100) NULL,
  PRIMARY KEY (`StaffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemon`.`Menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemon`.`Menu` (
  `MenuID` INT NOT NULL AUTO_INCREMENT,
  `Starters` VARCHAR(100) NULL,
  `Cuisines` VARCHAR(100) NULL,
  `Courses` VARCHAR(100) NULL,
  `Drinks` VARCHAR(100) NULL,
  `Desserts` VARCHAR(100) NULL,
  `OrderID` INT NULL,
  `BookingID` INT NULL,
  `StaffID` INT NULL,
  PRIMARY KEY (`MenuID`),
  INDEX `OrderID_idx` (`OrderID` ASC) VISIBLE,
  INDEX `BookingID_idx` (`BookingID` ASC) VISIBLE,
  INDEX `StaffID_idx` (`StaffID` ASC) VISIBLE,
  CONSTRAINT `OrderID`
    FOREIGN KEY (`OrderID`)
    REFERENCES `LittleLemon`.`Orders` (`OrderID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `BookingID`
    FOREIGN KEY (`BookingID`)
    REFERENCES `LittleLemon`.`Bookings` (`BookingID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `StaffID`
    FOREIGN KEY (`StaffID`)
    REFERENCES `LittleLemon`.`StaffInformation` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
