ALTER SESSION SET CONTAINER = testPDB;

CREATE USER testuser IDENTIFIED BY "testpassword";

GRANT CONNECT TO testuser CONTAINER=CURRENT;
GRANT CREATE SESSION TO testuser CONTAINER=CURRENT;
GRANT RESOURCE TO testuser CONTAINER=CURRENT;

ALTER USER testuser QUOTA 100M ON USERS;

ALTER SESSION SET CURRENT_SCHEMA = testuser;

DROP TABLE PATIENT;

CREATE TABLE PATIENT (
    id INT GENERATED BY DEFAULT AS IDENTITY,
    name VARCHAR2(225),
    lastname VARCHAR2(225),
    photo VARCHAR2(4000),
    phone VARCHAR2(14),
    address VARCHAR2(225),
    PRIMARY KEY(id)
);