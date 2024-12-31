CREATE TABLE depot
(
    id            INT AUTO_INCREMENT,
    reserves      INT,
    number        INT,
    PRIMARY KEY (id)
)
    DEFAULT CHARSET = latin1;

INSERT INTO depot(reserves, number)
VALUES (100, 3),
       (150, 3),
       (200, 3),
       (300, 3),
       (400, 3);