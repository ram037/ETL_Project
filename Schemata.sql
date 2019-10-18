CREATE TABLE fish (
Species CHAR(3),
scientific_name VARCHAR(225),
family VARCHAR(225),
PRIMARY KEY (Species)
)

CREATE TABLE fish_name (
Species CHAR(3),
name VARCHAR(225),
FOREIGN KEY (Species) REFERENCES fish(Species)
)

CREATE TABLE country (
Country CHAR(2),
Description VARCHAR(225),
PRIMARY KEY (Country)
)

CREATE TABLE catch (
Country CHAR(2),
Species CHAR(3),
Year INT,
TLW FLOAT,
FOREIGN KEY (Country) REFERENCES country(Country),
FOREIGN KEY (Species) REFERENCES fish(Species)
)
