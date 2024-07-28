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
(1, 'Joshua Shim', '0481453999', FALSE, NULL, 'joshua.shim2004@gmail.com', 1),
(2, 'Steven Huang', '0489382472', TRUE, 20, 'steven.hunag@gmail.com', 2, 'jake stevems', '0472398122', False, NULL, 'jake.stevens@gmail.com', 2),
(3, 'Ethan Cao', '0447387434', TRUE, 30, 'ethan.@gmail.com', 3),
(4, 'johnny doe', '0423848928', FALSE, NULL, 'jonny.sdoe@gmaiol.com', 4),
(5, 'jane street', '0481453999', TRUE, 20, 'jane.street@gmail.com', 5),
(6, 'hudson ruiver', '0481434342', FALSE, NULL, 'hudson@gmail.com', 6),
(7, 'Micahel Jonson', '0499382998', TRUE, 25, 'micahel.jonson@example.com', 7),
(8, 'Olvia Smih', '0412345678', FALSE, 22, 'olvia.smih@example.com', 8),
(9, 'Willam Bron', '0493847621', TRUE, 27, 'willam.bron@example.com', 9),
(10, 'Ema Dvis', '0423765478', TRUE, 30, 'ema.dvis@example.com', 10),
(11, 'Min-Jun Kim', '0456789123', TRUE, 20, 'minjun.kim@diplo.com'),
(12, 'Li Wei', '0456789124', TRUE, 25, 'li.wei@diplo.com'),
(13, 'Jin Woo Park', '0456789125', FALSE, 22, 'jinwoo.park@diplo.com'),
(14, 'Yun Zhang', '0456789126', TRUE, 28, 'yun.zhang@diplo.com'),
(15, 'Hao Chen', '0456789127', FALSE, 21, 'hao.chen@diplo.com'),
(16, 'Soo Jin Lee', '0456789128', TRUE, 30, 'soojin.lee@diplo.com'),
(17, 'Fei Wong', '0456789129', TRUE, 29, 'fei.wong@diplo.com'),
(18, 'Jae Hyun Choi', '0456789130', TRUE, 24, 'jaehyun.choi@diplo.com'),
(19, 'Ming Li', '0456789131', TRUE, 27, 'ming.li@diplo.com'),
(20, 'Sun Hee Kwon', '0456789132', FALSE, 23, 'sunhee.kwon@diplo.com');

CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY,
    customer_id INT,
    event_id INT,
    rating INT BETWEEN 1 AND 10,
    comments TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

INSERT INTO Feedback (feedback_id, customer_id, event_id, rating, comments) VALUES
(1, 1, 1, 5, 'Great evnt, had a wnderful time!'),
(2, 2, 2, 4, 'Good orgnization, but the sound ws too loud.'),
(3, 3, 3, 3, 'Average expirence, could be imprved.'),
(4, 4, 4, 5, 'Loved it! Everything was prfect!'),
(5, 5, 5, 4, 'Well planned, bt a bit crowded.'),
(6, 6, 6, 2, 'Not satisfied, the event was unorgnized.'),
(7, 7, 7, 5, 'Fantastic prformance by the artists!'),
(8, 8, 8, 3, 'It was okay, nothng special.'),
(9, 9, 9, 4, 'Enjoyed the event, but food was xepensive.'),
(10, 10, 10, 5, 'Amazing experience, would recomnd to others!');

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    email VARCHAR(100),
    name VARCHAR(100),
    role VARCHAR(20)
);

INSERT INTO Employees (employee_id, email, name, role) VALUES
(1, 'tesla@example.com', 'Tesla', 'customer service'),
(2, 'ford@example.com', 'Ford', 'customer service'),
(3, 'toyota@example.com', 'Toyota', 'customer service'),
(4, 'honda@example.com', 'Honda', 'customer service'),
(5, 'bmw@example.com', 'BMW', 'customer service'),
(6, 'audi@example.com', 'Audi', 'customer service'),
(7, 'chevrolet@example.com', 'Chevrolet', 'customer service'),
(8, 'nissan@example.com', 'Nissan', 'customer service'),
(9, 'mercedes@example.com', 'Mercedes', 'customer service'),
(10, 'volvo@example.com', 'Volvo', 'customer service');

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
(1, 1, 'Barbarian King', '2024-03-15', 1),
(2, 2, 'Archer Queen', '2024-08-24', 2),
(3, 3, 'Grand Warden', '2024-09-02', 3),
(4, 4, 'Royal Champion', '2024-01-01', 4),
(5, 5, 'Witch', '2024-10-28', 5),
(6, 6, 'Wizard', '2024-11-09', 6),
(7, 7, 'Lava Hound', '2024-07-01', 7),
(8, 8, 'Electro Dragon', '2024-08-01', 8),
(9, 9, 'P.E.K.K.A', '2024-06-06', 9),
(10, 10, 'Golem', '2024-05-29', 10);

