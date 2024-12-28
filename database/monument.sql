CREATE TABLE monument
(
    id                 int AUTO_INCREMENT,
    name        varchar(40) NULL,
    location           varchar(40) NULL,
    eliminations int NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (location) REFERENCES airport (ident)
)
    DEFAULT CHARSET = latin1;

INSERT INTO monument(name, location, eliminations)
VALUES  ('Linh', 'VVNB', 13420),
        ('An', 'ESSA', 12500),
        ('Tuyết', 'VVNB', 11400),
        ('Thư', 'YMML', 13980),
        ('Thảo', 'EFHK', 14650);