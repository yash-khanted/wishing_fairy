CREATE DATABASE IF NOT EXISTS wishing_fairy;

USE wishing_fairy;

CREATE TABLE IF NOT EXISTS wisher (
    id INT PRIMARY KEY,
    wisher_name VARCHAR(50),
    email_address VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS wish (
    id INT PRIMARY KEY,
    wish_date DATE,
    wish_description VARCHAR(50),
    wish_type VARCHAR(50),
    receiver_id INT
);

ALTER TABLE
    wish
ADD
    CONSTRAINT fk_receiver FOREIGN KEY (receiver_id) REFERENCES wisher(id);

CREATE TABLE IF NOT EXISTS wisher_wish_map(sender_id INT, wish_id INT);

ALTER TABLE
    wisher_wish_map
ADD
    CONSTRAINT pk_map PRIMARY KEY (sender_id, wish_id),
ADD
    CONSTRAINT fk_sender FOREIGN KEY (sender_id) REFERENCES wisher(id),
ADD
    CONSTRAINT fk_wish FOREIGN KEY (wish_id) REFERENCES wish(id);