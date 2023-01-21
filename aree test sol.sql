CREATE TABLE People (
    person_id INTEGER unsigned NOT null AUTO_INCREMENT,
    person_name varchar(128),
    phone_number INTEGER,
    message_id INTEGER unsigned NOT null AUTO_INCREMENT

    PRIMARY KEY(person_id),
    INDEX (person_name),

    CONSTRAINT FOREIGN KEY (message_id)
    REFERENCES Messages(message_id)
    on DELETE CASCADE on UPDATE CASCADE
)

CREATE TABLE Messages (
    message_id INTEGER unsigned NOT null AUTO_INCREMENT,
    message_content varchar (256),

    PRIMARY KEY(message_id),
    INDEX (message_content)
)