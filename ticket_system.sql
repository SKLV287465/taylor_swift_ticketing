DROP TABLE Waitlist;
DROP TABLE Feedback;
DROP TABLE Customers;
DROP TABLE VIPPackages;
DROP TABLE ReservedTicket;
DROP TABLE GeneralAdmissionTicket;
DROP TABLE Tickets;
DROP TABLE Merchandise;
DROP TABLE Events;
DROP TABLE Parking;
DROP TABLE Seats;
DROP TABLE Artist;
DROP TABLE Venue;

CREATE TABLE Venue (
    venue_id INT PRIMARY KEY,
    venue_name VARCHAR(100),
    location VARCHAR(150),
    capacity INT
);

INSERT INTO Venue (venue_id, venue_name, location, capacity) VALUES (1, 'Goblin Stadium', 'Joshuas Brain', 5000);
INSERT INTO Venue (venue_id, venue_name, location, capacity) VALUES (2, 'Bone Pit', 'Ethans Brain', 7500);
INSERT INTO Venue (venue_id, venue_name, location, capacity) VALUES (3, 'Barbarian Bowl', 'Stevens Brain', 10000);
INSERT INTO Venue (venue_id, venue_name, location, capacity) VALUES (4, 'PEKKAs Playhouse', 'Jakes Brain', 12000);
INSERT INTO Venue (venue_id, venue_name, location, capacity) VALUES (5, 'Spell Valley', 'Joshuas Brain', 9000);
INSERT INTO Venue (venue_id, venue_name, location, capacity) VALUES (6, 'Builders Workshop', 'Ethans Brain', 11000);
INSERT INTO Venue (venue_id, venue_name, location, capacity) VALUES (7, 'Royal Arena', 'Stevens Brain', 13000);
INSERT INTO Venue (venue_id, venue_name, location, capacity) VALUES (8, 'Frozen Peak', 'Jakes Brain', 14000);
INSERT INTO Venue (venue_id, venue_name, location, capacity) VALUES (9, 'Jungle Arena', 'Joshuas Brain', 15000);
INSERT INTO Venue (venue_id, venue_name, location, capacity) VALUES (10, 'Hog Mountain', 'Ethans Brain', 16000);

CREATE TABLE Artist (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(100),
    email VARCHAR(100)
);
INSERT INTO Artist (artist_id, artist_name, email) VALUES (1, 'Enrico Caruso', 'enricocaruso@diplopaints.com');
INSERT INTO Artist (artist_id, artist_name, email) VALUES (2, 'Nellie Melba', 'nelliemelba@diplopaints.com');
INSERT INTO Artist (artist_id, artist_name, email) VALUES (3, 'Jean de Reszke', 'jeandereszke@diplopaints.com');
INSERT INTO Artist (artist_id, artist_name, email) VALUES (4, 'Adelina Patti', 'adelinapatti@diplopaints.com');
INSERT INTO Artist (artist_id, artist_name, email) VALUES (5, 'Victor Maurel', 'victormaurel@diplopaints.com');
INSERT INTO Artist (artist_id, artist_name, email) VALUES (6, 'Emma Calvé', 'emmacalve@diplopaints.com');
INSERT INTO Artist (artist_id, artist_name, email) VALUES (7, 'Mattia Battistini', 'mattiabattistini@diplopaints.com');
INSERT INTO Artist (artist_id, artist_name, email) VALUES (8, 'Francesco Tamagno', 'francescotamagno@diplopaints.com');
INSERT INTO Artist (artist_id, artist_name, email) VALUES (9, 'Marcella Sembrich', 'marcellasembrich@diplopaints.com');
INSERT INTO Artist (artist_id, artist_name, email) VALUES (10, 'Pol Plançon', 'polplancon@diplopaints.com');

