USE W2_Workshop;

INSERT INTO Customers (first_name, last_name, phone, email, address)
VALUES
('John', 'Smith', '555-111-2222', 'john.smith@email.com', '123 Oak St'),
('Maria', 'Lopez', '555-333-4444', 'maria.lopez@email.com', '456 Pine Ave'),
('David', 'Brown', '555-555-1212', 'david.brown@email.com', '789 Maple Dr');
INSERT INTO Walkers (walker_name, phone, email)
VALUES
('Lana Brooks', '555-777-8888', 'lana@email.com'),
('Chris Hill', '555-999-0000', 'chris@email.com'),
('Ava Reed', '555-123-9876', 'ava@email.com');
INSERT INTO Pets (customer_id, pet_name, breed, age, notes)
VALUES
(1, 'Buddy', 'Golden Retriever', 4, 'Friendly and energetic'),
(2, 'Luna', 'Beagle', 2, 'Needs short walks'),
(3, 'Max', 'Poodle', 5, 'Very calm'),
(1, 'Bella', 'Labrador', 3, 'Loves long walks');
INSERT INTO Walks (pet_id, walker_id, walk_date, walk_time, duration_minutes, status, payment_amount)
VALUES
(1, 1, '2026-04-17', '09:00:00', 30, 'Completed', 25.00),
(2, 2, '2026-04-17', '10:00:00', 20, 'Scheduled', 18.00),
(3, 3, '2026-04-17', '11:00:00', 45, 'Completed', 30.00),
(4, 1, '2026-04-18', '08:30:00', 25, 'Scheduled', 20.00);
SELECT * FROM Customers;
SELECT * FROM Walkers;
SELECT * FROM Pets;
SELECT * FROM Walks;