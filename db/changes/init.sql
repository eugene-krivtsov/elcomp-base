CREATE SCHEMA IF NOT EXISTS elcompbase;

CREATE TABLE "user"
(
    id            uuid         default gen_random_uuid() primary key,
    name          varchar(255)        not null,
    login_email   varchar(255) unique not null,
    password_hash varchar(255)        not null,
    registered_at timestamp           not null,
    visited_at    timestamp           not null,
    role          varchar(255) default 'USER',
    is_enabled    boolean      default false
);