CREATE TABLE Parking (
    parking_spot_id INT PRIMARY KEY,
    parking_level INT,
    accessible INT,
    building VARCHAR(100),
    reserved_date DATE,
    venue_id INT,
    FOREIGN KEY (venue_id) REFERENCES Venue(venue_id)
);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (1, 1, 0, 'Spot1', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 1);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (2, 2, 1, 'Spot2', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 2);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (3, 3, 1, 'Spot3', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 3);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (4, 1, 0, 'Spot4', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 4);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (5, 2, 1, 'Spot5', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 5);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (6, 3, 0, 'Spot6', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 6);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (7, 1, 1, 'Spot7', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 7);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (8, 2, 0, 'Spot8', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 8);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (9, 3, 1, 'Spot9', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 9);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (10, 1, 1, 'Spot10', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 10);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (11, 2, 1, 'Spot11', TO_DATE('2024-03-16', 'YYYY-MM-DD'), 1);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (12, 3, 1, 'Spot12', TO_DATE('2024-03-16', 'YYYY-MM-DD'), 2);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (13, 1, 0, 'Spot13', TO_DATE('2024-03-16', 'YYYY-MM-DD'), 3);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (14, 2, 1, 'Spot14', TO_DATE('2024-03-16', 'YYYY-MM-DD'), 4);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (15, 3, 0, 'Spot15', TO_DATE('2024-03-16', 'YYYY-MM-DD'), 5);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (16, 1, 1, 'Spot16', TO_DATE('2024-03-16', 'YYYY-MM-DD'), 6);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (17, 2, 1, 'Spot17', TO_DATE('2024-03-16', 'YYYY-MM-DD'), 7);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (18, 3, 1, 'Spot18', TO_DATE('2024-03-16', 'YYYY-MM-DD'), 8);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (19, 1, 1, 'Spot19', TO_DATE('2024-03-16', 'YYYY-MM-DD'), 9);

INSERT INTO Parking (parking_spot_id, parking_level, accessible, building, reserved_date, venue_id) VALUES (20, 2, 0, 'Spot20', TO_DATE('2024-03-16', 'YYYY-MM-DD'), 10);

CREATE TABLE Events (
    event_id INT PRIMARY KEY,
    venue_id INT,
    event_name VARCHAR(100),
    event_date DATE,
    artist_id INT,
    FOREIGN KEY (venue_id) REFERENCES Venue(venue_id),
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
);

INSERT INTO Events (event_id, venue_id, event_name, event_date, artist_id) VALUES (1, 1, 'The Eras Tour', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 1);

INSERT INTO Events (event_id, venue_id, event_name, event_date, artist_id) VALUES (2, 2, 'Reputation Stadium Tour', TO_DATE('2024-08-24', 'YYYY-MM-DD'), 2);

INSERT INTO Events (event_id, venue_id, event_name, event_date, artist_id) VALUES (3, 3, '1989 World Tour', TO_DATE('2024-09-02', 'YYYY-MM-DD'), 3);

INSERT INTO Events (event_id, venue_id, event_name, event_date, artist_id) VALUES (4, 4, 'Red Tour', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 4);

INSERT INTO Events (event_id, venue_id, event_name, event_date, artist_id) VALUES (5, 5, 'Fearless Tour', TO_DATE('2024-10-28', 'YYYY-MM-DD'), 5);

INSERT INTO Events (event_id, venue_id, event_name, event_date, artist_id) VALUES (6, 6, 'Speak Now Tour', TO_DATE('2024-11-09', 'YYYY-MM-DD'), 6);

INSERT INTO Events (event_id, venue_id, event_name, event_date, artist_id) VALUES (7, 7, 'Lover Fest', TO_DATE('2024-07-01', 'YYYY-MM-DD'), 7);

INSERT INTO Events (event_id, venue_id, event_name, event_date, artist_id) VALUES (8, 8, 'Folklore Evermore Concert', TO_DATE('2024-08-01', 'YYYY-MM-DD'), 8);

INSERT INTO Events (event_id, venue_id, event_name, event_date, artist_id) VALUES (9, 9, 'Taylor Swift Live', TO_DATE('2024-06-06', 'YYYY-MM-DD'), 9);

