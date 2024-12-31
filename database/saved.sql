CREATE TABLE saved_stronghold
(
    id  INT AUTO_INCREMENT,
    user_id INT,
    name    VARCHAR(40),
    iso     VARCHAR(40),
    address    VARCHAR(40),
    icao    VARCHAR(40),
    lat DOUBLE,
    lon DOUBLE,
    type    VARCHAR(40),
    troops  INT,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user(id)
)
    DEFAULT CHARSET = latin1;

CREATE TABLE saved_depot
(
    id INT AUTO_INCREMENT,
    user_id INT,
    name    VARCHAR(40),
    iso VARCHAR(40),
    address VARCHAR(40),
    icao    VARCHAR(40),
    lat DOUBLE,
    lon DOUBLE,
    type    VARCHAR(40),
    reserves    INT,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user(id)
)
    DEFAULT CHARSET = latin1;


CREATE TABLE saved_abandoned
(
    id INT AUTO_INCREMENT,
    user_id INT,
    name    VARCHAR(40),
    iso VARCHAR(40),
    address VARCHAR(40),
    icao    VARCHAR(40),
    lat DOUBLE,
    lon DOUBLE,
    type    VARCHAR(40),
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user(id)
)
    DEFAULT CHARSET = latin1;

CREATE TABLE saved_base
(
    id INT AUTO_INCREMENT,
    user_id INT,
    name    VARCHAR(40),
    iso VARCHAR(40),
    address VARCHAR(40),
    icao    VARCHAR(40),
    lat DOUBLE,
    lon DOUBLE,
    type    VARCHAR(40),
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user(id)
)
    DEFAULT CHARSET = latin1;

CREATE TABLE saved_target
(
    id INT AUTO_INCREMENT,
    user_id INT,
    name    VARCHAR(40),
    iso VARCHAR(40),
    address VARCHAR(40),
    icao    VARCHAR(40),
    lat DOUBLE,
    lon DOUBLE,
    type    VARCHAR(40),
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user(id)
)
    DEFAULT CHARSET = latin1;

CREATE TABLE user
(
    id INT AUTO_INCREMENT,
    name VARCHAR(40),
    PRIMARY KEY (id)
)
    DEFAULT CHARSET = latin1;