-- Nơi viết các câu lệnh SQL
CREATE DATABASE cntt3_database;

USE cntt3_database;

CREATE TABLE class(
	class_id INT,
    class_name VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY (class_id)
);

-- Xóa bảng
DROP TABLE student;

-- Các thao tác với bảng
CREATE TABLE student(
	student_id INT,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age tinyint CHECK(age >= 17),
    gender tinyint DEFAULT 0,
    class_id INT NOT NULL,
    PRIMARY KEY (student_id),
    FOREIGN KEY (class_id) REFERENCES class(class_id)
); 


-- Bài tập tổng hợp

CREATE TABLE book(
	book_id CHAR(5),
    book_name VARCHAR(200) NOT NULL,
    quantity INT CHECK (quantity >= 0),
    rent DECIMAL(10, 2) DEFAULT 5000,
    PRIMARY KEY (book_id)
);

CREATE TABLE borrow_book(
	borrow_book_id INT auto_increment,
    book_id CHAR(5) NOT NULL,
    borrow_date DATE DEFAULT (CURRENT_DATE()),
    PRIMARY KEY (borrow_book_id),
    foreign key(book_id) references book(book_id)
);

Alter Table book 
ADD COLUMN import_date DATE;