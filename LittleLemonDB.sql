-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LittleLemonDB
-- -----------------------------------------------------
-- For meta db capstone project

-- -----------------------------------------------------
-- Schema LittleLemonDB
--
-- For meta db capstone project
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LittleLemonDB` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `LittleLemonDB` ;

-- -----------------------------------------------------
-- Table `LittleLemonDB`.`address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`address` (
  `address_id` INT NOT NULL,
  `street` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `zip` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  PRIMARY KEY (`address_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`customer` (
  `customer_id` INT NOT NULL,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `telephone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `address_id` INT NOT NULL,
  PRIMARY KEY (`customer_id`),
  INDEX `customer_address_idx` (`address_id` ASC) VISIBLE,
  CONSTRAINT `customer_address`
    FOREIGN KEY (`address_id`)
    REFERENCES `LittleLemonDB`.`address` (`address_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`staff` (
  `staff_id` INT NOT NULL,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `role` VARCHAR(50) NOT NULL,
  `salary` DECIMAL(10,2) NOT NULL,
  `dob` DATE NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `address_id` INT NOT NULL,
  PRIMARY KEY (`staff_id`),
  INDEX `staff_address_idx` (`address_id` ASC) VISIBLE,
  CONSTRAINT `staff_address`
    FOREIGN KEY (`address_id`)
    REFERENCES `LittleLemonDB`.`address` (`address_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`menu` (
  `menu_id` INT NOT NULL,
  `menu_name` VARCHAR(45) NOT NULL,
  `cuisine` VARCHAR(45) NOT NULL,
  `starter` VARCHAR(45) NULL,
  `course` VARCHAR(45) NULL,
  `drink` VARCHAR(45) NULL,
  `dessert` VARCHAR(45) NULL,
  `price` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`menu_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`order` (
  `order_id` INT NOT NULL,
  `order_date` DATE NOT NULL,
  `total_cost` DECIMAL(10,2) NOT NULL,
  `customer_id` INT NOT NULL,
  `staff_id` INT NOT NULL,
  `delivery_date` DATE NULL,
  `order_status` VARCHAR(45) NOT NULL,
  `number_of_people` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `order_customer_idx` (`customer_id` ASC) VISIBLE,
  INDEX `order_staff_idx` (`staff_id` ASC) VISIBLE,
  CONSTRAINT `order_customer`
    FOREIGN KEY (`customer_id`)
    REFERENCES `LittleLemonDB`.`customer` (`customer_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `order_staff`
    FOREIGN KEY (`staff_id`)
    REFERENCES `LittleLemonDB`.`staff` (`staff_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`booking` (
  `booking_id` INT NOT NULL,
  `booking_date` DATE NOT NULL,
  `table_number` INT NULL,
  `menu_id` INT NOT NULL,
  `order_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  `time_slot` TIME NOT NULL,
  PRIMARY KEY (`booking_id`),
  INDEX `booking_menu_idx` (`menu_id` ASC) VISIBLE,
  INDEX `booking_order_idx` (`order_id` ASC) VISIBLE,
  CONSTRAINT `booking_menu`
    FOREIGN KEY (`menu_id`)
    REFERENCES `LittleLemonDB`.`menu` (`menu_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `booking_order`
    FOREIGN KEY (`order_id`)
    REFERENCES `LittleLemonDB`.`order` (`order_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
