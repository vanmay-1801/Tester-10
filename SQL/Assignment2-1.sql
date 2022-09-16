DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;
CREATE TABLE Department (
department_id				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
department_name				VARCHAR(50)
);

CREATE TABLE `Position` (
position_id					INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
position_name				ENUM('Dev','Test','Scrum Master','PM')
);

CREATE TABLE `Account` (
account_id					INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
email						VARCHAR(100) UNIQUE KEY,
use_name					VARCHAR(50) UNIQUE KEY,
full_name					VARCHAR(50),
department_id 				INT UNSIGNED,
position_id					INT UNSIGNED,
create_date					DATE,
FOREIGN KEY (department_id) REFERENCES Department(department_id),
FOREIGN KEY (position_id) 	REFERENCES `Position`(position_id)
);

CREATE TABLE `Group` (
group_id					INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
group_name					VARCHAR(50),
creator_id					INT UNSIGNED,
creator_date				DATE,
FOREIGN KEY (creator_id) 	REFERENCES `Account`(account_id)
);

CREATE TABLE GroupAccount (
group_id					INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
account_id 					INT UNSIGNED,
join_date					DATE,
FOREIGN KEY (group_id) 	REFERENCES `Group`(group_id),
FOREIGN KEY (account_id) 	REFERENCES `Account`(account_id)
);

CREATE TABLE Typequestion (
type_id						SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
type_name					ENUM('Essay','Multiple-Choice')
);

CREATE TABLE CategoryQuestion (
category_id					SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
category_name				VARCHAR(50)
);

CREATE TABLE Question (
question_id 				INT AUTO_INCREMENT PRIMARY KEY,
content						VARCHAR(1000),
category_id					SMALLINT UNSIGNED,
type_id						SMALLINT UNSIGNED,
creator_id					INT UNSIGNED,
creator_date				DATE,
FOREIGN KEY (category_id) 	REFERENCES CategoryQuestion(category_id),
FOREIGN KEY (creator_id) 	REFERENCES `Account`(account_id)
);

CREATE TABLE Answer (
    answer_id 				INT AUTO_INCREMENT PRIMARY KEY,
    content 				VARCHAR(500),
    question_id				INT,
    is_correct 				ENUM('Đúng','Sai'),
FOREIGN KEY (question_id)REFERENCES Question(question_id)
);

CREATE TABLE Exam (
exam_id						INT AUTO_INCREMENT PRIMARY KEY,
`code`						VARCHAR(50),
title						VARCHAR(50),
category_id					SMALLINT UNSIGNED,
duration					TIME,
creator_id					INT UNSIGNED,
create_date					DATE,
FOREIGN KEY (category_id)	REFERENCES CategoryQuestion(category_id),
FOREIGN KEY (creator_id) 	REFERENCES `Account`(account_id)
);

CREATE TABLE ExamQuestion (
exam_id						INT,
question_id					INT,
FOREIGN KEY (exam_id)	REFERENCES Exam(exam_id),
FOREIGN KEY (question_id)REFERENCES Question(question_id)
);


