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