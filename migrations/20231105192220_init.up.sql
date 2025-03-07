CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE
    "users" (
                id UUID NOT NULL PRIMARY KEY DEFAULT (uuid_generate_v4()),
                name VARCHAR(100) NOT NULL,
                email VARCHAR(255) NOT NULL UNIQUE,
                password VARCHAR(100) NOT NULL,
                role VARCHAR(50) NOT NULL DEFAULT 'user',
                created_at TIMESTAMP
                       WITH
                           TIME ZONE DEFAULT NOW(),
                updated_at TIMESTAMP
                       WITH
                           TIME ZONE DEFAULT NOW()
);

CREATE INDEX users_email_idx ON users (email);