-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema lathe
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lathe
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lathe` DEFAULT CHARACTER SET utf8 ;
USE `lathe` ;

-- -----------------------------------------------------
-- Table `lathe`.`language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`language` (
  `lang` VARCHAR(2) NOT NULL,
  UNIQUE INDEX `lang_UNIQUE` (`lang` ASC),
  PRIMARY KEY (`lang`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`lathe_full_translate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`lathe_full_translate` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `productId` VARCHAR(255) NOT NULL,
  `fullSystemCNC` VARCHAR(255) NULL,
  `counterSpindlePresence` VARCHAR(255) NULL,
  `turretFasteningType` VARCHAR(255) NULL,
  `tailstockPresence` VARCHAR(255) NULL,
  `language_lang` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`id`, `productId`, `language_lang`),
  INDEX `fk_lathe_full_translate_language1_idx` (`language_lang` ASC),
  CONSTRAINT `fk_lathe_full_translate_language1`
    FOREIGN KEY (`language_lang`)
    REFERENCES `lathe`.`language` (`lang`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`lathe_full`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`lathe_full` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `productId` VARCHAR(255) NOT NULL,
  `processingDiameter` VARCHAR(255) NULL,
  `rodPassageDiameter` VARCHAR(255) NULL,
  `spindleRotationFreq` VARCHAR(255) NULL,
  `spindlePower` VARCHAR(255) NULL,
  `spindleHoleDiameter` VARCHAR(255) NULL,
  `counterSpindleRotationFreq` VARCHAR(255) NULL,
  `drivenToolsCount` VARCHAR(255) NULL,
  `nonDrivenToolsCount` VARCHAR(255) NULL,
  `positionRepositionPrecision` VARCHAR(255) NULL,
  `positionPrecision` VARCHAR(255) NULL,
  `spindleLife` VARCHAR(255) NULL,
  `machineLaunchingTime` VARCHAR(255) NULL,
  `photo2` VARCHAR(255) NULL,
  `photo3` VARCHAR(255) NULL,
  `photo4` VARCHAR(255) NULL,
  `photo5` VARCHAR(255) NULL,
  `video1` VARCHAR(255) NULL,
  `video2` VARCHAR(255) NULL,
  `video3` VARCHAR(255) NULL,
  `lathe_full_translate_id` INT(11) NOT NULL,
  `lathe_full_translate_productId` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`, `productId`, `lathe_full_translate_id`, `lathe_full_translate_productId`),
  INDEX `fk_lathe_full_lathe_full_translate1_idx` (`lathe_full_translate_id` ASC, `lathe_full_translate_productId` ASC),
  CONSTRAINT `fk_lathe_full_lathe_full_translate1`
    FOREIGN KEY (`lathe_full_translate_id` , `lathe_full_translate_productId`)
    REFERENCES `lathe`.`lathe_full_translate` (`id` , `productId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`lathe_translate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`lathe_translate` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `productId` VARCHAR(255) NOT NULL,
  `machineType` VARCHAR(255) NOT NULL,
  `model` VARCHAR(255) NOT NULL,
  `manufacturer` VARCHAR(255) NOT NULL,
  `producingCountry` VARCHAR(255) NOT NULL,
  `systemCNC` VARCHAR(255) NOT NULL,
  `machineCondition` VARCHAR(255) NOT NULL,
  `machineLocation` VARCHAR(255) NOT NULL,
  `description` VARCHAR(1023) NOT NULL,
  `language_lang` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`id`, `productId`, `language_lang`),
  INDEX `fk_lathe_translate_language1_idx` (`language_lang` ASC),
  CONSTRAINT `fk_lathe_translate_language1`
    FOREIGN KEY (`language_lang`)
    REFERENCES `lathe`.`language` (`lang`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`lathe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`lathe` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `productId` VARCHAR(255) NOT NULL,
  `productionYear` INT(11) NOT NULL,
  `maxProcessingDiameter` INT(11) NOT NULL,
  `maxProcessingLength` INT(11) NOT NULL,
  `xMotion` INT(11) NOT NULL,
  `yMotion` INT(11) NOT NULL,
  `zMotion` INT(11) NOT NULL,
  `price` INT(11) NOT NULL,
  `photo1` VARCHAR(255) NOT NULL,
  `isSold` VARCHAR(45) NOT NULL,
  `lathe_full_id` INT(11) NOT NULL,
  `lathe_full_productId` VARCHAR(255) NOT NULL,
  `lathe_translate_id` INT(11) NOT NULL,
  `lathe_translate_productId` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`, `productId`, `lathe_full_id`, `lathe_full_productId`, `lathe_translate_id`, `lathe_translate_productId`),
  INDEX `fk_lathe_lathe_full_idx` (`lathe_full_id` ASC, `lathe_full_productId` ASC),
  INDEX `fk_lathe_lathe_translate1_idx` (`lathe_translate_id` ASC, `lathe_translate_productId` ASC),
  CONSTRAINT `fk_lathe_lathe_full`
    FOREIGN KEY (`lathe_full_id` , `lathe_full_productId`)
    REFERENCES `lathe`.`lathe_full` (`id` , `productId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_lathe_lathe_translate1`
    FOREIGN KEY (`lathe_translate_id` , `lathe_translate_productId`)
    REFERENCES `lathe`.`lathe_translate` (`id` , `productId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`brand_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`brand_filter` (
  `brand` VARCHAR(255) NOT NULL,
  `num` INT(11) NULL,
  PRIMARY KEY (`brand`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`system_cnc_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`system_cnc_filter` (
  `systemCNC` VARCHAR(255) NOT NULL,
  `num` INT(11) NULL,
  PRIMARY KEY (`systemCNC`),
  UNIQUE INDEX `systemCNC_UNIQUE` (`systemCNC` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lathe`.`machine_location_filter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lathe`.`machine_location_filter` (
  `machineLocation` VARCHAR(255) NOT NULL,
  `num` INT(11) NULL,
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
  `xMotion` VARCHAR(45) NOT NULL,
  `yMotion` VARCHAR(45) NOT NULL,
  `zMotion` VARCHAR(45) NOT NULL,
  `maxProcessingDiameter` VARCHAR(45) NOT NULL,
  `maxProcessingLength` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
