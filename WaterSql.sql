CREATE DATABASE water_delivery;

USE water_delivery;

CREATE TABLE drivers (
    driver_id INT AUTO_INCREMENT PRIMARY KEY,
    driver_name VARCHAR(255) NOT NULL,
    vehicle_id INT,
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);

CREATE TABLE vehicles (
    vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_name VARCHAR(255) NOT NULL,
    vehicle_type VARCHAR(50) NOT NULL
);

CREATE TABLE tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    driver_id INT,
    start_location_id INT,
    end_location_id INT,
    status ENUM('pending', 'ongoing', 'completed') NOT NULL DEFAULT 'pending',
    start_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    end_timestamp TIMESTAMP,
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id),
    FOREIGN KEY (start_location_id) REFERENCES delivery_locations(location_id),
    FOREIGN KEY (end_location_id) REFERENCES delivery_locations(location_id)
);

CREATE TABLE delivery_locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    delivery_name VARCHAR(255) NOT NULL,
    latitude DECIMAL(10, 6) NOT NULL,
    longitude DECIMAL(10, 6) NOT NULL
);
