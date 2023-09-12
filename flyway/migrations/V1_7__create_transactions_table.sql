
CREATE TABLE transactions (
	id SERIAL NOT NULL, 
	date_time TIMESTAMP WITHOUT TIME ZONE NOT NULL, 
	customer_id INTEGER, 
	product_id INTEGER, 
	quantity INTEGER NOT NULL, 
	device_id INTEGER, 
	payment_method VARCHAR(50) NOT NULL, 
	PRIMARY KEY (id), 
	FOREIGN KEY(customer_id) REFERENCES customers (id), 
	FOREIGN KEY(product_id) REFERENCES products (id), 
	FOREIGN KEY(device_id) REFERENCES devices (id)
)

