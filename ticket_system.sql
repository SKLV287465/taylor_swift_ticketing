CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone_number CHAR(10),
    disability_status BOOLEAN,
    disability_discount INT BETWEEN 20 AND 30,
    email VARCHAR(100),
    parking_spot_id INT,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id) 
    FOREIGN KEY (parking_spot_id) REFERENCES Parking(parking_spot_id)
);

INSERT INTO Customers (customer_id, name, phone_number, disability_status, disability_discount, email, parking_spot_id) VALUES
(1, 'John Doe', '1234567890', FALSE, NULL, 'johndoe@example.com', 1),
(2, 'Jane Smith', '0987654321', TRUE, 20, 'janesmith@example.com', 3);

CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY,
    customer_id INT,
    event_id INT,
    rating INT,
    comments TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

INSERT INTO Feedback (feedback_id, customer_id, event_id, rating, comments) VALUES
(1, 1, 1, 5, 'Amazing concert!'),
(2, 2, 2, 4, 'Great performance.');

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    email VARCHAR(100),
    name VARCHAR(100),
    role VARCHAR(20)
);

INSERT INTO Employees (employee_id, email, name, role) VALUES
(1, 'employee1@example.com', 'Alice', 'Manager'),
(2, 'employee2@example.com', 'Bob', 'Staff');

CREATE TABLE Events (
    event_id INT PRIMARY KEY,
    venue_id INT,
    event_name VARCHAR(100),
    event_date DATE,
    artist_id INT,
    FOREIGN KEY (venue_id) REFERENCES Venue(venue_id),
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
);

INSERT INTO Events (event_id, venue_id, event_name, event_date, artist_id) VALUES
(1, 1, 'Concert A', '2024-08-01', 1),
(2, 2, 'Concert B', '2024-09-15', 2);

CREATE TABLE Merchandise (
    merchandise_id INT PRIMARY KEY,
    product_type VARCHAR(50),
    event_id INT,
    price DECIMAL(5, 2),
    quantity_available INT,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

INSERT INTO Merchandise (merchandise_id, product_type, event_id, price, quantity_available) VALUES
(1, 'T-shirt', 1, 20.00, 100),
(2, 'Poster', 2, 10.00, 200),
(3, 'T-shirt 1', 1, 30.00, 100),
(4, 'T-shirt 2', 1, 50.00, 100),
(5, 'Pants', 1, 20.00, 100),
(6, 'Shorts', 1, 20.00, 100),
(7, 'Balls', 1, 20.00, 100),
(8, 'Bike', 1, 20.00, 100),
(9, 'Jacket', 1, 90.00, 100),
(10, 'Phone', 1, 20.00, 100),
(11, 'Bag', 1, 20.00, 100),
(12, 'Camera', 1, 120.00, 100);

CREATE TABLE Venue (
    venue_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(150),
    capacity INT
);

INSERT INTO Venue (venue_id, name, location, capacity) VALUES
(1, 'Stadium A', '123 Main St', 50000),
(2, 'Stadium B', '124 Main St', 500000),
(3, 'Stadium C', '125 Main St', 500001),
(4, 'Stadium D', '126 Main St', 500002),
(5, 'Stadium E', '127 Main St', 500003),
(6, 'Stadium F', '128 Main St', 500004),
(7, 'Stadium G', '129 Main St', 500005),
(8, 'Stadium H', '1231 Main St', 500006),
(9, 'Stadium I', '1232 Main St', 500007),
(10, 'Stadium J', '1233 Main St', 500008),
(12, 'Stadium K', '1234 Main St', 500009),
(13, 'Stadium L', '1235 Main St', 500000),
(24, 'Arena B', '456 Elm St', 20000);

CREATE TABLE Seats (
    seat_id INT PRIMARY KEY,
    venue_id INT,
    section CHAR(1),
    accessible BOOLEAN,
    row INT,
    FOREIGN KEY (venue_id) REFERENCES Venue(venue_id)
);

INSERT INTO Seats (seat_id, venue_id, section, accessible, row) VALUES
(1, 1, 'A', TRUE, 1),
(2, 1, 'A', FALSE, 1),
(3, 2, 'A', TRUE, 2),
(4, 2, 'B', FALSE, 1),
(5, 3, 'B', TRUE, 2),
(6, 3, 'C', FALSE, 1),
(7, 4, 'C', TRUE, 1),
(8, 4, 'D', FALSE, 1),
(9, 5, 'D', TRUE, 2),
(10, 5, 'D', FALSE, 2);

CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY,
    event_id INT,
    price DECIMAL(5, 2),
    seat_id INT,
    ticket_type VARCHAR(50),
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (seat_id) REFERENCES Seats(seat_id)
);

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES
(1, 201, 50.00, 1, 'general admission'),
(2, 201, 150.00, 2, 'VIP package'),
(3, 201, 75.00, 3, 'reserved'),
(4, 202, 50.00, 4, 'general admission'),
(5, 202, 150.00, 5, 'VIP package'),
(6, 202, 75.00, 6, 'reserved'),
(7, 203, 50.00, 7, 'general admission'),
(8, 203, 150.00, 8, 'VIP package'),
(9, 203, 75.00, 9, 'reserved'),
(10, 204, 50.00, 10, 'general admission');

