
CREATE TABLE customers (
	id SERIAL NOT NULL, 
	name VARCHAR(100) NOT NULL, 
	email VARCHAR(100) NOT NULL, 
	phone VARCHAR(25) NOT NULL, 
	address VARCHAR(250) NOT NULL, 
	city VARCHAR(100) NOT NULL, 
	country VARCHAR(100) NOT NULL, 
	PRIMARY KEY (id)
)