INSERT INTO Events (event_id, venue_id, event_name, event_date, artist_id) VALUES (10, 10, 'Holiday Collection Tour', TO_DATE('2024-05-29', 'YYYY-MM-DD'), 10);
CREATE TABLE Seats (
    seat_id INT PRIMARY KEY,
    venue_id INT,
    section CHAR(1),
    accessible INT,
    seat_row INT,
    FOREIGN KEY (venue_id) REFERENCES Venue(venue_id)
);


INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (1, 1, 'W', 1, 1);
INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (2, 2, 'H', 0, 2);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (3, 3, 'A', 1, 3);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (4, 4, 'T', 0, 4);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (5, 5, 'E', 1, 5);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (6, 6, 'V', 0, 6);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (7, 7, 'E', 1, 7);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (8, 8, 'R', 0, 8);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (9, 9, 'E', 1, 9);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (10, 10, 'R', 0, 10);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (11, 1, 'W', 1, 1);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (12, 2, 'H', 0, 2);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (13, 3, 'A', 1, 3);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (14, 4, 'T', 0, 4);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (15, 5, 'E', 1, 5);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (16, 6, 'V', 0, 6);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (17, 7, 'E', 1, 7);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (18, 8, 'R', 0, 8);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (19, 9, 'E', 1, 9);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (20, 10, 'R', 0, 10);

INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (21, 1, 'W', 1, 1);
INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (22, 2, 'H', 0, 2);
INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (23, 3, 'A', 1, 3);
INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (24, 4, 'T', 0, 4);
INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (25, 5, 'E', 1, 5);
INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (26, 6, 'V', 0, 6);
INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (27, 7, 'E', 1, 7);
INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (28, 8, 'R', 0, 8);
INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (29, 9, 'E', 1, 9);
INSERT INTO Seats (seat_id, venue_id, section, accessible, seat_row) VALUES (30, 10, 'R', 0, 10);
CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY,
    event_id INT,
    price DECIMAL(5, 2),
    seat_id INT,
    ticket_type VARCHAR(50),
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (seat_id) REFERENCES Seats(seat_id)
);

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (1, 1, 50.00, 1, 'general admission');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (2, 2, 50.00, 2, 'general admission');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (3, 3, 50.00, 3, 'general admission');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (4, 4, 50.00, 4, 'general admission');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (5, 5, 50.00, 5, 'general admission');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (6, 6, 50.00, 6, 'general admission');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (7, 7, 50.00, 7, 'general admission');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (8, 8, 50.00, 8, 'general admission');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (9, 9, 50.00, 9, 'general admission');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (10, 10, 50.00, 10, 'general admission');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (11, 1, 75.00, 11, 'reserved');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (12, 2, 75.00, 12, 'reserved');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (13, 3, 75.00, 13, 'reserved');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (14, 4, 75.00, 14, 'reserved');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (15, 5, 75.00, 15, 'reserved');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (16, 6, 75.00, 16, 'reserved');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (17, 7, 75.00, 17, 'reserved');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (18, 8, 75.00, 18, 'reserved');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (19, 9, 75.00, 19, 'reserved');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (20, 10, 75.00, 20, 'reserved');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (21, 1, 150.00, 21, 'VIP package');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (22, 2, 150.00, 22, 'VIP package');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (23, 3, 150.00, 23, 'VIP package');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (24, 4, 150.00, 24, 'VIP package');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (25, 5, 150.00, 25, 'VIP package');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (26, 6, 150.00, 26, 'VIP package');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (27, 7, 150.00, 27, 'VIP package');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (28, 8, 150.00, 28, 'VIP package');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (29, 9, 150.00, 29, 'VIP package');