CREATE TABLE GeneralAdmissionTicket (
    ticket_id INT PRIMARY KEY,
    access_time TIME,
    entry_gate INT,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

INSERT INTO GeneralAdmissionTicket (ticket_id, access_time, entry_gate) VALUES
(1, '10:00:00', 1),
(2, '10:30:00', 2),
(3, '11:00:00', 3),
(4, '11:30:00', 4),
(5, '12:00:00', 5),
(6, '12:30:00', 6),
(7, '13:00:00', 7),
(8, '13:30:00', 8),
(9, '14:00:00', 9),
(10, '14:30:00', 10);

CREATE TABLE ReservedTicket (
    ticket_id INT PRIMARY KEY,
    section CHAR(1),
    row INT,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

INSERT INTO ReservedTicket (ticket_id, section, row) VALUES
(1, 'A', 1),
(2, 'A', 2),
(3, 'B', 1),
(4, 'B', 2),
(5, 'C', 1),
(6, 'C', 2),
(7, 'D', 1),
(8, 'D', 2),
(9, 'E', 1),
(10, 'E', 2);

CREATE TABLE VIPPackages (
    ticket_id INT PRIMARY KEY,
    merchandise_id INT,
    vip_area_access BOOLEAN,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id),
    FOREIGN KEY (merchandise_id) REFERENCES Product_Merchandise(merchandise_id)
);

INSERT INTO VIPPackages (ticket_id, merchandise_id, vip_area_access) VALUES
(1, 101, TRUE),
(2, 102, TRUE),
(3, 103, TRUE),
(4, 104, TRUE),
(5, 105, TRUE),
(6, 106, TRUE),
(7, 107, TRUE),
(8, 108, TRUE),
(9, 109, TRUE),
(10, 110, TRUE);

CREATE TABLE Waitlist (
    waitlist_id INT PRIMARY KEY,
    customer_id INT,
    event_id INT,
    position INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

INSERT INTO Waitlist (waitlist_id, customer_id, event_id, position) VALUES
(1, 201, 301, 1),
(2, 202, 301, 2),
(3, 203, 301, 3),
(4, 204, 302, 1),
(5, 205, 302, 2),
(6, 206, 302, 3),
(7, 207, 303, 1),
(8, 208, 303, 2),
(9, 209, 303, 3),
(10, 210, 304, 1);

CREATE TABLE Artist (
    artist_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);
INSERT INTO Artist (artist_id, name, email) VALUES
(1, 'John Doe', 'john.doe@example.com'),
(2, 'Jane Smith', 'jane.smith@example.com'),
(3, 'Robert Brown', 'robert.brown@example.com'),
(4, 'Emily Johnson', 'emily.johnson@example.com'),
(5, 'Michael Williams', 'michael.williams@example.com'),
(6, 'Sarah Jones', 'sarah.jones@example.com'),
(7, 'David Garcia', 'david.garcia@example.com'),
(8, 'Laura Martinez', 'laura.martinez@example.com'),
(9, 'James Wilson', 'james.wilson@example.com'),
(10, 'Linda Taylor', 'linda.taylor@example.com');

-- -- Composite entities
-- CREATE TABLE Customer_Ticket (
--     customer_id INT,
--     ticket_id INT,
--     PRIMARY KEY (customer_id, ticket_id),
--     FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
--     FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
-- );

-- INSERT INTO Customer_Ticket (customer_id, ticket_id) VALUES
-- (1, 1),
-- (2, 2);

-- CREATE TABLE Customer_Employees_Feedback (
--     customer_id INT,
--     employee_id INT,
--     feedback_id INT,
--     PRIMARY KEY (customer_id, employee_id, feedback_id),
--     FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
--     FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
--     FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
-- );

-- INSERT INTO Customer_Employees_Feedback (customer_id, employee_id, feedback_id) VALUES
-- (1, 1, 1),
-- (2, 2, 2);

CREATE TABLE Parking (
    parking_spot_id INT PRIMARY KEY,
    level INT,
    accessible BOOLEAN,
    building VARCHAR(100),
    reserved_period_start TIME,
    reserved_period_end TIME
);

INSERT INTO Parking (parking_spot_id, level, accessible, building, reserved_period_start, reserved_period_end) VALUES
(1, 1, TRUE, 'Building A', '08:00:00', '18:00:00'),
(2, 1, FALSE, 'Building A', '08:00:00', '18:00:00'),
(3, 2, TRUE, 'Building B', '08:00:00', '18:00:00'),
(4, 2, FALSE, 'Building B', '08:00:00', '18:00:00');

-- a. Provide a list of events (the names).
SELECT event_name 
FROM EVENTS;
-- b. Provide a list of unique event dates.
SELECT DISTINCT event_date FROM EVENTS;
-- c. List all customer names (first and last name) who have reserved accessible parking
-- spots.
SELECT name FROM CUSTOMERS WHERE parking_spot_id IS NOT NULL;
-- d. Count the number of different VIP packages and list the total number as 'Total VIP
-- Packages'.
SELECT COUNT(DISTINCT ticket_id) AS 'Total VIP Packages'
FROM VIPPACKAGES;
-- e. Summarize the total number of ticket bookings and the total payment amount made
-- for each event. Show the events with the highest total associated payment amount
-- first
-- booking id doesn't exist anymore.
-- SELECT 
--     E.event_id,
--     E.event_name,
--     COUNT(TBS.booking_id) AS total_bookings,
--     SUM(T.price) AS total_payment_amount
-- FROM 
--     TicketBookingSystem TBS
-- JOIN 
--     Tickets T ON TBS.ticket_id = T.ticket_id
-- JOIN 
--     Events E ON TBS.event_id = E.event_id
-- GROUP BY 
--     E.event_id, E.event_name
-- ORDER BY 
--     total_payment_amount DESC;
-- f. Summarize customer booking performance in the following way – for each
-- customer, show:
-- i. Their ID and name (show as “Full Name”),
-- ii. The total number of tickets they have booked,
-- iii. The total amount they have paid, and
-- iv. The number of different events they have attended.
-- problem TBS doesn't exist anymore
-- SELECT 
--     C.customer_id,
--     C.name AS "Full Name",
--     COUNT(TBS.booking_id) AS total_tickets_booked,
--     SUM(T.price) AS total_amount_paid,
--     COUNT(DISTINCT TBS.event_id) AS total_events_attended
-- FROM 
--     Customers C
-- JOIN 
--     TicketBookingSystem TBS ON C.customer_id = TBS.customer_id
-- JOIN 
--     Tickets T ON TBS.ticket_id = T.ticket_id
-- GROUP BY 