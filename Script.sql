CREATE SCHEMA cafe;

CREATE TABLE cafe.Users (
  user_id SERIAL PRIMARY KEY,
  name VARCHAR,
  email VARCHAR,
  password VARCHAR,
  role VARCHAR,
  user_image VARCHAR,
  state BOOLEAN
);

CREATE TABLE cafe.Categories (
  category_id SERIAL PRIMARY KEY,
  name VARCHAR,
  user_id INTEGER REFERENCES cafe.Users(user_id)
);

CREATE TABLE cafe.Products (
  product_id SERIAL PRIMARY KEY,
  name VARCHAR,
  unit_price INTEGER,
  category_id INTEGER REFERENCES cafe.Categories(category_id),
  is_available BOOLEAN,
  user_id INTEGER REFERENCES cafe.Users(user_id)
);
