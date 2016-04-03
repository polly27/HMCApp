-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema hmc
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hmc
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hmc` DEFAULT CHARACTER SET utf8 ;
USE `hmc` ;

-- -----------------------------------------------------
-- Table `hmc`.`sliders_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hmc`.`sliders_filter` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `productionYear` VARCHAR(255) NOT NULL,
  `cost` VARCHAR(255) NOT NULL,
  `xMotion` VARCHAR(255) NOT NULL,
  `yMotion` VARCHAR(255) NOT NULL,
  `zMotion` VARCHAR(255) NOT NULL,
  `xTableSize` VARCHAR(255) NOT NULL,
  `yTableSize` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hmc`.`producer_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hmc`.`producer_filter` (
  `producer` VARCHAR(255) NOT NULL,
  `num` INT(11) NOT NULL,
  PRIMARY KEY (`producer`),
  UNIQUE INDEX `producer_UNIQUE` (`producer` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hmc`.`machineLocation_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hmc`.`machine_location_filter` (
  `machineLocation` VARCHAR(255) NOT NULL,
  `num` INT(11) NOT NULL,
  PRIMARY KEY (`machineLocation`),
  UNIQUE INDEX `machineLocation_UNIQUE` (`machineLocation` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hmc`.`systemCNC_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hmc`.`systemCNC_filter` (
  `systemCNC` VARCHAR(255) NOT NULL,
  `num` INT(11) NOT NULL,
  PRIMARY KEY (`systemCNC`),
  UNIQUE INDEX `systemCNC_UNIQUE` (`systemCNC` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
