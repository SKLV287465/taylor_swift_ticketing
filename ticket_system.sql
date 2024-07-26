CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone_number CHAR(10),
    disability_status BOOLEAN,
    email VARCHAR(100),
    parking_spot_id INT,
    FOREIGN KEY (parking_spot_id) REFERENCES Parking(parking_spot_id)
);

CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY,
    customer_id INT,
    event_id INT,
    rating INT,
    comments TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    email VARCHAR(100),
    name VARCHAR(100),
    role VARCHAR(20)
);

CREATE TABLE TicketBookingSystem (
    booking_id INT PRIMARY KEY,
    event_id INT,
    customer_id INT,
    ticket_id INT,
    booking_date DATE,
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

CREATE TABLE Events (
    event_id INT PRIMARY KEY,
    venue_id INT,
    event_name VARCHAR(100),
    event_date DATE,
    artist_id INT,
    FOREIGN KEY (venue_id) REFERENCES Venue(venue_id),
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
);

CREATE TABLE Product_Merchandise (
    product_id INT PRIMARY KEY,
    product_type VARCHAR(50),
    event_id INT,
    price DECIMAL(5, 2),
    quantity_available INT,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

CREATE TABLE Venue (
    venue_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(150),
    capacity INT
);

CREATE TABLE Seats (
    seat_id INT PRIMARY KEY,
    venue_id INT,
    seat_number VARCHAR(10),
    section VARCHAR(50),
    accessible BOOLEAN,
    row VARCHAR(10),
    FOREIGN KEY (venue_id) REFERENCES Venue(venue_id)
);

CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY,
    event_id INT,
    price DECIMAL(5, 2),
    seat_id INT,
    disability_discount INT,
    ticket_type VARCHAR(50),
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (seat_id) REFERENCES Seats(seat_id)
);

CREATE TABLE GeneralAdmissionTicket (
    ticket_id INT PRIMARY KEY,
    access_time TIME,
    entry_gate INT,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

CREATE TABLE ReservedTicket (
    ticket_id INT PRIMARY KEY,
    section CHAR(1),
    row INT,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

CREATE TABLE VIPPackages (
    ticket_id INT PRIMARY KEY,
    product_id INT,
    vip_area_access BOOLEAN,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id),
    FOREIGN KEY (product_id) REFERENCES Product_Merchandise(product_id)
);

CREATE TABLE Waitlist (
    waitlist_id INT PRIMARY KEY,
    customer_id INT,
    event_id INT,
    position INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

CREATE TABLE Artist (
    artist_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Composite entities
CREATE TABLE Customer_Ticket (
    customer_id INT,
    ticket_id INT,
    PRIMARY KEY (customer_id, ticket_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

CREATE TABLE Customer_Employees_Feedback (
    customer_id INT,
    employee_id INT,
    feedback_id INT,
    PRIMARY KEY (customer_id, employee_id, feedback_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

CREATE TABLE Parking (
    parking_spot_id INT PRIMARY KEY,
    level INT,
    accessible BOOLEAN,
    building VARCHAR(100),
    reserved_period_start TIME,
    reserved_period_end TIME
);