INSERT INTO Tickets (ticket_id, event_id, price, seat_id, ticket_type) VALUES (30, 10, 150.00, 30, 'VIP package');

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    phone_number CHAR(10),
    disability_status INT,
    disability_discount INT,
    email VARCHAR(100),
    parking_spot_id INT,
    ticket_id INT,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id), 
    FOREIGN KEY (parking_spot_id) REFERENCES Parking(parking_spot_id)
);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (1, 'Joshua Shim', '0481453999', 0, NULL, 'joshua.shim2004@gmail.com', 1, 1);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (2, 'Steven Huang', '0489382472', 1, 20, 'steven.huang@gmail.com', 2, 2);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (3, 'Ethan Cao', '0447387434', 1, 30, 'ethan.cao@gmail.com', 3, 3);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (4, 'Johnny Doe', '0423848928', 0, NULL, 'johnny.doe@gmail.com', 4, 4);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (5, 'Jane Street', '0481453999', 1, 20, 'jane.street@gmail.com', 5, 5);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (6, 'Hudson River', '0481434342', 0, NULL, 'hudson.river@gmail.com', 6, 6);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (7, 'Michael Johnson', '0499382998', 1, 25, 'michael.johnson@example.com', 7, 7);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (8, 'Olivia Smith', '0412345678', 0, 22, 'olivia.smith@example.com', 8, 8);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (9, 'William Brown', '0493847621', 1, 27, 'william.brown@example.com', 9, 9);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (10, 'Emma Davis', '0423765478', 1, 30, 'emma.davis@example.com', 10, 10);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (11, 'Min-Jun Kim', '0456789123', 1, 20, 'minjun.kim@diplo.com', 11, 11);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (12, 'Li Wei', '0456789124', 1, 25, 'li.wei@diplo.com', 12, 12);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (13, 'Jin Woo Park', '0456789125', 0, 22, 'jinwoo.park@diplo.com', 13, 13);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (14, 'Yun Zhang', '0456789126', 1, 28, 'yun.zhang@diplo.com', 14, 14);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (15, 'Hao Chen', '0456789127', 0, 21, 'hao.chen@diplo.com', 15, 15);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (16, 'Soo Jin Lee', '0456789128', 1, 30, 'soojin.lee@diplo.com', 16, 16);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (17, 'Fei Wong', '0456789129', 1, 29, 'fei.wong@diplo.com', 17, 17);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (18, 'Jae Hyun Choi', '0456789130', 1, 24, 'jaehyun.choi@diplo.com', 18, 18);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (19, 'Ming Li', '0456789131', 1, 27, 'ming.li@diplo.com', 19, 19);

INSERT INTO Customers (customer_id, customer_name, phone_number, disability_status, disability_discount, email, ticket_id, parking_spot_id) VALUES (20, 'Sun Hee Kwon', '0456789132', 0, 23, 'sunhee.kwon@diplo.com', 20, 20);



CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY,
    customer_id INT,
    event_id INT,
    rating INT,
    comments VARCHAR(500),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    CHECK (rating BETWEEN 1 AND 10)
);

INSERT INTO Feedback (feedback_id, customer_id, event_id, rating, comments) VALUES (1, 1, 1, 5, 'Great evnt, had a wnderful time!');

INSERT INTO Feedback (feedback_id, customer_id, event_id, rating, comments) VALUES (2, 2, 2, 4, 'Good orgnization, but the sound ws too loud.');

INSERT INTO Feedback (feedback_id, customer_id, event_id, rating, comments) VALUES (3, 3, 3, 3, 'Average expirence, could be imprved.');

INSERT INTO Feedback (feedback_id, customer_id, event_id, rating, comments) VALUES (4, 4, 4, 5, 'Loved it! Everything was prfect!');

INSERT INTO Feedback (feedback_id, customer_id, event_id, rating, comments) VALUES (5, 5, 5, 4, 'Well planned, bt a bit crowded.');

INSERT INTO Feedback (feedback_id, customer_id, event_id, rating, comments) VALUES (6, 6, 6, 2, 'Not satisfied, the event was unorgnized.');

