\c test;

-- Add any test data you need
INSERT INTO public.users_test (username, password, role) 
VALUES 
    ('testadmin', '$argon2id$v=19$m=65536,t=3,p=4$I/iq8sduGoqgbffbxtkLgA$JgipF7nHZzlgUgRKWlwTouHFejjiJCAKxou2JzUUCB4', 'admin'),  -- password: test123
    ('testuser', '$argon2id$v=19$m=65536,t=3,p=4$I/iq8sduGoqgbffbxtkLgA$JgipF7nHZzlgUgRKWlwTouHFejjiJCAKxou2JzUUCB4', 'user'); 