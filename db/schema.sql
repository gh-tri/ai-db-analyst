-- AI Database Analyst — schema
-- Entities: Regions -> Countries -> Customers -> Orders -> Order Items -> Products -> Categories
--
-- Deliberate design choice: products has NO cost/profit column. This gives us a real,
-- honest "missing information" case for the error-handling demo (e.g. "what's our profit
-- margin by product?") instead of having to fake one.

DROP SCHEMA IF EXISTS analyst CASCADE;
CREATE SCHEMA analyst;
SET search_path TO analyst;

CREATE TABLE regions (
    region_id    SERIAL PRIMARY KEY,
    region_name  TEXT NOT NULL UNIQUE          -- e.g. 'North America', 'EMEA', 'APAC', 'LATAM'
);

CREATE TABLE countries (
    country_id    SERIAL PRIMARY KEY,
    country_name  TEXT NOT NULL UNIQUE,
    region_id     INTEGER NOT NULL REFERENCES regions(region_id)
);

CREATE TABLE customers (
    customer_id    SERIAL PRIMARY KEY,
    customer_name  TEXT NOT NULL,
    email          TEXT NOT NULL UNIQUE,
    country_id     INTEGER NOT NULL REFERENCES countries(country_id),
    signup_date    DATE NOT NULL
);

CREATE TABLE categories (
    category_id    SERIAL PRIMARY KEY,
    category_name  TEXT NOT NULL UNIQUE
);

CREATE TABLE products (
    product_id        SERIAL PRIMARY KEY,
    product_name      TEXT NOT NULL,
    category_id       INTEGER NOT NULL REFERENCES categories(category_id),
    unit_price        NUMERIC(10, 2) NOT NULL CHECK (unit_price >= 0),
    is_discontinued   BOOLEAN NOT NULL DEFAULT FALSE,
    discontinued_date DATE
);

CREATE TABLE orders (
    order_id     SERIAL PRIMARY KEY,
    customer_id  INTEGER NOT NULL REFERENCES customers(customer_id),
    order_date   DATE NOT NULL,
    status       TEXT NOT NULL DEFAULT 'completed'   -- 'completed', 'cancelled', 'refunded'
);

CREATE TABLE order_items (
    order_item_id  SERIAL PRIMARY KEY,
    order_id       INTEGER NOT NULL REFERENCES orders(order_id),
    product_id     INTEGER NOT NULL REFERENCES products(product_id),
    quantity       INTEGER NOT NULL CHECK (quantity > 0),
    unit_price     NUMERIC(10, 2) NOT NULL CHECK (unit_price >= 0),  -- price snapshot at time of sale
    discount       NUMERIC(4, 3) NOT NULL DEFAULT 0 CHECK (discount >= 0 AND discount < 1)
);

-- Indexes for the join/filter/aggregation patterns the analyst will actually run
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
CREATE INDEX idx_orders_order_date ON orders(order_date);
CREATE INDEX idx_order_items_order_id ON order_items(order_id);
CREATE INDEX idx_order_items_product_id ON order_items(product_id);
CREATE INDEX idx_customers_country_id ON customers(country_id);
CREATE INDEX idx_countries_region_id ON countries(region_id);
CREATE INDEX idx_products_category_id ON products(category_id);

-- Convenience view: one row per order line item with revenue pre-computed and the
-- full dimensional path (region/country/category) already joined. This is what most
-- generated queries will select FROM instead of re-deriving the join every time —
-- it keeps generated SQL shorter (less surface area for the model to get wrong) and
-- is the first thing that would become a materialized view if data volume grew (see
-- design doc §8).
CREATE VIEW v_order_line_revenue AS
SELECT
    oi.order_item_id,
    o.order_id,
    o.order_date,
    o.status,
    c.customer_id,
    c.customer_name,
    co.country_id,
    co.country_name,
    r.region_id,
    r.region_name,
    p.product_id,
    p.product_name,
    cat.category_id,
    cat.category_name,
    oi.quantity,
    oi.unit_price,
    oi.discount,
    ROUND(oi.quantity * oi.unit_price * (1 - oi.discount), 2) AS revenue
FROM order_items oi
JOIN orders o      ON o.order_id = oi.order_id
JOIN customers c   ON c.customer_id = o.customer_id
JOIN countries co  ON co.country_id = c.country_id
JOIN regions r     ON r.region_id = co.region_id
JOIN products p    ON p.product_id = oi.product_id
JOIN categories cat ON cat.category_id = p.category_id;
