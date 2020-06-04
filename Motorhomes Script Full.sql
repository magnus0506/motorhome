DROP DATABASE IF EXISTS autohomes;
CREATE DATABASE autohomes;


USE autohomes;

CREATE TABLE customers (
  customerId int(11) NOT NULL AUTO_INCREMENT,
  customerFirstName text,
  customerLastName text,
  customerBirthday text,
  customerEmail text,
  customerDriversLicense int,
  PRIMARY KEY (customerId)
);
INSERT INTO customers(customerId, customerFirstName, customerLastName, customerBirthday, customerEmail, customerDriversLicense)
VALUES(3, 'Anders', 'Andersen', '1995-02-28', 'aa@motorhomenordic.dk', 2934992);

CREATE TABLE employees (
  employeeId int(11) NOT NULL AUTO_INCREMENT,
  employeeFirstName text,
  employeeLastName text,
  employeeBirthday text,
  employeeEmail text,
  employeeJob text,
  PRIMARY KEY (employeeId)
);



INSERT INTO employees(employeeFirstName, employeeLastName, employeeBirthday, employeeEmail, employeeJob)
VALUES
('Tim', 'Hansen', '1992-03-05', 'thansen-nmh@gmail.com', 'Sales Assistant'),
('Sofie', 'Larsen', '1983-01-05', 'slarsen-nmh@gmail.com', 'Sales Assistant'),
('Phillip', 'Pedersen', '1990-03-02', 'ppedersen-nmh@gmail.com', 'Sales Assistant'),
('Louise', 'Mortensen', '1980-03-22', 'lmortensen-nmh@gmail.com', 'Sales Assistant'),
('Magrethe', 'Petersen', '1977-11-25', 'mpetersen-nmh@gmail.com', 'Cleaning Staff'),
('Torben', 'Johansen', '1992-01-15', 'ajohansen-nmh@gmail.com', 'Cleaning Staff'),
('Lasse', 'Hansen', '1983-11-11', 'lhansen-nmh@gmail.com', 'Auto Mechanic'),
('Birgitte', 'Rosen', '1965-10-23', 'brosen-nmh@gmail.com', 'Bookkeeper');

CREATE TABLE motorhomes (
  motorhomeId int(11) NOT NULL AUTO_INCREMENT,
  modelName text,
  PRIMARY KEY (motorhomeId)
);
INSERT INTO motorhomes(motorhomeId, modelName)
VALUES
(1, 'Adria Sonic'),
(2, 'Adria Sonic'),
(3, 'Adria Sonic'),
(4, 'Adria Sonic'),
(5, 'Adria Matrix'),
(6, 'Adria Matrix'),
(7, 'Adria Matrix'),
(8, 'Adria Matrix'),
(9, 'Adria Coral'),
(10, 'Adria Coral'),
(11, 'Adria Coral'),
(12, 'Adria Coral'),
(13, 'KNAUS Sun'),
(14, 'KNAUS Sun'),
(15, 'KNAUS Sun'),
(16, 'KNAUS Sun'),
(17, 'LMC Element'),
(18, 'LMC Element'),
(19, 'LMC Element'),
(20, 'LMC Element'),
(21, 'LMC Comfort'),
(22, 'LMC Comfort'),
(23, 'LMC Comfort'),
(24, 'LMC Comfort'),
(25, 'Adria Compact'),
(26, 'Adria Compact'),
(27, 'Adria Compact'),
(28, 'Adria Compact'),
(29, 'Freedom Elite'),
(30, 'Freedom Elite'),
(31, 'Freedom Elite'),
(32, 'Freedom Elite');


CREATE TABLE motorhomemodels (
  modelName text,
  pricePerDay int(11) DEFAULT NULL,
  maxSeats int(11) DEFAULT NULL
);



INSERT INTO motorhomemodels(modelName, pricePerDay, maxseats)
VALUES
('Adria Sonic', 800, 6),
('Adria Matrix', 600, 4),
('Adria Coral', 500, 3),
('KNAUS Sun', 450, 3),
('LMC Element', 400, 2),
('LMC Comfort', 580, 5),
('Adria Compact', 430, 4),
('Freedom Elite', 350, 2);


CREATE TABLE rentalpayment (
  rentalId int(11) NOT NULL AUTO_INCREMENT,
  pricePerDay int(11) DEFAULT NULL,
  dropoffPrice int(11) DEFAULT NULL,
  accessoriesPrice int(11) DEFAULT NULL,
  cancellationPrice int(11) DEFAULT NULL,
  fuelPrice int(11) DEFAULT NULL,
  kilometersDrivenPrice int(11) DEFAULT NULL,
  totalPrice int(11) DEFAULT NULL,
  PRIMARY KEY (`rentalId`)
);



