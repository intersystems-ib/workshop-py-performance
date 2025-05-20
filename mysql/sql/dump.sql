CREATE DATABASE IF NOT EXISTS test;

USE test;

DROP TABLE IF EXISTS patient;

CREATE TABLE patient (
    Id int(8) NOT NULL AUTO_INCREMENT,
    Name varchar(225),
    Lastname varchar(225),
    Photo varchar(5000),
    Phone varchar (14),
    Address varchar (225),
    PRIMARY KEY (Id)
) ENGINE=INNODB;
