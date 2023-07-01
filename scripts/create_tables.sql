
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS brand;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS sale;
DROP TABLE IF EXISTS prod_feat;
DROP TABLE IF EXISTS feature;

CREATE TABLE IF NOT EXISTS product (
    product_id INT NOT NULL PRIMARY KEY,
    product_label VARCHAR(400) NOT NULL,
    product_url VARCHAR(500), 
    mean_price FLOAT,
    -- 
    brand_id INT, 
    category_id INT 
);

CREATE TABLE IF NOT EXISTS brand (
    brand_id INT NOT NULL PRIMARY KEY,
    brand_label VARCHAR(400) NOT NULL
);

CREATE TABLE IF NOT EXISTS category (
    category_id INT NOT NULL PRIMARY KEY,
    category_label VARCHAR(400) NOT NULL
);

CREATE TABLE IF NOT EXISTS sale (
    sale_id INT NOT NULL PRIMARY KEY,
    sale_label VARCHAR(400) NOT NULL,
    date DATE, 
    price FLOAT, 
    store VARCHAR(1000),
    --
    product_id INT
);

------------------ 

CREATE TABLE IF NOT EXISTS prod_feat (
    feature_id INT NOT NULL,
    product_id INT NOT NULL
);

CREATE TABLE IF NOT EXISTS feature (
    feature_id INT NOT NULL PRIMARY KEY,
    feature_label VARCHAR(400) NOT NULL,
    feature_type VARCHAR(400)
);