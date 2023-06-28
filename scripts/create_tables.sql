
CREATE TABLE IF NOT EXISTS product (
    product_id INT NOT NULL PRIMARY KEY,
    product_label VARCHAR(400) NOT NULL,
    product_category VARCHAR(100),
    product_url VARCHAR(500), 
    mean_price FLOAT
);

CREATE TABLE IF NOT EXISTS brand (
    brand_id INT NOT NULL PRIMARY KEY,
    product_id INT, 
    brand_label VARCHAR(400) NOT NULL
);

CREATE TABLE IF NOT EXISTS feature (
    feature_id INT NOT NULL PRIMARY KEY,
    product_id INT, 
    feature_label VARCHAR(400) NOT NULL,
    feature_category VARCHAR(400)
);

CREATE TABLE IF NOT EXISTS sale (
    sale_id INT NOT NULL PRIMARY KEY,
    product_id INT, 
    sale_label VARCHAR(400) NOT NULL,
    date DATE, 
    price FLOAT, 
    store VARCHAR(1000)
);