-- step 4 no.4
USE cardealership;
SELECT dealerships.name 
FROM dealerships 
INNER JOIN inventory ON dealerships.dealership_id = inventory.dealership_id 
INNER JOIN vehicles ON inventory.VIN = vehicles.VIN
WHERE vehicles.VIN = '1HGD1234';