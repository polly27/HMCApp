-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema qjvmhoia_hmc_com
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema qjvmhoia_hmc_com
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `qjvmhoia_hmc_com` DEFAULT CHARACTER SET utf8 ;
USE `qjvmhoia_hmc_com` ;

-- -----------------------------------------------------
-- Table `qjvmhoia_hmc_com`.`machine_order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qjvmhoia_hmc_com`.`machine_order` (
  `orderId` VARCHAR(255) NOT NULL,
  `firstName` VARCHAR(255) NOT NULL,
  `lastName` VARCHAR(255) NOT NULL,
  `company` VARCHAR(255) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `postcode` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(255) NOT NULL,
  `orderList` VARCHAR(511) NOT NULL,
  `total` VARCHAR(255) NOT NULL,
  `payment` VARCHAR(255) NOT NULL,
  `date` VARCHAR(255) NOT NULL,
  `orderStatus` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`orderId`),
  UNIQUE INDEX `id_UNIQUE` (`orderId` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
