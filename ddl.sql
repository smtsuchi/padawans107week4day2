-- CREATE CUSTOMER TABLE
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    age INTEGER,
    email VARCHAR(150)
    );
-- CREATE TRANSACTION TABLE
CREATE TABLE transactions(
    transaction_id SERIAL PRIMARY KEY,
    transaction_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
-- SALE TABLE
CREATE TABLE sale(
    sale_id SERIAL PRIMARY KEY,
    transaction_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id)
    -- FOREIGN KEY (product_id) REFERENCES product(product_id) -- CANT DO THIS YET, PRODUCT TABLE DOES NOT EXISTS
);
-- PRODUCT TABLE
CREATE TABLE product(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    product_description VARCHAR(300),
    image_url VARCHAR,
    price NUMERIC(10,2)
);
-- FIX SALE TABLE TO HAVE CORRECT FOREIGN KEY CONSTRAINTS
ALTER TABLE sale
ADD FOREIGN KEY (product_id) REFERENCES product(product_id);

-- add unique constraint
ALTER TABLE product
ADD UNIQUE(product_name);