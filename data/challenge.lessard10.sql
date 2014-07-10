/*
	Database with players info including their name,password,
	firstname(optional), lastname(optional), email and determine if valid or not
	1.0
	2014/01/21
	Cedrik Lessard
*/

DROP DATABASE IF EXISTS `Normalenrussie`;

CREATE DATABASE IF NOT EXISTS `Normalenrussie`
	DEFAULT CHARACTER set utf8
	DEFAULT COLLATE utf8_general_ci;
	  
USE `Normalenrussie`;

CREATE TABLE `russians` (
	`id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(64) NOT NULL,
	`password` VARCHAR(64) NOT NULL,
	`firstname` VARCHAR(64) NULL,
	`lastname` VARCHAR(64) NULL,
	`email` TEXT NOT NULL,
	`isvalid` TINYINT DEFAULT 0 NOT NULL,
	PRIMARY KEY(`id`),
	UNIQUE(`name`)
)	ENGINE = InnoDB;

