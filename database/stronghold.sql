CREATE TABLE stronghold
(
    id            int AUTO_INCREMENT,
    troops      int NULL,
    number        int NULL,
    PRIMARY KEY (id)
)
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_unicode_ci;

INSERT INTO stronghold(troops, number)
VALUES (600, 3),
       (700, 3),
       (800, 3),
       (1000, 3),
       (1300, 3);