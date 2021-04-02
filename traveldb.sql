-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema traveldb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema traveldb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `traveldb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
USE `traveldb` ;

-- -----------------------------------------------------
-- Table `traveldb`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`role` (
  `roleID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `name` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `description` VARBINARY(300) NULL DEFAULT NULL,
  PRIMARY KEY (`roleID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `traveldb`.`account`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`account` (
  `accountID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `userName` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `pw` VARCHAR(300) CHARACTER SET 'utf8' NOT NULL,
  `status` TINYINT NOT NULL DEFAULT '1' COMMENT '1 active\\n0 inactive',
  `roleID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`accountID`),
  INDEX `fk_account_role1_idx` (`roleID` ASC) VISIBLE,
  CONSTRAINT `fk_account_role1`
    FOREIGN KEY (`roleID`)
    REFERENCES `traveldb`.`role` (`roleID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = 'thông tin tài khoản';


-- -----------------------------------------------------
-- Table `traveldb`.`ages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`ages` (
  `ageID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `name` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`ageID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `traveldb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`customer` (
  `customerID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `firstName` VARCHAR(50) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `lastName` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `email` VARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `birthDay` DATE NOT NULL,
  `CCID` INT NOT NULL,
  `phoneNumber` VARCHAR(40) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `accountID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`customerID`),
  UNIQUE INDEX `account_accountID_UNIQUE` (`accountID` ASC) VISIBLE,
  INDEX `fk_customer_account_idx` (`accountID` ASC) VISIBLE,
  CONSTRAINT `fk_customer_account`
    FOREIGN KEY (`accountID`)
    REFERENCES `traveldb`.`account` (`accountID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = 'bảnh lưu khách hàng';


-- -----------------------------------------------------
-- Table `traveldb`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`employees` (
  `employeeID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `firstName` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `lastName` VARCHAR(50) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `email` VARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `CCID` VARCHAR(50) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `birthDay` DATE NOT NULL,
  `phoneNumber` VARCHAR(50) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `address` VARCHAR(200) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `accountID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`employeeID`, `accountID`),
  INDEX `fk_employees_account1_idx` (`accountID` ASC) VISIBLE,
  UNIQUE INDEX `accountID_UNIQUE` (`accountID` ASC) VISIBLE,
  CONSTRAINT `fk_employees_account1`
    FOREIGN KEY (`accountID`)
    REFERENCES `traveldb`.`account` (`accountID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = 'bảng thông tin nhân viên';


-- -----------------------------------------------------
-- Table `traveldb`.`booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`booking` (
  `bookingID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `customerID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `employeesID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `BookingDate` DATETIME NOT NULL,
  `totalMoney` DECIMAL(10,0) NULL DEFAULT '0',
  PRIMARY KEY (`bookingID`),
  INDEX `fk_booking_customer1_idx` (`customerID` ASC) VISIBLE,
  INDEX `fk_booking_employees_idx` (`employeesID` ASC) VISIBLE,
  CONSTRAINT `fk_booking_customer1`
    FOREIGN KEY (`customerID`)
    REFERENCES `traveldb`.`customer` (`customerID`),
  CONSTRAINT `fk_booking_employees`
    FOREIGN KEY (`employeesID`)
    REFERENCES `traveldb`.`employees` (`employeeID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `traveldb`.`tour`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`tour` (
  `tourID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `tourName` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `vehicle` VARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `price` DECIMAL(10,0) NOT NULL DEFAULT '0',
  `startDay` DATETIME NOT NULL,
  `maxseats` INT NOT NULL DEFAULT '1' COMMENT 'số người đi tối đa trong 1 tour',
  PRIMARY KEY (`tourID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = 'thông tin tour -- seats người đi trong 1 tour -- startday ngày giời tour bắt đầu';


-- -----------------------------------------------------
-- Table `traveldb`.`bookingdetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`bookingdetails` (
  `bookingID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `tourID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `seats` INT NOT NULL,
  `DepartureDay` DATETIME NOT NULL COMMENT 'thời gian khỏi hành\\n',
  PRIMARY KEY (`bookingID`),
  INDEX `fk_bookingDetails_booking1_idx` (`bookingID` ASC) VISIBLE,
  INDEX `fk_bookingDetails_tour1_idx` (`tourID` ASC) VISIBLE,
  CONSTRAINT `fk_bookingDetails_booking1`
    FOREIGN KEY (`bookingID`)
    REFERENCES `traveldb`.`booking` (`bookingID`),
  CONSTRAINT `fk_bookingDetails_tour1`
    FOREIGN KEY (`tourID`)
    REFERENCES `traveldb`.`tour` (`tourID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `traveldb`.`province`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`province` (
  `provinceID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `provinceName` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`provinceID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `traveldb`.`landmarks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`landmarks` (
  `landMarkID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `provinceID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `landMarkName` VARCHAR(200) CHARACTER SET 'utf8' NOT NULL DEFAULT '',
  `details` VARCHAR(2000) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  PRIMARY KEY (`landMarkID`),
  INDEX `fk_landmarks_province1_idx` (`provinceID` ASC) VISIBLE,
  CONSTRAINT `fk_landmarks_province1`
    FOREIGN KEY (`provinceID`)
    REFERENCES `traveldb`.`province` (`provinceID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = 'địa danh';


-- -----------------------------------------------------
-- Table `traveldb`.`diadiemdi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`diadiemdi` (
  `landMarkID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `tour_tourID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`landMarkID`, `tour_tourID`),
  INDEX `fk_diadiemdi_landmarks1_idx` (`landMarkID` ASC) VISIBLE,
  INDEX `fk_diadiemdi_tour1_idx` (`tour_tourID` ASC) VISIBLE,
  CONSTRAINT `fk_diadiemdi_landmarks1`
    FOREIGN KEY (`landMarkID`)
    REFERENCES `traveldb`.`landmarks` (`landMarkID`),
  CONSTRAINT `fk_diadiemdi_tour1`
    FOREIGN KEY (`tour_tourID`)
    REFERENCES `traveldb`.`tour` (`tourID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `traveldb`.`pricedetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`pricedetails` (
  `bookingID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `ageID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `quantity` INT NOT NULL,
  `price` DECIMAL(10,0) NOT NULL,
  PRIMARY KEY (`bookingID`, `ageID`),
  INDEX `fk_priceDetails_ages1_idx` (`ageID` ASC) VISIBLE,
  INDEX `fk_priceDetails_booking1_idx` (`bookingID` ASC) VISIBLE,
  CONSTRAINT `fk_priceDetails_ages1`
    FOREIGN KEY (`ageID`)
    REFERENCES `traveldb`.`ages` (`ageID`),
  CONSTRAINT `fk_priceDetails_booking1`
    FOREIGN KEY (`bookingID`)
    REFERENCES `traveldb`.`booking` (`bookingID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `traveldb`.`ticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`ticket` (
  `ticketID` VARBINARY(100) NOT NULL,
  `bookingID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `customerID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `ageID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`ticketID`),
  INDEX `fk_ticket_ages1_idx` (`ageID` ASC) VISIBLE,
  INDEX `fk_ticket_booking1_idx` (`bookingID` ASC) VISIBLE,
  INDEX `fk_ticket_customer_idx` (`customerID` ASC) VISIBLE,
  CONSTRAINT `fk_ticket_ages1`
    FOREIGN KEY (`ageID`)
    REFERENCES `traveldb`.`ages` (`ageID`),
  CONSTRAINT `fk_ticket_booking1`
    FOREIGN KEY (`bookingID`)
    REFERENCES `traveldb`.`booking` (`bookingID`),
  CONSTRAINT `fk_ticket_customer`
    FOREIGN KEY (`customerID`)
    REFERENCES `traveldb`.`customer` (`customerID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `traveldb`.`tourdetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`tourdetails` (
  `tourID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `contents` VARCHAR(2000) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  UNIQUE INDEX `tourID_UNIQUE` (`tourID` ASC),
  CONSTRAINT `fk_tourdetails_tour1`
    FOREIGN KEY (`tourID`)
    REFERENCES `traveldb`.`tour` (`tourID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `traveldb`.`tourprices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`tourprices` (
  `ageID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `tourID` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `price` DECIMAL(10,0) NOT NULL DEFAULT '0',
  INDEX `fk_tourprices_tour1_idx` (`tourID` ASC) VISIBLE,
  PRIMARY KEY (`ageID`, `tourID`),
  CONSTRAINT `fk_tourprices_ages1`
    FOREIGN KEY (`ageID`)
    REFERENCES `traveldb`.`ages` (`ageID`),
  CONSTRAINT `fk_tourprices_tour1`
    FOREIGN KEY (`tourID`)
    REFERENCES `traveldb`.`tour` (`tourID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = 'bảng giá của một tour';


-- -----------------------------------------------------
-- Table `traveldb`.`sysconfig`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `traveldb`.`sysconfig` (
  `key` VARCHAR(50) NOT NULL,
  `value` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE INDEX `key_UNIQUE` (`key` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
