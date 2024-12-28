CREATE TABLE oil_depot
(
    id            int AUTO_INCREMENT,
    reserves      int NULL,
    number        int NULL,
    PRIMARY KEY (id)
)
    DEFAULT CHARSET = latin1;

INSERT INTO airport_type(reserves)
VALUES (100, 3),
       (150, 3),
       (200, 3),
       (300, 3),
       (400, 3);