CREATE TABLE rentals (
  rentalId int(11) NOT NULL AUTO_INCREMENT,
  motorhomeId int(11) DEFAULT NULL,
  totalDays int(11) DEFAULT NULL,
  pickupDate text DEFAULT NULL,
  endDate text DEFAULT NULL,
  customerId int(11) DEFAULT NULL,
  cancelled int(11) DEFAULT NULL,
  PRIMARY KEY (rentalId)
);
INSERT INTO rentals(rentalId, motorhomeId, totalDays, pickupDate, endDate, customerId, cancelled)
VALUES(40, 1, 10, '2000-01-02', '2000-01-16', 3, null),
(41, 2, 10, '2000-01-02', '2000-01-16', 3, NULL),
(42, 3, 10, '2000-01-02', '2000-01-16', 3, NULL ),
(43, 4, 10, '2000-01-02', '2000-01-16', 3, NULL),
(44, 5, 10, '2000-01-02', '2000-01-16', 3, NULL),
('45', '6', 10, '2000-01-02', '2000-01-16', 3, NULL),
('46', '7', '10', '2000-01-02', '2000-01-16', '3', NULL),
('47', '8', '10', '2000-01-02', '2000-01-16', '3', NULL),
('48', '9', '10', '2000-01-02', '2000-01-16', '3', NULL),
('49', '10', '10', '2000-01-02', '2000-01-16', '3', NULL),
('50', '11', '10', '2000-01-02', '2000-01-16', '3', NULL),
('51', '12', '10', '2000-01-02', '2000-01-16', '3', NULL),
('52', '13', '10', '2000-01-02', '2000-01-16', '3', NULL),
('53', '14', '10', '2000-01-02', '2000-01-16', '3', NULL),
('54', '15', '10', '2000-01-02', '2000-01-16', '3', NULL),
('55', '16', '10', '2000-01-02', '2000-01-16', '3', NULL),
('56', '17', '10', '2000-01-02', '2000-01-16', '3', NULL),
('57', '18', '10', '2000-01-02', '2000-01-16', '3', NULL),
('58', '19', '10', '2000-01-02', '2000-01-16', '3', NULL),
('59', '20', '10', '2000-01-02', '2000-01-16', '3', NULL),
('60', '21', '10', '2000-01-02', '2000-01-16', '3', NULL),
('61', '22', '10', '2000-01-02', '2000-01-16', '3', NULL),
('62', '23', '10', '2000-01-02', '2000-01-16', '3', NULL),
('63', '24', '10', '2000-01-02', '2000-01-16', '3', NULL),
('64', '25', '10', '2000-01-02', '2000-01-16', '3', NULL),
('65', '26', '10', '2000-01-02', '2000-01-16', '3', NULL),
('66', '27', '10', '2000-01-02', '2000-01-16', '3', NULL),
('67', '28', '10', '2000-01-02', '2000-01-16', '3', NULL),
('68', '29', '10', '2000-01-02', '2000-01-16', '3', NULL),
('69', '30', '10', '2000-01-02', '2000-01-16', '3', NULL),
('70', '31', '10', '2000-01-02', '2000-01-16', '3', NULL),
('71', '32', '10', '2000-01-02', '2000-01-16', '3', NULL);



CREATE TABLE users(
    user_id int not null primary key,
    username varchar(50) not null,
    password varchar(50) not null,
    enabled boolean not null
);

create table authorities (
user_id int not null,
username varchar(50) not null,
authority varchar(50) not null,
constraint fk_authorities_users foreign key(user_id) references users(user_id)
);
create unique index ix_auth_username on authorities (username, authority);

insert into users (user_id, username, password, enabled) values (1, "admin", "admin123", 1);
insert into authorities (user_id, username, authority) values (1, "admin", "ROLE_ADMIN");

ALTER TABLE autohomes.rentals
AUTO_INCREMENT = 100 ;
ALTER TABLE autohomes.rentalpayment
AUTO_INCREMENT = 100 ;


INSERT INTO rentals(motorhomeId, totalDays, pickupDate, endDate, customerId)
VALUES
(1, 10, '2020-07-10', '2020-07-20', 3),
(5, 10, '2020-08-18', '2020-08-28', 3),
(9, 5, '2020-07-10', '2020-07-15', 3),
(13, 15, '2020-09-05', '2020-09-20', 3),
(17, 20, '2020-09-02', '2020-09-22', 3),
(22, 7, '2020-07-03', '2020-07-10', 3),
(27, 10, '2020-08-05', '2020-08-15', 3),
(31, 14, '2020-07-06', '2020-07-20', 3);

INSERT INTO rentalpayment (pricePerDay, totalPrice)
VALUES
(800, 8000),
(600, 6000),
(500, 2500),
(450, 6750),
(400, 8000),
(580, 4060),
(430, 4300),
(350, 4900);

ALTER TABLE autohomes.rentals
AUTO_INCREMENT = 120 ;

ALTER TABLE autohomes.rentalpayment
AUTO_INCREMENT = 120 ;