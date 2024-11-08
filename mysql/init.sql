CREATE DATABASE IF NOT EXISTS TEST;

DROP TABLE IF EXISTS TEST.USERS_TEST;

CREATE TABLE TEST.USERS_TEST (
    userid INT,
    username VARCHAR(255) not null primary key unique,
    password VARCHAR(255) not null);
