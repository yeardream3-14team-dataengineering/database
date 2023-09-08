CREATE DATABASE IF NOT EXISTS mydb_test;
USE mydb_test;

CREATE TABLE IF NOT EXISTS Category
(
	category_id INT NOT NULL PRIMARY KEY
    , category_name VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Article
(
	news_id INT NOT NULL PRIMARY KEY
    , category_id INT NOT NULL
    , news_url VARCHAR(50) NOT NULL
    , company_name VARCHAR(20) NOT NULL
    , title VARCHAR(30) NOT NULL
    , author_info VARCHAR(30) NOT NULL
    , create_date DATETIME NOT NULL
    , modify_date DATETIME NULL
    , content LONGTEXT NOT NULL
    , image_url VARCHAR(50) NULL
    , comments INT NULL DEFAULT 0
    , gendor_ratio TINYINT NULL DEFAULT 0
    , age_ratio TINYINT NULL DEFAULT 0
    , FOREIGN KEY (category_id) REFERENCES Category (category_id)
);

insert into Category (category_id, category_name)
values (100, "정치"), (101, "경제"), (102, "사회"), (103, "생활/문화"), (104, "세계"), (105, "IT/과학");

select * from Category;

