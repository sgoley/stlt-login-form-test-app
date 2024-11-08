USE TEST;

DROP TABLE IF EXISTS users_test;

CREATE TABLE users_test (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL COMMENT 'For bcrypt hashes',
    role ENUM('user', 'admin') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    CONSTRAINT users_username_unique UNIQUE (username),
    CONSTRAINT users_username_length CHECK (CHAR_LENGTH(TRIM(username)) >= 3),
    CONSTRAINT users_password_length CHECK (CHAR_LENGTH(TRIM(password)) >= 60)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Add index for role-based queries
CREATE INDEX idx_users_test_role ON users_test(role); 