USE mavenmoviesmini;



/* Take a look at the mavenmoviesmini schema. What do you notice about it? How many tables are there?
What does the data represent? What do you think about the current schema? 

From the initial look at the Schema, I found a single table named inventory.
Data represents the inventory of different films present in the two stores. 
A lot of the data is duplicated.
The current Schema is not normalized.
To normalize, We need to create three separate tables. 
They are
Store Table - Store ID as the primary key. It contains all the information about the store

Film Table - Film ID primary key. It has all the information about the film

Inventory Table - inventory_id Primary key, film_id, and store_id as foreign keys. 
It has all the inventory information present in each store. */


SELECT * FROM inventory_non_normalized;

/* Creating normalized tables and forming relation ships and populating the new tables */

-- Creating film table with relevant fields and populating the data

CREATE TABLE Film
SELECT DISTINCT 
	   film_id,
       title,
       description, 
       release_year,
       rental_rate,
       rating
FROM inventory_non_normalized;

-- Creating store table with relevant fields and populating the data

CREATE TABLE Store
SELECT DISTINCT
      store_id,
      store_manager_first_name,
      store_manager_last_name,
      store_address,
      store_city,
      store_district
FROM inventory_non_normalized;

-- Creating Inventory Table

CREATE TABLE inventory
SELECT DISTINCT
      Inventory_id,
      film_id,
      store_id
FROM inventory_non_normalized;

-- Creating Primary Keys and Foreign Keys for all the tables

ALTER TABLE Film 
ADD PRIMARY KEY (film_id);

ALTER TABLE Store
ADD PRIMARY KEY (store_id);

DROP TABLE inventory_non_normalized; -- This is now rendundant table. Dropped it

-- What I have done?
/*
Previously we had one table that redundantly stored a lot of information, especially 
about film titles and descriptions, which we consolidated into a single table named films.
The store info present in the initial table was boiled down into two records in the store table.
Thus achieved normalization.
Why Normalization?
Reduces redundant information and improves the efficiency of the database */




