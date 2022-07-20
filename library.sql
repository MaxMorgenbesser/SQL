CREATE TABLE books_mm(
    ID INT primary key,
    Title text,
    Genre TEXT,
    Author TEXT,
    QTY INTEGER
)

CREATE TABLE Users_mm(
    ID INT PRIMARY KEY,
    Fname Text,
    Lname TEXT,
    EMAIL VARCHAR(100) UNIQUE 
)



ALTER TABLE Users_mm
Modify COLUMN EMAIL VARCHAR(100) UNIQUE NOT NULL;

CREATE TABLE Checkout_mm(
    ID int primary key,
    user_ID int ,
    book_id int ,
    checkout_date text,
    return_date DATETIME,
    foreign key (book_id ) REFERENCES books_mm(ID),
    foreign key (user_ID) REFERENCES Users_mm(ID)
 )

 INSERT INTO books_mm
 VALUES 
 (2,"Rich dad poor dad","Self Help","Robert Kiyosaki", 1),
 (3,"Tale of two cities","Fiction","charles dickens", 33)
  
 select * from books_mm

 Select *
 from books_mm
 where Genre='Fiction'