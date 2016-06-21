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
-- -----------------------------------------------------
-- Schema lathe
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lathe
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lathe` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema common
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema common
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `common` ;
USE `hmc` ;

-- -----------------------------------------------------
-- Table `hmc`.`sliders_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hmc`.`sliders_filter` (
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
-- Table `hmc`.`brand_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hmc`.`brand_filter` (
  `brand` VARCHAR(255) NOT NULL,
  `num` INT(11) NOT NULL,
  PRIMARY KEY (`brand`),
  UNIQUE INDEX `brand_UNIQUE` (`brand` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hmc`.`machine_location_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hmc`.`machine_location_filter` (
  `machineLocation` VARCHAR(255) NOT NULL,
  `num` INT(11) NOT NULL,
  PRIMARY KEY (`machineLocation`),
  UNIQUE INDEX `machineLocation_UNIQUE` (`machineLocation` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hmc`.`system_cnc_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hmc`.`system_cnc_filter` (
  `systemCNC` VARCHAR(255) NOT NULL,
  `num` INT(11) NOT NULL,
  PRIMARY KEY (`systemCNC`),
  UNIQUE INDEX `systemCNC_UNIQUE` (`systemCNC` ASC))
ENGINE = InnoDB;


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


-- -----------------------------------------------------
-- Table `hmc`.`machine_order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hmc`.`machine_order` (
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


-- -----------------------------------------------------
-- Table `hmc`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hmc`.`users` (
  `num` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NOT NULL,
  `userPassword` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`num`),
  UNIQUE INDEX `num_UNIQUE` (`num` ASC))
ENGINE = InnoDB;

USE `lathe` ;

-- -----------------------------------------------------
-- Table `common`.`language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `common`.`language` (
  `lang` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`lang`),
  UNIQUE INDEX `lang_UNIQUE` (`lang` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`lathe_full`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`lathe_full` (
  `productId` VARCHAR(255) NOT NULL,
  `fullSystemCNC` VARCHAR(255) NULL,
  `spindleRotationFreq` VARCHAR(255) NULL DEFAULT NULL,
  `spindlePower` VARCHAR(255) NULL DEFAULT NULL,
  `counterSpindleRotationFreq` VARCHAR(255) NULL DEFAULT NULL,
  `drivenToolsCount` VARCHAR(255) NULL DEFAULT NULL,
  `nonDrivenToolsCount` VARCHAR(255) NULL DEFAULT NULL,
  `processingDiameterMm` VARCHAR(255) NULL DEFAULT NULL,
  `processingDiameterInch` VARCHAR(255) NULL DEFAULT NULL,
  `rodPassageDiameterMm` VARCHAR(255) NULL,
  `rodPassageDiameterInch` VARCHAR(255) NULL,
  `spindleHoleDiameterMm` VARCHAR(255) NULL DEFAULT NULL,
  `spindleHoleDiameterInch` VARCHAR(255) NULL DEFAULT NULL,
  `positionRepositionPrecisionMm` VARCHAR(255) NULL,
  `positionRepositionPrecisionInch` VARCHAR(255) NULL DEFAULT NULL,
  `positionPrecision` VARCHAR(255) NULL DEFAULT NULL,
  `spindleLife` VARCHAR(255) NULL,
  `machineLaunchingTime` VARCHAR(255) NULL DEFAULT NULL,
  `photo2` VARCHAR(255) NULL DEFAULT NULL,
  `photo3` VARCHAR(255) NULL DEFAULT NULL,
  `photo4` VARCHAR(255) NULL DEFAULT NULL,
  `photo5` VARCHAR(255) NULL DEFAULT NULL,
  `video1` VARCHAR(255) NULL DEFAULT NULL,
  `video2` VARCHAR(255) NULL DEFAULT NULL,
  `video3` VARCHAR(255) NULL,
  PRIMARY KEY (`productId`),
  UNIQUE INDEX `productId_UNIQUE` (`productId` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`lathe_lang_full`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`lathe_lang_full` (
  `lathe_full_productId` VARCHAR(255) NOT NULL,
  `language_lang` VARCHAR(2) NOT NULL,
  `counterSpindlePresence` VARCHAR(255) NULL,
  `turretFasteningType` VARCHAR(255) NULL,
  `tailstockPresence` VARCHAR(255) NULL,
  PRIMARY KEY (`lathe_full_productId`, `language_lang`),
  INDEX `fk_lathe_lang_full_lathe_full1_idx` (`lathe_full_productId` ASC),
  CONSTRAINT `fk_lathe_lang_full_language1`
    FOREIGN KEY (`language_lang`)
    REFERENCES `common`.`language` (`lang`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_lathe_lang_full_lathe_full1`
    FOREIGN KEY (`lathe_full_productId`)
    REFERENCES `lathe`.`lathe_full` (`productId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`lathe_short`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`lathe_short` (
  `productId` VARCHAR(255) NOT NULL,
  `model` VARCHAR(255) NOT NULL,
  `manufacturer` VARCHAR(255) NOT NULL,
  `systemCNC` VARCHAR(255) NOT NULL,
  `productionYear` INT(11) NOT NULL,
  `maxProcessingDiameterMm` INT(11) NOT NULL,
  `maxProcessingDiameterInch` FLOAT(5,1) NOT NULL,
  `maxProcessingLengthMm` INT(11) NOT NULL,
  `maxProcessingLengthInch` FLOAT(5,1) NOT NULL,
  `xMotionMm` INT(11) NOT NULL,
  `xMotionInch` FLOAT(5,1) NOT NULL,
  `yMotionMm` INT(11) NOT NULL,
  `yMotionInch` FLOAT(5,1) NOT NULL,
  `zMotionMm` INT(11) NOT NULL,
  `zMotionInch` FLOAT(5,1) NOT NULL,
  `price` INT(11) NOT NULL,
  `photo1` VARCHAR(255) NOT NULL,
  `isSold` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`productId`),
  UNIQUE INDEX `productId_UNIQUE` (`productId` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`lathe_lang_short`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`lathe_lang_short` (
  `language_lang` VARCHAR(2) NOT NULL,
  `lathe_short_productId` VARCHAR(255) NOT NULL,
  `machineType` VARCHAR(255) NOT NULL,
  `producingCountry` VARCHAR(255) NOT NULL,
  `machineCondition` VARCHAR(255) NOT NULL,
  `machineLocation` VARCHAR(255) NOT NULL,
  `description` VARCHAR(1023) NOT NULL,
  INDEX `fk_lathe_lang_short_lathe_short1_idx` (`lathe_short_productId` ASC),
  PRIMARY KEY (`language_lang`, `lathe_short_productId`),
  CONSTRAINT `fk_lathe_lang_short_language1`
    FOREIGN KEY (`language_lang`)
    REFERENCES `common`.`language` (`lang`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_lathe_lang_short_lathe_short1`
    FOREIGN KEY (`lathe_short_productId`)
    REFERENCES `lathe`.`lathe_short` (`productId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`brand_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`brand_filter` (
  `brand` VARCHAR(255) NOT NULL,
  `num` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`brand`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`system_cnc_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`system_cnc_filter` (
  `systemCNC` VARCHAR(255) NOT NULL,
  `num` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`systemCNC`),
  UNIQUE INDEX `systemCNC_UNIQUE` (`systemCNC` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`machine_location_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`machine_location_filter` (
  `machineLocation` VARCHAR(255) NOT NULL,
  `num` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`machineLocation`),
  UNIQUE INDEX `machineLocation_UNIQUE` (`machineLocation` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`sliders_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`sliders_filter` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `productionYear` VARCHAR(45) NOT NULL,
  `price` VARCHAR(45) NOT NULL,
  `xMotionMm` VARCHAR(45) NOT NULL,
  `yMotionMm` VARCHAR(45) NOT NULL,
  `zMotionMm` VARCHAR(45) NOT NULL,
  `maxProcessingDiameterMm` VARCHAR(45) NOT NULL,
  `maxProcessingLengthMm` VARCHAR(45) NOT NULL,
  `xMotionInch` VARCHAR(45) NOT NULL,
  `yMotionInch` VARCHAR(45) NOT NULL,
  `zMotionInch` VARCHAR(45) NOT NULL,
  `maxProcessingDiameterInch` VARCHAR(45) NOT NULL,
  `maxProcessingLengthInch` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;

USE `common` ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
