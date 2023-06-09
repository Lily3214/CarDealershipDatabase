SELECT dealerships.name 
FROM dealerships 
JOIN inventory ON dealerships.dealership_id = inventory.dealership_id 
JOIN vehicles ON inventory.VIN = vehicles.VIN 
WHERE vehicles.make = 'Ford' AND vehicles.make = 'Ford' AND vehicles.model = 'Ford Explorer';