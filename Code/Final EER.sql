
-- Creating table structure for `neighbourhood`
CREATE TABLE IF NOT EXISTS neighbourhood (
    neighbourhood_id INT AUTO_INCREMENT PRIMARY KEY,
    neighbourhood VARCHAR(255) NOT NULL
);

-- Creating table structure for `room_type`
CREATE TABLE IF NOT EXISTS room_type (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_type VARCHAR(50) NOT NULL
);

-- Creating table structure for `host`
CREATE TABLE IF NOT EXISTS host (
    host_id INT AUTO_INCREMENT PRIMARY KEY,
    host_name VARCHAR(255) NOT NULL,
    host_listing_count INT NOT NULL
);

-- Creating table structure for `license`
CREATE TABLE IF NOT EXISTS license (
    license_id INT AUTO_INCREMENT PRIMARY KEY,
    license_status VARCHAR(255) NOT NULL
);

-- Creating table structure for `crime`
CREATE TABLE IF NOT EXISTS crime (
    crime_id INT AUTO_INCREMENT PRIMARY KEY,
    avg_crime_score VARCHAR(255) NOT NULL
);

-- Creating table structure for `listing`
CREATE TABLE IF NOT EXISTS listing (
    listing_id INT AUTO_INCREMENT PRIMARY KEY,
    neighbourhood_id INT,
    host_id INT,
    roomtype_id INT,
    crime_id INT,
    avg_price DECIMAL(10,2),
    quarter TINYINT,
    min_nights INT,
    review_per_month DECIMAL(5,2),
    occupancy DECIMAL(5,2),
    license_id INT,
    FOREIGN KEY (neighbourhood_id) REFERENCES neighbourhood(neighbourhood_id),
    FOREIGN KEY (host_id) REFERENCES host(host_id),
    FOREIGN KEY (roomtype_id) REFERENCES room_type(room_id),
    FOREIGN KEY (crime_id) REFERENCES crime(crime_id),
    FOREIGN KEY (license_id) REFERENCES license(license_id)
);

-- Now import the data from CSV files into each table

LOAD DATA INFILE 'neighbourhood.csv'
INTO TABLE neighbourhood
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'room_type.csv'
INTO TABLE room_type
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'host.csv'
INTO TABLE host
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'license.csv'
INTO TABLE license
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'crime.csv'
INTO TABLE crime
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'listing.csv'
INTO TABLE listing
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
