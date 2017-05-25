CREATE DATABASE Studentbase

ON PRIMARY ( NAME=base,

FILENAME='D:\Babah\New Database.mdf',

SIZE=100MB, MAXSIZE=200, FILEGROWTH=20)

LOG ON

(NAME=baselog1,

FILENAME='D:\Babah\New Database.ldf',

SIZE=100MB, MAXSIZE=200, FILEGROWTH=20)

USE Studentbase

CREATE TABLE Table_Subject (

ID_Subject int NOT NULL,

Name_subject NCHAR(255) NULL,

Program_subject NVARCHAR(MAX) NULL,

)

CREATE TABLE Table_Type_Exam (

ID_Type_Exam int NOT NULL,

Name_Type_Exam NCHAR(50) NULL,

)

CREATE TABLE Table_Subject_Success (

ID_Student int NOT NULL,

ID_Subject int NOT NULL,

ID_Type_Exam int NOT NULL,

Mark float NULL

)

USE Studentbase

ALTER TABLE Table_Subject_Success

ADD CONSTRAINT FK_Table_Type_Exam FOREIGN KEY (ID_Type_Exam)

REFERENCES Table_Type_Exam (ID_Type_Exam)

ON DELETE CASCADE

ON UPDATE CASCADE

;

USE Studentbase

ALTER TABLE Table_Subject

ADD CONSTRAINT PK_Table_Subject PRIMARY KEY (ID_Subject)

;
