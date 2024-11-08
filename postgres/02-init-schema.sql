-- Now we can connect to our new database
\c test;

DROP TABLE IF EXISTS public.users_test;

CREATE TABLE IF NOT EXISTS public.users_test (
    username VARCHAR(50) NOT NULL,
    password VARCHAR(72) NOT NULL,
    role VARCHAR(20) DEFAULT 'user' CHECK (role IN ('user', 'admin')),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT users_pkey PRIMARY KEY (username),
    CONSTRAINT users_username_check CHECK (LENGTH(TRIM(username)) >= 3),
    CONSTRAINT users_password_check CHECK (LENGTH(TRIM(password)) >= 60)
);


CREATE INDEX idx_users_test_role ON public.users_test(role); 