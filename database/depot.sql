CREATE TABLE oil_depot
(
    id            INT AUTO_INCREMENT
    reserves      INT NULL,
    number        INT NULL,
    PRIMARY KEY (id)
)
    DEFAULT CHARSET = utf8mb4
    COLLATE=utf8mb4_unicode_ci;

INSERT INTO airport_type(reserves, number)
VALUES (100, 3),
       (150, 3),
       (200, 3),
       (300, 3),
       (400, 3);