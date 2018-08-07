create database `vue_express_mysql`;
use `vue_express_mysql`;

CREATE TABLE `vue_express_mysql`.`user` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `age` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)
)
DEFAULT CHARACTER SET = utf8mb4;
