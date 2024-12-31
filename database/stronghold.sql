CREATE TABLE stronghold
(
    id            int AUTO_INCREMENT,
    troops      int NULL,
    number        int NULL,
    PRIMARY KEY (id)
)
    DEFAULT CHARSET = latin1;

INSERT INTO stronghold(troops, number)
VALUES (600, 3),
       (700, 3),
       (800, 3),
       (1000, 3),
       (1300, 3);