CREATE TABLE USERS_TEST (
    userid INT,
    username VARCHAR(255) not null primary key unique,
    password VARCHAR(255) not null);