INSERT INTO Feedback (feedback_id, customer_id, event_id, rating, comments) VALUES (7, 7, 7, 5, 'Fantastic prformance by the artists!');

INSERT INTO Feedback (feedback_id, customer_id, event_id, rating, comments) VALUES (8, 8, 8, 3, 'It was okay, nothng special.');

INSERT INTO Feedback (feedback_id, customer_id, event_id, rating, comments) VALUES (9, 9, 9, 4, 'Enjoyed the event, but food was xepensive.');

INSERT INTO Feedback (feedback_id, customer_id, event_id, rating, comments) VALUES (10, 10, 10, 5, 'Amazing experience, would recomnd to others!');


-- CREATE TABLE Employee (
--     employee_id INT PRIMARY KEY,
--     email VARCHAR(100),
--     emp_name VARCHAR(100),
--     role VARCHAR(20)
-- );

-- INSERT INTO Employee (employee_id, email, emp_name, role) VALUES (1, 'tesla@example.com', 'Tesla', 'customer service');

-- INSERT INTO Employee (employee_id, email, emp_name, role) VALUES (2, 'ford@example.com', 'Ford', 'customer service');

-- INSERT INTO Employee (employee_id, email, emp_name, role) VALUES (3, 'toyota@example.com', 'Toyota', 'customer service');

-- INSERT INTO Employee (employee_id, email, emp_name, role) VALUES (4, 'honda@example.com', 'Honda', 'customer service');

-- INSERT INTO Employee (employee_id, email, emp_name, role) VALUES (5, 'bmw@example.com', 'BMW', 'customer service');

-- INSERT INTO Employee (employee_id, email, emp_name, role) VALUES (6, 'audi@example.com', 'Audi', 'customer service');

-- INSERT INTO Employee (employee_id, email, emp_name, role) VALUES (7, 'chevrolet@example.com', 'Chevrolet', 'customer service');

-- INSERT INTO Employee (employee_id, email, emp_name, role) VALUES (8, 'nissan@example.com', 'Nissan', 'customer service');

-- INSERT INTO Employee (employee_id, email, emp_name, role) VALUES (9, 'mercedes@example.com', 'Mercedes', 'customer service');

-- INSERT INTO Employee (employee_id, email, emp_name, role) VALUES (10, 'volvo@example.com', 'Volvo', 'customer service');




