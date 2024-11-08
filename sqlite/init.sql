-- Fix CREATE TABLE syntax
CREATE TABLE USERS_TEST (
    userid INT,
    username VARCHAR(255) not null primary key unique,
    password VARCHAR(255) not null,
    role VARCHAR(255) DEFAULT 'user'
);

-- Insert test records
INSERT INTO USERS_TEST (userid, username, password, role) VALUES
    (1, 'admin', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5f/8KQ3W7WAw.', 'admin'),
    (2, 'test_user', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5f/8KQ3W7WAw.', 'user'),
    (3, 'john_doe', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewY5f/8KQ3W7WAw.', 'user'); 