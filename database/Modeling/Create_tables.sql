/* Drop tables if exists */
DROP TABLE if EXISTS Registers;
DROP TABLE if EXISTS Users;

/* Create tables */
CREATE TABLE Users (
    id integer PRIMARY KEY AUTOINCREMENT,
    nome char(10) NOT NULL,
    cpf char(11) NOT NULL,
    email char(50) NOT NULL,
    created_date date NOT NULL default CURRENT_DATE
);

CREATE TABLE Registers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id integer not null,
    date_time datetime not null DEFAULT CURRENT_TIMESTAMP,
    in_out bool not null DEFAULT 1,
    FOREIGN KEY (user_id) REFERENCES Users(id) ON DELETE RESTRICT
);

/* Insert 1 User */
INSERT INTO "main"."Users" ("nome", "cpf", "email")
VALUES ('Rodolfo', 02608098029, 'rodolfopl@gmail.com');