CREATE TABLE Merchandise (
    merchandise_id INT PRIMARY KEY,
    product_type VARCHAR(50),
    event_id INT,
    price DECIMAL(5, 2),
    quantity_available INT,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

INSERT INTO Merchandise (merchandise_id, product_type, event_id, price, quantity_available) VALUES
(1, 'Joshua Shim Autographed Poster', 1, 50.00, 200),
(2, 'Jake Stevens Limited Edition T-Shirt', 2, 25.99, 150),
(3, 'Steven Huang Concert Hoodie', 3, 40.00, 100),
(4, 'Ethan Cao Collector’s Mug', 4, 15.75, 300),
(5, 'Joshua Shim Signed Album', 5, 30.00, 120),
(6, 'Jake Stevens Tour Keychain', 6, 5.95, 400),
(7, 'Steven Huang Fan Wristband', 7, 3.50, 500),
(8, 'Ethan Cao Sticker Pack', 8, 2.75, 700),
(9, 'Joshua Shim Exclusive Notebook', 9, 10.99, 250),
(10, 'Jake Stevens Phone Case', 10, 18.20, 180);

CREATE TABLE Venue (
    venue_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(150),
    capacity INT
);

INSERT INTO Venue (venue_id, name, location, capacity) VALUES
(1, 'Goblin Stadium', 'Joshuas Brain', 5000),
(2, 'Bone Pit', 'Ethans Brain', 7500),
(3, 'Barbarian Bowl', 'Stevens Brain', 10000),
(4, 'PEKKAs Playhouse', 'Jakes Brain', 12000),
(5, 'Spell Valley', 'Joshuas Brain', 9000),
(6, 'Builders Workshop', 'Ethans Brain', 11000),
(7, 'Royal Arena', 'Stevens Brain', 13000),
(8, 'Frozen Peak', 'Jakes Brain', 14000),
(9, 'Jungle Arena', 'Joshuas Brain', 15000),
(10, 'Hog Mountain', 'Ethans Brain', 16000);

CREATE TABLE Seats (
    seat_id INT PRIMARY KEY,
    venue_id INT,
    section CHAR(1),
    accessible BOOLEAN,
    row INT,
    FOREIGN KEY (venue_id) REFERENCES Venue(venue_id)
);

INSERT INTO Seats (seat_id, venue_id, section, accessible, row) VALUES
(1, 1, 'W', TRUE, 1),
(2, 2, 'H', FALSE, 2),
(3, 3, 'A', TRUE, 3),
(4, 4, 'T', FALSE, 4),
(5, 5, 'E', TRUE, 5),
(6, 6, 'V', FALSE, 6),
(7, 7, 'E', TRUE, 7),
(8, 8, 'R', FALSE, 8),
(9, 9, 'E', TRUE, 9),
(10, 10, 'R', FALSE, 10),
(11, 1, 'W', TRUE, 1),
(12, 2, 'H', FALSE, 2),
(13, 3, 'A', TRUE, 3),
(14, 4, 'T', FALSE, 4),
(15, 5, 'E', TRUE, 5),
(16, 6, 'V', FALSE, 6),
(17, 7, 'E', TRUE, 7),
(18, 8, 'R', FALSE, 8),
(19, 9, 'E', TRUE, 9),
(20, 10, 'R', FALSE, 10),
(21, 1, 'W', TRUE, 1),
(22, 2, 'H', FALSE, 2),
(23, 3, 'A', TRUE, 3),
(24, 4, 'T', FALSE, 4),
(25, 5, 'E', TRUE, 5),
(26, 6, 'V', FALSE, 6),
(27, 7, 'E', TRUE, 7),
(28, 8, 'R', FALSE, 8),
(29, 9, 'E', TRUE, 9),
(30, 10, 'R', FALSE, 10);

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
(1, 1, 50.00, 1, 'general admission'),
(2, 2, 50.00, 2, 'general admission'),
(3, 3, 50.00, 3, 'general admission'),
(4, 4, 50.00, 4, 'general admission'),
(5, 5, 50.00, 5, 'general admission'),
(6, 6, 50.00, 6, 'general admission'),
(7, 7, 50.00, 7, 'general admission'),
(8, 8, 50.00, 8, 'general admission'),
(9, 9, 50.00, 9, 'general admission'),
(10, 10, 50.00, 10, 'general admission'),
(11, 1, 75.00, 11, 'reserved'),
(12, 2, 75.00, 12, 'reserved'),
(13, 3, 75.00, 13, 'reserved'),
(14, 4, 75.00, 14, 'reserved'),
(15, 5, 75.00, 15, 'reserved'),
(16, 6, 75.00, 16, 'reserved'),
(17, 7, 75.00, 17, 'reserved'),
(18, 8, 75.00, 18, 'reserved'),
(19, 9, 75.00, 19, 'reserved'),
(20, 10, 75.00, 20, 'reserved'),
(21, 1, 150.00, 21, 'VIP package'),
(22, 2, 150.00, 22, 'VIP package'),
(23, 3, 150.00, 23, 'VIP package'),
(24, 4, 150.00, 24, 'VIP package'),
(25, 5, 150.00, 25, 'VIP package'),
(26, 6, 150.00, 26, 'VIP package'),
(27, 7, 150.00, 27, 'VIP package'),
(28, 8, 150.00, 28, 'VIP package'),
(29, 9, 150.00, 29, 'VIP package'),
(30, 10, 150.00, 30, 'VIP package');

CREATE TABLE GeneralAdmissionTicket (
    ticket_id INT PRIMARY KEY,
    access_time TIME,
    entry_gate INT,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

INSERT INTO GeneralAdmissionTicket (ticket_id, access_time, entry_gate) VALUES
(1, '00:00:00', 1),
(2, '00:00:00', 2),
(3, '00:00:00', 3),
(4, '00:00:00', 4),
(5, '00:00:00', 5),
(6, '00:00:00', 6),
(7, '00:00:00', 7),
(8, '00:00:00', 8),
(9, '00:00:00', 9),
(10, '00:00:00', 10);

CREATE TABLE ReservedTicket (
    ticket_id INT PRIMARY KEY,
    section CHAR(1),
    row INT,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

INSERT INTO ReservedTicket (ticket_id, section, row) VALUES
(11, 'A', 1),
(12, 'B', 2),
(13, 'C', 3),
(14, 'D', 4),
(15, 'E', 5),
(16, 'F', 6),
(17, 'G', 7),
(18, 'H', 8),
(19, 'I', 9),
(20, 'J', 10);

CREATE TABLE VIPPackages (
    ticket_id INT PRIMARY KEY,
    merchandise_id INT,
    vip_area_access BOOLEAN,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id),
    FOREIGN KEY (merchandise_id) REFERENCES Product_Merchandise(merchandise_id)
);

INSERT INTO VIPPackages (ticket_id, merchandise_id, vip_area_access) VALUES
(21, 1, TRUE),
(22, 2, TRUE),
(23, 3, TRUE),
(24, 4, TRUE),
(25, 5, TRUE),
(26, 6, TRUE),
(27, 7, TRUE),
(28, 8, TRUE),
(29, 9, TRUE),
(30, 10, TRUE);

CREATE TABLE Waitlist (
    waitlist_id INT PRIMARY KEY,
    customer_id INT,
    event_id INT,
    position INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

INSERT INTO Waitlist (waitlist_id, customer_id, event_id, position) VALUES
(1, 11, 1, 1),
(2, 12, 2, 2),
(3, 13, 3, 3),
(4, 14, 4, 4),
(5, 15, 5, 5),
(6, 16, 6, 6),
(7, 17, 7, 7),
(8, 18, 8, 8),
(9, 19, 9, 9),
(10, 20, 10, 10);

CREATE TABLE Artist (
    artist_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);
INSERT INTO Artist (artist_id, name, email) VALUES
(1, 'Antique White USA', 'antiquewhiteusa@diplo.com'),
(2, 'Natural White', 'naturalwhite@diplo.com'),
(3, 'Lexicon', 'lexicon@diplo.com'),
(4, 'Hog Bristle', 'hogbristle@diplo.com'),
(5, 'Whisper White', 'whisperwhite@diplo.com'),
(6, 'Spanish Olive', 'spanisholive@diplo.com'),
(7, 'Deep Aqua', 'deepaqua@diplo.com'),
(8, 'Black Caviar', 'blackcaviar@diplo.com'),
(9, 'Green Mist', 'greenmist@diplo.com'),
(10, 'Classic Cream', 'classiccream@diplo.com');

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
(1, 1, FALSE, 'Biceps', '08:00:00', '18:00:00'),
(2, 2, TRUE, 'Triceps', '08:00:00', '18:00:00'),
(3, 3, TRUE, 'Deltoid', '08:00:00', '18:00:00'),
(4, 1, FALSE, 'Pectoralis Major', '08:00:00', '18:00:00'),
(5, 2, TRUE, 'Latissimus Dorsi', '08:00:00', '18:00:00'),
(6, 3, FALSE, 'Rectus Abdominis', '08:00:00', '18:00:00'),
(7, 1, TRUE, 'Quadriceps', '08:00:00', '18:00:00'),
(8, 2, FALSE, 'Hamstring', '08:00:00', '18:00:00'),
(9, 3, TRUE, 'Gluteus Maximus', '08:00:00', '18:00:00'),
(10, 1, TRUE, 'Gastrocnemius', '08:00:00', '18:00:00'),
(11, 2, TRUE, 'Soleus', '08:00:00', '18:00:00'),
(12, 3, TRUE, 'Tibialis Anterior', '08:00:00', '18:00:00'),
(13, 1, FALSE, 'Obliques', '08:00:00', '18:00:00'),
(14, 2, TRUE, 'Adductor Magnus', '08:00:00', '18:00:00'),
(15, 3, FALSE, 'Sartorius', '08:00:00', '18:00:00'),
(16, 1, TRUE, 'Piriformis', '08:00:00', '18:00:00'),
(17, 2, TRUE, 'Psoas Major', '08:00:00', '18:00:00'),
(18, 3, TRUE, 'Iliacus', '08:00:00', '18:00:00'),
(19, 1, TRUE, 'Infraspinatus', '08:00:00', '18:00:00'),
(20, 2, FALSE, 'Teres Major', '08:00:00', '18:00:00');

-- a. Provide a list of events (the names).
SELECT event_name 
FROM EVENTS;
-- b. Provide a list of unique event dates.
SELECT DISTINCT event_date FROM EVENTS;
-- c. List all customer names (first and last name) who have reserved accessible parking
-- spots.
SELECT name
FROM Customers
JOIN Parking ON Customers.parking_spot_id = Parking.parking_spot_id
WHERE Parking.accessible = TRUE;
-- d. Count the number of different VIP packages and list the total number as 'Total VIP
-- Packages'.
SELECT COUNT(DISTINCT ticket_id) AS 'Total VIP Packages'
FROM VIPPACKAGES;
-- e. Summarize the total number of ticket bookings and the total payment amount made
-- for each event. Show the events with the highest total associated payment amount
-- first
-- booking id doesn't exist anymore.
SELECT e.event_name, COUNT(t.ticket_id) AS total_bookings, SUM(t.price) AS total_payment
FROM Events e
JOIN Tickets t ON e.event_id = t.event_id
GROUP BY e.event_name
ORDER BY total_payment DESC;
-- f. Summarize customer booking performance in the following way – for each
-- customer, show:
-- i. Their ID and name (show as “Full Name”),
-- ii. The total number of tickets they have booked,
-- iii. The total amount they have paid, and
-- iv. The number of different events they have attended.
-- problem TBS doesn't exist anymore
SELECT c.customer_id, c.name AS "Full Name", COUNT(t.ticket_id) AS total_tickets, SUM(t.price) AS total_amount_paid, COUNT(DISTINCT t.event_id) AS different_events
FROM Customers c
JOIN Tickets t ON c.ticket_id = t.ticket_id
GROUP BY c.customer_id, c.name;
