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
-- Table `qjvmhoia_hmc_com`.`sliders_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qjvmhoia_hmc_com`.`sliders_filter` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `productionYear` VARCHAR(255) NOT NULL,
  `price` VARCHAR(255) NOT NULL,
  `xMotion` VARCHAR(255) NOT NULL,
  `yMotion` VARCHAR(255) NOT NULL,
  `zMotion` VARCHAR(255) NOT NULL,
  `xTableSize` VARCHAR(255) NOT NULL,
  `yTableSize` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qjvmhoia_hmc_com`.`brand_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qjvmhoia_hmc_com`.`brand_filter` (
  `brand` VARCHAR(255) NOT NULL,
  `num` INT(11) NOT NULL,
  PRIMARY KEY (`brand`),
  UNIQUE INDEX `brand_UNIQUE` (`brand` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qjvmhoia_hmc_com`.`machine_location_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qjvmhoia_hmc_com`.`machine_location_filter` (
  `machineLocation` VARCHAR(255) NOT NULL,
  `num` INT(11) NOT NULL,
  PRIMARY KEY (`machineLocation`),
  UNIQUE INDEX `machineLocation_UNIQUE` (`machineLocation` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qjvmhoia_hmc_com`.`system_cnc_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qjvmhoia_hmc_com`.`system_cnc_filter` (
  `systemCNC` VARCHAR(255) NOT NULL,
  `num` INT(11) NOT NULL,
  PRIMARY KEY (`systemCNC`),
  UNIQUE INDEX `systemCNC_UNIQUE` (`systemCNC` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
