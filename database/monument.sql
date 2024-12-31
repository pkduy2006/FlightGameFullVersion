CREATE TABLE monument
(
    id                 INT(11) AUTO_INCREMENT,
    name        VARCHAR(40) NOT NULL,
    location           VARCHAR(40) NOT NULL,
    eliminations INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (location) REFERENCES airport(ident)
)
    DEFAULT CHARSET = latin1;

INSERT INTO monument(name, location, eliminations)
VALUES  ('Nguyen Ha Linh', 'VVNB', 13420),
        ('Pham Le Thai An', 'ESSA', 12500),
        ('Do Tuyet Minh', 'VVNB', 11400),
        ('Le Song Thu', 'YMML', 13980),
        ('Vu Hien Thao', 'EFHK', 14650);