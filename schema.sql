DROP DATABASE IF EXISTS `Edusign`;
CREATE DATABASE `Edusign`;
USE `Edusign`;

DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
    `user_id` INT UNSIGNED AUTO_INCREMENT NOT NULL UNIQUE,
    `first_name` VARCHAR(80) NOT NULL,
    `last_name` VARCHAR(80) NOT NULL,
    `email` VARCHAR(255) NOT NULL UNIQUE,
    PRIMARY KEY (`user_id`)
);

DROP TABLE IF EXISTS `Signatures`;
CREATE TABLE `Signatures` (
    `signature_id` INT UNSIGNED AUTO_INCREMENT NOT NULL UNIQUE,
    `user_id` INT UNSIGNED NOT NULL,
    `created_at` DATETIME NOT NULL,
    PRIMARY KEY (`signature_id`),
    CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE
);

INSERT INTO `Users` (`first_name`, `last_name`, `email`) VALUES ("Ada", "Lovelace", "ada@test.fr");
INSERT INTO `Users` (`first_name`, `last_name`, `email`) VALUES ("Beatrice", "Worsley", "bea@test.fr");
INSERT INTO `Users` (`first_name`, `last_name`, `email`) VALUES ("Bella", "Guerin", "bella@test.fr");
INSERT INTO `Users` (`first_name`, `last_name`, `email`) VALUES ("Barbara", "Chase", "barbara@test.fr");

INSERT INTO `Signatures` (`user_id`, `created_at`) VALUES (1, "2024-05-30 09:30:00");
INSERT INTO `Signatures` (`user_id`, `created_at`) VALUES (3, "2024-05-30 09:30:00");
INSERT INTO `Signatures` (`user_id`, `created_at`) VALUES (1, "2024-09-01 09:30:00");
INSERT INTO `Signatures` (`user_id`, `created_at`) VALUES (2, "2024-09-01 09:30:00");
INSERT INTO `Signatures` (`user_id`, `created_at`) VALUES (3, "2024-09-01 09:30:00");
INSERT INTO `Signatures` (`user_id`, `created_at`) VALUES (4, "2024-09-01 09:30:00");