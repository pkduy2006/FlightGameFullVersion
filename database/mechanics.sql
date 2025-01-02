CREATE TABLE stronghold
(
    troops INT(11) DEFAULT NULL,
    PRIMARY KEY (troops)
)
    DEFAULT CHARSET = latin1;

INSERT INTO stronghold(troops)
VALUES (600),
       (700),
       (800),
       (1000),
       (1300);


CREATE TABLE depot
(
    reserves INT(11) DEFAULT NULL,
    PRIMARY KEY (reserves)
)
    DEFAULT CHARSET = latin1;

INSERT INTO depot(reserves)
VALUES (100),
       (150),
       (200),
       (300),
       (400);


CREATE TABLE user
(
    id INT(11) AUTO_INCREMENT,
    name VARCHAR(40) DEFAULT NULL,
    PRIMARY KEY (id)
)
    DEFAULT CHARSET = latin1;


CREATE TABLE saved_base
(
    user_id INT(11) NOT NULL,
    ident VARCHAR(40) NOT NULL,
    PRIMARY KEY (user_id, ident),
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (ident) REFERENCES airport(ident)
)
    DEFAULT CHARSET = latin1;

CREATE TABLE saved_target
(
    user_id INT(11) NOT NULL,
    ident VARCHAR(40) NOT NULL,
    PRIMARY KEY (user_id, ident),
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (ident) REFERENCES airport(ident)
)
    DEFAULT CHARSET = latin1;

CREATE TABLE saved_abandoned
(
    user_id INT(11) NOT NULL,
    ident VARCHAR(40) NOT NULL,
    PRIMARY KEY (user_id, ident),
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (ident) REFERENCES airport(ident)
)
    DEFAULT CHARSET = latin1;

CREATE TABLE saved_stronghold
(
    user_id INT(11) NOT NULL,
    ident VARCHAR(40) NOT NULL,
    troops INT(11) DEFAULT NULL,
    PRIMARY KEY (user_id, ident),
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (ident) REFERENCES airport(ident)
)
    DEFAULT CHARSET = latin1;

CREATE TABLE saved_depot
(
    user_id INT(11) NOT NULL,
    ident VARCHAR(40) NOT NULL,
    reserves INT(11) DEFAULT NULL,
    PRIMARY KEY (user_id, ident),
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (ident) REFERENCES airport(ident)
)
    DEFAULT CHARSET = latin1;