DROP DATABASE IF exists 
CarDealership;

CREATE DATABASE CarDealership;
USE cardealership;

-- Step 2 create table
CREATE TABLE dealerships (
  dealership_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  address VARCHAR(50),
  phone VARCHAR(12)
);
CREATE TABLE vehicles (
  VIN VARCHAR(17) PRIMARY KEY,
  make VARCHAR(50),
  model VARCHAR(50),
  SOLD BOOLEAN
);

CREATE TABLE inventory (
dealership_id INT NOT NULL,
VIN VARCHAR(17),
FOREIGN KEY (dealership_id) REFERENCES dealerships (dealership_id),
FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

CREATE TABLE sales_contracts (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  year VARCHAR(50),
  purchasePrice VARCHAR(50),
  VIN VARCHAR(17),
  dealer_name VARCHAR(17),
  FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

-- Step 3 Populate each of your tables with sample data
-- dealership data
INSERT INTO dealerships (name, address, phone)
VALUES ("Leonardo", "555 Pine Rd", "501-222-5236"),
("Francesco", "457 Andrea Rd", "201-748-7895"),
("Alessandro", "555 Thomas Rd", "874-456-1235");


-- vehicles data
INSERT INTO vehicles (VIN, make, model, SOLD)
VALUES ("1HGD1234", "Ford", "Ford Explorer", true),
("252DGH5", "Hyundai", "Santafe", false),
("52G4H4H", "Honda", "Odyssey", true);

-- inventory data
INSERT INTO inventory (dealership_id, VIN)
VALUES (1, "1HGD1234"),
(2, "252DGH5"),
(3, "52G4H4H");

-- sales_contracts
INSERT INTO sales_contracts (id, year, purchasePrice, VIN, dealer_name)
VALUES (8545, "2023-06-09", 7900.00, "1HGD1234", "Leonardo"),
(1235, "2017-06-15", 2320.00, "52G4H4H", "Francesco");











