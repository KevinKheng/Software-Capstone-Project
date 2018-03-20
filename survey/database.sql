CREATE DATABASE IF NOT EXISTS Survey;
USE Survey;
DROP TABLE IF EXISTS Users;

CREATE TABLE Users(UserID INT NOT NULL AUTO_INCREMENT, SchoolName VARCHAR(200),GradeLevel VARCHAR(20), Age VARCHAR(10), Gender VARCHAR(8), CONSTRAINT PRIMARY KEY(UserID));

ALTER TABLE Users AUTO_INCREMENT=1111;


DROP TABLE IF EXISTS Questions;

CREATE TABLE Questions(QuestionID VARCHAR(5), Description VARCHAR(150), CONSTRAINT PRIMARY KEY(QuestionID));


INSERT INTO Questions VALUES("q1","I am developing a sense of purpose");
INSERT INTO Questions VALUES("q2","I believe that my personal decisions can affect my health as well as the health of others");
INSERT INTO Questions VALUES("q3","I have a good sense of who I am, body image and self-esteem");
INSERT INTO Questions VALUES("q4","I feel good about and have a positive view of my personal future");
INSERT INTO Questions VALUES("q5","I feel good about myself");

DROP TABLE IF EXISTS PostTest;

CREATE TABLE PostTest(UserID INT, QuestionID VARCHAR(5), Answers VARCHAR(100), CONSTRAINT FOREIGN KEY(UserID) REFERENCES Users(UserID), CONSTRAINT FOREIGN KEY(QuestionID) REFERENCES Questions(QuestionID));


DROP TABLE IF EXISTS PreTest;

CREATE TABLE PreTest(UserID INT, QuestionID VARCHAR(5), Answers VARCHAR(100), CONSTRAINT FOREIGN KEY(UserID) REFERENCES Users(UserID), CONSTRAINT FOREIGN KEY(QuestionID) REFERENCES Questions(QuestionID));



