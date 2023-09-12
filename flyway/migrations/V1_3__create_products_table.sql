
CREATE TABLE products (
	id SERIAL NOT NULL, 
	name VARCHAR(50) NOT NULL, 
	description VARCHAR(200) NOT NULL, 
	category VARCHAR(50) NOT NULL, 
	price NUMERIC(10, 2) NOT NULL, 
	PRIMARY KEY (id)
)

