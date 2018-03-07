CREATE DATABASE IF NOT EXISTS Survey;
USE Survey;
DROP TABLE IF EXISTS Users;

CREATE TABLE Users(UserID INT NOT NULL AUTO_INCREMENT, SchoolName VARCHAR(200),GradeLevel VARCHAR(5), Age INT, Gender VARCHAR(8), CONSTRAINT PRIMARY KEY(UserID));

ALTER TABLE Users AUTO_INCREMENT=1111;


DROP TABLE IF EXISTS Questions;

CREATE TABLE Questions(QuestionID INT NOT NULL AUTO_INCREMENT, Description VARCHAR(150), CONSTRAINT PRIMARY KEY(QuestionID));

ALTER TABLE Questions AUTO_INCREMENT=1111;

INSERT INTO Questions VALUES(NULL,"I stand up for what I believe in" );
INSERT INTO Questions VALUES(NULL,"I feel in control of my life and future" );
INSERT INTO Questions VALUES(NULL,"I feel good about myself" );
INSERT INTO Questions VALUES(NULL,"I avoid things that are dangerous or unhealthy" );
INSERT INTO Questions VALUES(NULL,"I enjoy reading or being read to" );
INSERT INTO Questions VALUES(NULL,"I build friendships with other people" );
INSERT INTO Questions VALUES(NULL,"I care about school" );
INSERT INTO Questions VALUES(NULL,"I do my homework" );
INSERT INTO Questions VALUES(NULL,"I stay away from tobacco, alcohol, & other drugs" );
INSERT INTO Questions VALUES(NULL,"I enjoy learning" );
INSERT INTO Questions VALUES(NULL,"I express my feelings in proper ways" );
INSERT INTO Questions VALUES(NULL,"I feel good about my future" );
INSERT INTO Questions VALUES(NULL,"I seek advice from my parents" );
INSERT INTO Questions VALUES(NULL,"I deal with frustration in positive ways" );
INSERT INTO Questions VALUES(NULL,"I overcome challenges in positive ways" );
INSERT INTO Questions VALUES(NULL,"I think it is important to help other people" );
INSERT INTO Questions VALUES(NULL,"I feel safe and secure at home" );
INSERT INTO Questions VALUES(NULL,"I plan ahead and make good choices" );
INSERT INTO Questions VALUES(NULL,"I resist bad influences" );
INSERT INTO Questions VALUES(NULL,"I resolve conflicts without anyone getting hurt" );
INSERT INTO Questions VALUES(NULL,"I feel valued and appreciated by others" );
INSERT INTO Questions VALUES(NULL,"I take responsibility for what I do" );
INSERT INTO Questions VALUES(NULL,"I tell the truth even when it is not easy" );
INSERT INTO Questions VALUES(NULL,"I accept people who are different from me" );
INSERT INTO Questions VALUES(NULL,"I feel safe at school" );
INSERT INTO Questions VALUES(NULL,"I am actively engaged in learning new things" );
INSERT INTO Questions VALUES(NULL,"I am developing a sense of purpose in my life" );
INSERT INTO Questions VALUES(NULL,"I am encouraged to try things that might be good for me" );
INSERT INTO Questions VALUES(NULL,"I am included in family tasks and decisions" );
INSERT INTO Questions VALUES(NULL,"I am helping to make my community a better place" );
INSERT INTO Questions VALUES(NULL,"I am involved in a religious group or activity" );
INSERT INTO Questions VALUES(NULL,"I am developing good health habits" );
INSERT INTO Questions VALUES(NULL,"I am encouraged to help others" );
INSERT INTO Questions VALUES(NULL,"I am involved in a sport, club, or other group" );
INSERT INTO Questions VALUES(NULL,"I am trying to help solve social problems" );
INSERT INTO Questions VALUES(NULL,"I am given useful roles and responsibilities" );
INSERT INTO Questions VALUES(NULL,"I am developing respect for other people" );
INSERT INTO Questions VALUES(NULL,"I am eager to do well in school and other activities" );
INSERT INTO Questions VALUES(NULL,"I am sensitive to the needs and feelings of others" );
INSERT INTO Questions VALUES(NULL,"I am involved in creative things such as music, theater, or art" );
INSERT INTO Questions VALUES(NULL,"I am serving others in my community" );
INSERT INTO Questions VALUES(NULL,"I am spending quality time at home with parent(s)" );
INSERT INTO Questions VALUES(NULL,"I have friends who set good examples for me" );
INSERT INTO Questions VALUES(NULL,"I have a school that gives students clear rules" );
INSERT INTO Questions VALUES(NULL,"I have adults who are good role models for me" );
INSERT INTO Questions VALUES(NULL,"I have a safe neighborhood" );
INSERT INTO Questions VALUES(NULL,"I have parent (s) who try to help me succeed" );
INSERT INTO Questions VALUES(NULL,"I have good neighbors who care about me" );
INSERT INTO Questions VALUES(NULL,"I have a school that cares about kids and encourages them" );
INSERT INTO Questions VALUES(NULL,"I have teachers who urge me to develop and achieve" );
INSERT INTO Questions VALUES(NULL,"I have support from adults other than my parents" );
INSERT INTO Questions VALUES(NULL,"I have a family that provides me with clear rules" );
INSERT INTO Questions VALUES(NULL,"I have parent(s) who urge me to do well in school" );
INSERT INTO Questions VALUES(NULL,"I have a family that gives me love and support" );
INSERT INTO Questions VALUES(NULL,"I have neighbors who help watch out for me" );
INSERT INTO Questions VALUES(NULL,"I have parent(s) who are good at talking with me about things" );
INSERT INTO Questions VALUES(NULL,"I have a school that enforces rules fairly" );
INSERT INTO Questions VALUES(NULL,"I have a family that knows where I am and what I am doing");

DROP TABLE IF EXISTS PostTest;

CREATE TABLE PostTest(PostTestID INT NOT NULL AUTO_INCREMENT,Answers VARCHAR(100), UserID INT, QuestionID INT, CONSTRAINT FOREIGN KEY(UserID) REFERENCES Users(UserID),CONSTRAINT PRIMARY KEY(PostTestID), CONSTRAINT FOREIGN KEY(QuestionID) REFERENCES Questions(QuestionID));

ALTER TABLE PostTest AUTO_INCREMENT=1111;

DROP TABLE IF EXISTS PreTest;

CREATE TABLE PreTest(PreTestID INT NOT NULL AUTO_INCREMENT, Answers VARCHAR(100), UserID INT, QuestionID INT, CONSTRAINT FOREIGN KEY(UserID) REFERENCES Users(UserID), CONSTRAINT PRIMARY KEY(PreTestID), CONSTRAINT FOREIGN KEY(QuestionID) REFERENCES Questions(QuestionID));

ALTER TABLE PreTest AUTO_INCREMENT=1111;
