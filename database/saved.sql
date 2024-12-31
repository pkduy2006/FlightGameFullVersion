CREATE TABLE stronghold
(
    id  INT AUTO_INCREMENT,
    user_id INT NULL,
    name    VARCHAR(40) NULL,
    iso     VARCHAR(40) NULL,
    address    VARCHAR(40)    NULL,
    icao    VARCHAR(40) NULL,
    lat DOUBLE NULL,
    lon DOUBLE NULL,
    type    VARCHAR(40) NULL,
    troops  INT NULL,
    PRIMARY KEY (id)
)
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_unicode_ci;

CREATE TABLE depot
(
    id INT AUTO_INCREMENT,
    user_id INT NULL,
    name    VARCHAR(40) NULL,
    iso VARCHAR(40) NULL,
    address VARCHAR(40) NULL,
    icao    VARCHAR(40) NULL,
    lat DOUBLE NULL,
    lon DOUBLE NULL,
    type    VARCHAR(40) NULL,
    reserves    INT NULL,
    PRIMARY KEY (id)
)
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_unicod_ci;


CREATE TABLE abandoned
(
    id INT AUTO_INCREMENT,
    user_id INT NULL,
    name    VARCHAR(40) NULL,
    iso VARCHAR(40) NULL,
    address VARCHAR(40) NULL,
    icao    VARCHAR(40) NULL,
    lat DOUBLE NULL,
    lon DOUBLE  NULL,
    type    VARCHAR(40) NULL,
    PRIMARY KEY (id)
)
    DEFAULT CHARESE = utf8mb4
    COLLATE = utf8mb4_unicode_ci;

CREATE TABLE base
(
    id INT AUTO_INCREMENT,
    user_id INT NULL,
    name    VARCHAR(40) NULL,
    iso VARCHAR(40) NULL,
    address VARCHAR(40) NULL,
    icao    VARCHAR(40) NULL,
    lat DOUBLE NULL,
    lon DOUBLE  NULL,
    type    VARCHAR(40) NULL,
    PRIMARY KEY (id)
)
    DEFAULT CHARESE = utf8mb4
    COLLATE = utf8mb4_unicode_ci;

CREATE TABLE target
(
    id INT AUTO_INCREMENT,
    user_id INT NULL,
    name    VARCHAR(40) NULL,
    iso VARCHAR(40) NULL,
    address VARCHAR(40) NULL,
    icao    VARCHAR(40) NULL,
    lat DOUBLE NULL,
    lon DOUBLE  NULL,
    type    VARCHAR(40) NULL,
    PRIMARY KEY (id)
)
    DEFAULT CHARESE = utf8mb4
    COLLATE = utf8mb4_unicode_ci;