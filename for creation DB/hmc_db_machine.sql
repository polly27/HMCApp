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
-- Table `hmc`.`machines`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hmc`.`machines` (
  `productId` VARCHAR(255) NOT NULL,
  `machineTypeEn` VARCHAR(255) NULL DEFAULT NULL,
  `machineTypeRu` VARCHAR(255) NULL DEFAULT NULL,
  `model` VARCHAR(255) NULL DEFAULT NULL,
  `brand` VARCHAR(255) NULL DEFAULT NULL,
  `producingCountryEn` VARCHAR(255) NULL DEFAULT NULL,
  `producingCountryRu` VARCHAR(255) NULL DEFAULT NULL,
  `systemCNC` VARCHAR(255) NULL DEFAULT NULL,
  `fullSystemCNC` VARCHAR(511) NULL DEFAULT NULL,
  `productionYear` INT(11) NULL DEFAULT '0',
  `machineConditionEn` VARCHAR(255) NULL DEFAULT NULL,
  `machineConditionRu` VARCHAR(255) NULL DEFAULT NULL,
  `machineLocationEn` VARCHAR(255) NULL DEFAULT NULL,
  `machineLocationRu` VARCHAR(255) NULL DEFAULT NULL,
  `axisCount` VARCHAR(255) NULL DEFAULT NULL,
  `xMotion` INT(11) NULL DEFAULT '0',
  `yMotion` INT(11) NULL DEFAULT '0',
  `zMotion` INT(11) NULL DEFAULT '0',
  `xTableSize` INT(11) NULL DEFAULT '0',
  `yTableSize` INT(11) NULL DEFAULT '0',
  `tableLoad` VARCHAR(255) NULL DEFAULT NULL,
  `spindleTaper` VARCHAR(255) NULL DEFAULT NULL,
  `spindleRotationFreq` VARCHAR(255) NULL DEFAULT NULL,
  `spindlePower` VARCHAR(255) NULL DEFAULT NULL,
  `toolCount` VARCHAR(255) NULL DEFAULT NULL,
  `maxToolDiameter` VARCHAR(255) NULL DEFAULT NULL,
  `maxToolWeight` VARCHAR(255) NULL DEFAULT NULL,
  `maxToolLength` VARCHAR(255) NULL DEFAULT NULL,
  `toolReplacementTime` VARCHAR(255) NULL DEFAULT NULL,
  `chipReplacementTime` VARCHAR(255) NULL DEFAULT NULL,
  `positionRepositionPrecision` VARCHAR(255) NULL DEFAULT NULL,
  `spindleRuntime` VARCHAR(255) NULL DEFAULT NULL,
  `machineLaunching` VARCHAR(255) NULL DEFAULT NULL,
  `price` INT(11) NULL DEFAULT '0',
  `photo1` VARCHAR(255) NULL DEFAULT NULL,
  `photo2` VARCHAR(255) NULL DEFAULT NULL,
  `photo3` VARCHAR(255) NULL DEFAULT NULL,
  `photo4` VARCHAR(255) NULL DEFAULT NULL,
  `photo5` VARCHAR(255) NULL DEFAULT NULL,
  `descriptionEn` VARCHAR(1023) NULL DEFAULT NULL,
  `descriptionRu` VARCHAR(1023) NULL DEFAULT NULL,
  `video1` VARCHAR(255) NULL DEFAULT NULL,
  `video2` VARCHAR(255) NULL DEFAULT NULL,
  `video3` VARCHAR(255) NULL DEFAULT NULL,
  `isSold` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`productId`),
  UNIQUE INDEX `productId_UNIQUE` (`productId` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
