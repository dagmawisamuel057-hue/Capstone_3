CREATE DATABASE IF NOT EXISTS W2_Workshop;
USE W2_Workshop;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE Walkers (
    walker_id INT PRIMARY KEY AUTO_INCREMENT,
    walker_name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Pets (
    pet_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    pet_name VARCHAR(50),
    breed VARCHAR(50),
    age INT,
    notes VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Walks (
    walk_id INT PRIMARY KEY AUTO_INCREMENT,
    pet_id INT,
    walker_id INT,
    walk_date DATE,
    walk_time TIME,
    duration_minutes INT,
    status VARCHAR(50),
    payment_amount DECIMAL(10,2),
    FOREIGN KEY (pet_id) REFERENCES Pets(pet_id),
    FOREIGN KEY (walker_id) REFERENCES Walkers(walker_id)
);