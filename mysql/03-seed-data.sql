USE TEST;

-- Add test data with bcrypt hashed passwords
INSERT INTO users_test (username, password, role) 
VALUES 
    ('testadmin', '$argon2id$v=19$m=65536,t=3,p=4$I/iq8sduGoqgbffbxtkLgA$JgipF7nHZzlgUgRKWlwTouHFejjiJCAKxou2JzUUCB4', 'admin'),
    ('testuser', '$argon2id$v=19$m=65536,t=3,p=4$I/iq8sduGoqgbffbxtkLgA$JgipF7nHZzlgUgRKWlwTouHFejjiJCAKxou2JzUUCB4', 'user'); 