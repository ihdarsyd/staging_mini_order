DROP SCHEMA IF EXISTS dwh CASCADE;

CREATE SCHEMA dwh;

create extension if not exists "uuid-ossp";

create table dwh.dim_customer(
	customer_id uuid PRIMARY key default uuid_generate_v4(),
	customer_nk int,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(100),
    address TEXT,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()

);


create table dwh.dim_product(
	product_id uuid PRIMARY key default uuid_generate_v4(),
	product_nk varchar(100),
    name text NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    category_name VARCHAR(255),
    category_desc text,
    subcategory_name VARCHAR(255),
    subcategory_desc text,
    current_flag varchar(50) default 'current',
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);


CREATE TABLE dwh.dim_date
(
  date_id              INT NOT null primary KEY,
  date_actual              DATE NOT NULL,
  day_suffix               VARCHAR(4) NOT NULL,
  day_name                 VARCHAR(9) NOT NULL,
  day_of_year              INT NOT NULL,
  week_of_month            INT NOT NULL,
  week_of_year             INT NOT NULL,
  week_of_year_iso         CHAR(10) NOT NULL,
  month_actual             INT NOT NULL,
  month_name               VARCHAR(9) NOT NULL,
  month_name_abbreviated   CHAR(3) NOT NULL,
  quarter_actual           INT NOT NULL,
  quarter_name             VARCHAR(9) NOT NULL,
  year_actual              INT NOT NULL,
  first_day_of_week        DATE NOT NULL,
  last_day_of_week         DATE NOT NULL,
  first_day_of_month       DATE NOT NULL,
  last_day_of_month        DATE NOT NULL,
  first_day_of_quarter     DATE NOT NULL,
  last_day_of_quarter      DATE NOT NULL,
  first_day_of_year        DATE NOT NULL,
  last_day_of_year         DATE NOT NULL,
  mmyyyy                   CHAR(6) NOT NULL,
  mmddyyyy                 CHAR(10) NOT NULL,
  weekend_indr             VARCHAR(20) NOT NULL
);


create table dwh.fct_order(
	order_id uuid PRIMARY key default uuid_generate_v4(),
	order_nk varchar(50),
    customer_id uuid,
    product_id uuid,
    order_date int NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES dwh.dim_customer(customer_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES dwh.dim_product(product_id),
    CONSTRAINT fk_order_date FOREIGN KEY (order_date) REFERENCES dwh.dim_date(date_id)
);