CREATE TABLE Merchandise (
    merchandise_id INT PRIMARY KEY,
    product_type VARCHAR(50),
    event_id INT,
    price DECIMAL(5, 2),
    quantity_available INT,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

INSERT INTO Merchandise (merchandise_id, product_type, event_id, price, quantity_available) VALUES (1, 'Joshua Shim Autographed Poster', 1, 50.00, 200);

INSERT INTO Merchandise (merchandise_id, product_type, event_id, price, quantity_available) VALUES (2, 'Jake Stevens Limited Edition T-Shirt', 2, 25.99, 150);

INSERT INTO Merchandise (merchandise_id, product_type, event_id, price, quantity_available) VALUES (3, 'Steven Huang Concert Hoodie', 3, 40.00, 100);

INSERT INTO Merchandise (merchandise_id, product_type, event_id, price, quantity_available) VALUES (4, 'Ethan Cao Collector’s Mug', 4, 15.75, 300);

INSERT INTO Merchandise (merchandise_id, product_type, event_id, price, quantity_available) VALUES (5, 'Joshua Shim Signed Album', 5, 30.00, 120);

INSERT INTO Merchandise (merchandise_id, product_type, event_id, price, quantity_available) VALUES (6, 'Jake Stevens Tour Keychain', 6, 5.95, 400);

INSERT INTO Merchandise (merchandise_id, product_type, event_id, price, quantity_available) VALUES (7, 'Steven Huang Fan Wristband', 7, 3.50, 500);

INSERT INTO Merchandise (merchandise_id, product_type, event_id, price, quantity_available) VALUES (8, 'Ethan Cao Sticker Pack', 8, 2.75, 700);

INSERT INTO Merchandise (merchandise_id, product_type, event_id, price, quantity_available) VALUES (9, 'Joshua Shim Exclusive Notebook', 9, 10.99, 250);

INSERT INTO Merchandise (merchandise_id, product_type, event_id, price, quantity_available) VALUES (10, 'Jake Stevens Phone Case', 10, 18.20, 180);





CREATE TABLE GeneralAdmissionTicket (
    ticket_id INT PRIMARY KEY,
    access_time DATE,
    entry_gate INT,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

INSERT INTO GeneralAdmissionTicket (ticket_id, access_time, entry_gate) VALUES (1, TO_DATE('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1);

INSERT INTO GeneralAdmissionTicket (ticket_id, access_time, entry_gate) VALUES (2, TO_DATE('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2);

INSERT INTO GeneralAdmissionTicket (ticket_id, access_time, entry_gate) VALUES (3, TO_DATE('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3);

INSERT INTO GeneralAdmissionTicket (ticket_id, access_time, entry_gate) VALUES (4, TO_DATE('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4);

INSERT INTO GeneralAdmissionTicket (ticket_id, access_time, entry_gate) VALUES (5, TO_DATE('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5);

INSERT INTO GeneralAdmissionTicket (ticket_id, access_time, entry_gate) VALUES (6, TO_DATE('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 6);

INSERT INTO GeneralAdmissionTicket (ticket_id, access_time, entry_gate) VALUES (7, TO_DATE('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 7);

INSERT INTO GeneralAdmissionTicket (ticket_id, access_time, entry_gate) VALUES (8, TO_DATE('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 8);

INSERT INTO GeneralAdmissionTicket (ticket_id, access_time, entry_gate) VALUES (9, TO_DATE('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9);

INSERT INTO GeneralAdmissionTicket (ticket_id, access_time, entry_gate) VALUES (10, TO_DATE('2024-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 10);



CREATE TABLE ReservedTicket (
    ticket_id INT PRIMARY KEY,
    section CHAR(1),
    rt_row INT,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

INSERT INTO ReservedTicket (ticket_id, section, rt_row) VALUES (11, 'A', 1);

INSERT INTO ReservedTicket (ticket_id, section, rt_row) VALUES (12, 'B', 2);

INSERT INTO ReservedTicket (ticket_id, section, rt_row) VALUES (13, 'C', 3);

INSERT INTO ReservedTicket (ticket_id, section, rt_row) VALUES (14, 'D', 4);

INSERT INTO ReservedTicket (ticket_id, section, rt_row) VALUES (15, 'E', 5);

INSERT INTO ReservedTicket (ticket_id, section, rt_row) VALUES (16, 'F', 6);

INSERT INTO ReservedTicket (ticket_id, section, rt_row) VALUES (17, 'G', 7);

INSERT INTO ReservedTicket (ticket_id, section, rt_row) VALUES (18, 'H', 8);

INSERT INTO ReservedTicket (ticket_id, section, rt_row) VALUES (19, 'I', 9);

INSERT INTO ReservedTicket (ticket_id, section, rt_row) VALUES (20, 'J', 10);


CREATE TABLE VIPPackages (
    ticket_id INT PRIMARY KEY,
    merchandise_id INT,
    vip_area_access INT,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id),
    FOREIGN KEY (merchandise_id) REFERENCES Merchandise(merchandise_id)
);

INSERT INTO VIPPackages (ticket_id, merchandise_id, vip_area_access) VALUES (21, 1, 1);

INSERT INTO VIPPackages (ticket_id, merchandise_id, vip_area_access) VALUES (22, 2, 1);

INSERT INTO VIPPackages (ticket_id, merchandise_id, vip_area_access) VALUES (23, 3, 1);

INSERT INTO VIPPackages (ticket_id, merchandise_id, vip_area_access) VALUES (24, 4, 1);

INSERT INTO VIPPackages (ticket_id, merchandise_id, vip_area_access) VALUES (25, 5, 1);

INSERT INTO VIPPackages (ticket_id, merchandise_id, vip_area_access) VALUES (26, 6, 1);

INSERT INTO VIPPackages (ticket_id, merchandise_id, vip_area_access) VALUES (27, 7, 1);

INSERT INTO VIPPackages (ticket_id, merchandise_id, vip_area_access) VALUES (28, 8, 1);

INSERT INTO VIPPackages (ticket_id, merchandise_id, vip_area_access) VALUES (29, 9, 1);

INSERT INTO VIPPackages (ticket_id, merchandise_id, vip_area_access) VALUES (30, 10, 1);



CREATE TABLE Waitlist (
    waitlist_id INT PRIMARY KEY,
    customer_id INT,
    event_id INT,
    position INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

INSERT INTO Waitlist (waitlist_id, customer_id, event_id, position) VALUES (1, 11, 1, 1);

INSERT INTO Waitlist (waitlist_id, customer_id, event_id, position) VALUES (2, 12, 2, 2);

INSERT INTO Waitlist (waitlist_id, customer_id, event_id, position) VALUES (3, 13, 3, 3);

INSERT INTO Waitlist (waitlist_id, customer_id, event_id, position) VALUES (4, 14, 4, 4);

INSERT INTO Waitlist (waitlist_id, customer_id, event_id, position) VALUES (5, 15, 5, 5);

INSERT INTO Waitlist (waitlist_id, customer_id, event_id, position) VALUES (6, 16, 6, 6);

INSERT INTO Waitlist (waitlist_id, customer_id, event_id, position) VALUES (7, 17, 7, 7);

INSERT INTO Waitlist (waitlist_id, customer_id, event_id, position) VALUES (8, 18, 8, 8);

INSERT INTO Waitlist (waitlist_id, customer_id, event_id, position) VALUES (9, 19, 9, 9);

INSERT INTO Waitlist (waitlist_id, customer_id, event_id, position) VALUES (10, 20, 10, 10);


COMMIT;



-- a. Provide a list of events (the names).
SELECT event_name 
FROM EVENTS;
-- b. Provide a list of unique event dates.
SELECT DISTINCT event_date FROM EVENTS;
-- c. List all customer names (first and last name) who have reserved accessible parking
-- spots.
SELECT customer_name
FROM Customers
INNER JOIN Parking ON Customers.parking_spot_id = Parking.parking_spot_id
WHERE Parking.accessible = 1;
-- d. Count the number of different VIP packages and list the total number as 'Total VIP
-- Packages'.
SELECT COUNT(DISTINCT ticket_id) AS "Total VIP Packages" FROM VIPPackages;
-- e. Summarize the total number of ticket bookings and the total payment amount made
-- for each event. Show the events with the highest total associated payment amount
-- first
-- booking id doesn't exist anymore.
SELECT e.event_name, COUNT(t.ticket_id) AS total_bookings, SUM(t.price) AS total_payment
FROM Events e
INNER JOIN Tickets t ON e.event_id = t.event_id
GROUP BY e.event_name
ORDER BY total_payment DESC;
-- f. Summarize customer booking performance in the following way – for each
-- customer, show:
-- i. Their ID and name (show as “Full Name”),
-- ii. The total number of tickets they have booked,
-- iii. The total amount they have paid, and
-- iv. The number of different events they have attended.
-- problem TBS doesn't exist anymore
SELECT c.customer_id AS "Customer ID", c.customer_name AS "Full Name", COUNT(t.ticket_id) AS total_tickets, SUM(t.price) AS total_amount_paid, COUNT(DISTINCT t.event_id) AS different_events
FROM Customers c
INNER JOIN Tickets t ON c.ticket_id = t.ticket_id
GROUP BY c.customer_id, c.customer_name;
