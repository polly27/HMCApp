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
  `year` VARCHAR(255) NOT NULL,
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
  PRIMARY KEY (`producer`),
  UNIQUE INDEX `producer_UNIQUE` (`producer` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hmc`.`machineLocation_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hmc`.`machineLocation_filter` (
  `machineLocation` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`machineLocation`),
  UNIQUE INDEX `machineLocation_UNIQUE` (`machineLocation` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hmc`.`systemCNC_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hmc`.`systemCNC_filter` (
  `systemCNC` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`systemCNC`),
  UNIQUE INDEX `systemCNC_UNIQUE` (`systemCNC` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hmc`.`machines`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hmc`.`machines` (
  `productId` VARCHAR(255) NOT NULL,
  `type` VARCHAR(255) NULL DEFAULT NULL,
  `model` VARCHAR(255) NULL DEFAULT NULL,
  `producer` VARCHAR(255) NULL DEFAULT NULL,
  `producingCountry` VARCHAR(255) NULL DEFAULT NULL,
  `systemCNC` VARCHAR(255) NULL DEFAULT NULL,
  `fullSystemCNC` VARCHAR(511) NULL DEFAULT NULL,
  `year` INT(11) NULL DEFAULT '0',
  `machineLocation` VARCHAR(255) NULL DEFAULT NULL,
  `axisCount` INT(11) NULL DEFAULT '0',
  `xMotion` INT(11) NULL DEFAULT '0',
  `yMotion` INT(11) NULL DEFAULT '0',
  `zMotion` INT(11) NULL DEFAULT '0',
  `xTableSize` INT(11) NULL DEFAULT '0',
  `yTableSize` INT(11) NULL DEFAULT '0',
  `tableLoad` INT(11) NULL DEFAULT '0',
  `spindleTaper` VARCHAR(255) NULL DEFAULT NULL,
  `spindleRotationFreq` INT(11) NULL DEFAULT '0',
  `spindlePower` VARCHAR(255) NULL DEFAULT NULL,
  `spindleMaxTorque` INT(11) NULL DEFAULT '0',
  `spindleType` VARCHAR(255) NULL DEFAULT NULL,
  `spindleCoolingMethod` VARCHAR(255) NULL DEFAULT NULL,
  `storeType` VARCHAR(255) NULL DEFAULT NULL,
  `toolCount` INT(11) NULL DEFAULT '0',
  `maxToolDiameter` INT(11) NULL DEFAULT '0',
  `maxToolWeight` INT(11) NULL DEFAULT '0',
  `toolReplacementTime` INT(11) NULL DEFAULT '0',
  `positionPrecision` VARCHAR(255) NULL DEFAULT '0',
  `repositionPrecision` VARCHAR(255) NULL DEFAULT '0',
  `spindleRuntime` INT(11) NULL DEFAULT '0',
  `machineLaunching` INT(11) NULL DEFAULT '0',
  `equipment` VARCHAR(255) NULL DEFAULT NULL,
  `condition` VARCHAR(255) NULL DEFAULT NULL,
  `cost` INT(11) NULL DEFAULT '0',
  `photo1` VARCHAR(255) NULL DEFAULT NULL,
  `photo2` VARCHAR(255) NULL DEFAULT NULL,
  `photo3` VARCHAR(255) NULL DEFAULT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `fullDescription` VARCHAR(1023) NULL DEFAULT NULL,
  PRIMARY KEY (`productId`),
  UNIQUE INDEX `productId_UNIQUE` (`productId` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
