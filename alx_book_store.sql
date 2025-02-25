CREATE DATABASE alx_book_store;

-- Use the database for the upcoming operations
USE alx_book_store;

-- Create the Authors table
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,    -- Unique identifier for authors
    author_name VARCHAR(215) NOT NULL            -- Name of the author
);

-- Create the Books table
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,    -- Unique identifier for books
    title VARCHAR(130) NOT NULL,                -- Title of the book
    author_id INT,                              -- Reference to the author of the book
    price DOUBLE NOT NULL,                      -- Price of the book
    publication_date DATE,                      -- Publication date of the book
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) -- Foreign key relationship to Authors
);

-- Create the Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,    -- Unique identifier for customers
    customer_name VARCHAR(215) NOT NULL,           -- Customer's name
    email VARCHAR(215) NOT NULL UNIQUE,            -- Customer's email (unique)
    address TEXT NOT NULL                         -- Customer's address
);

-- Create the Orders table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,    -- Unique identifier for orders
    customer_id INT,                             -- Reference to the customer making the order
    order_date DATE NOT NULL,                    -- Date when the order was placed
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) -- Foreign key relationship to Customers
);

-- Create the Order_Details table
CREATE TABLE Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,   -- Unique identifier for each order detail
    order_id INT,                                   -- Reference to the order in which the book was included
    book_id INT,                                    -- Reference to the book ordered
    quantity DOUBLE NOT NULL,                       -- Quantity of the book ordered
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),   -- Foreign key relationship to Orders
    FOREIGN KEY (book_id) REFERENCES Books(book_id)        -- Foreign key relationship to Books
);
