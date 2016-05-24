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
-- Table `qjvmhoia_hmc_com`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qjvmhoia_hmc_com`.`users` (
  `num` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NOT NULL,
  `userPassword` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`num`),
  UNIQUE INDEX `num_UNIQUE` (`num` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
