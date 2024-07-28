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

CREATE TABLE Product_Merchandise (
    product_id INT PRIMARY KEY,
    product_type VARCHAR(50),
    event_id INT,
    price DECIMAL(5, 2),
    quantity_available INT,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

INSERT INTO Product_Merchandise (product_id, product_type, event_id, price, quantity_available) VALUES
(1, 'T-shirt', 1, 20.00, 100),
(2, 'Poster', 2, 10.00, 200);

CREATE TABLE Venue (
    venue_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(150),
    capacity INT
);

INSERT INTO Venue (venue_id, name, location, capacity) VALUES
(1, 'Stadium A', '123 Main St', 50000),
(2, 'Arena B', '456 Elm St', 20000);

CREATE TABLE Seats (
    seat_id INT PRIMARY KEY,
    venue_id INT,
    seat_number VARCHAR(10),
    section VARCHAR(50),
    accessible BOOLEAN,
    row VARCHAR(10),
    FOREIGN KEY (venue_id) REFERENCES Venue(venue_id)
);

INSERT INTO Seats (seat_id, venue_id, seat_number, section, accessible, row) VALUES
(1, 1, 'A1', 'Section A', TRUE, 'Row 1'),
(2, 1, 'A2', 'Section A', FALSE, 'Row 1'),
(3, 2, 'B1', 'Section B', TRUE, 'Row 1'),
(4, 2, 'B2', 'Section B', FALSE, 'Row 1');

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
(1, 1, 100.00, 1, 'VIP'),
(2, 2, 50.00, 3, 'Standard');

CREATE TABLE GeneralAdmissionTicket (
    ticket_id INT PRIMARY KEY,
    access_time TIME,
    entry_gate INT,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

INSERT INTO GeneralAdmissionTicket (ticket_id, access_time, entry_gate) VALUES
(1, '18:00:00', 1);

CREATE TABLE ReservedTicket (
    ticket_id INT PRIMARY KEY,
    section CHAR(1),
    row INT,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

INSERT INTO ReservedTicket (ticket_id, section, row) VALUES
(2, 'B', 1);

CREATE TABLE VIPPackages (
    ticket_id INT PRIMARY KEY,
    product_id INT,
    vip_area_access BOOLEAN,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id),
    FOREIGN KEY (product_id) REFERENCES Product_Merchandise(product_id)
);

INSERT INTO VIPPackages (ticket_id, product_id, vip_area_access) VALUES
(1, 1, TRUE);

CREATE TABLE Waitlist (
    waitlist_id INT PRIMARY KEY,
    customer_id INT,
    event_id INT,
    position INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

INSERT INTO Waitlist (waitlist_id, customer_id, event_id, position) VALUES
(1, 1, 2, 1),
(2, 2, 1, 2);

CREATE TABLE Artist (
    artist_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);
INSERT INTO Artist (artist_id, name, email) VALUES
(1, 'Band X', 'bandx@example.com'),
(2, 'Singer Y', 'singery@example.com');

-- Composite entities
CREATE TABLE Customer_Ticket (
    customer_id INT,
    ticket_id INT,
    PRIMARY KEY (customer_id, ticket_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

INSERT INTO Customer_Ticket (customer_id, ticket_id) VALUES
(1, 1),
(2, 2);

CREATE TABLE Customer_Employees_Feedback (
    customer_id INT,
    employee_id INT,
    feedback_id INT,
    PRIMARY KEY (customer_id, employee_id, feedback_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

INSERT INTO Customer_Employees_Feedback (customer_id, employee_id, feedback_id) VALUES
(1, 1, 1),
(2, 2, 2);

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