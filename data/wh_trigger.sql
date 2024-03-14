

CREATE OR REPLACE FUNCTION dwh.insert_dim_customer()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO dwh.dim_customer (customer_nk, first_name, last_name, email, phone, address)
    VALUES (
        NEW.customer_id,
        NEW.first_name, 
        NEW.last_name, 
        NEW.email, 
        NEW.phone, 
        NEW.address
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- trigger tabel customer when insert new data
CREATE TRIGGER customer_insert_trigger
AFTER INSERT ON staging.customer
FOR EACH ROW
EXECUTE FUNCTION dwh.insert_dim_customer();



-- trigger function insert product
CREATE OR REPLACE FUNCTION dwh.insert_dim_product()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO dwh.dim_product (
        product_nk,
        name,
        price,
        stock,
        category_name,
        category_desc,
        subcategory_name,
        subcategory_desc
    ) 
    SELECT
        NEW.product_id,
        NEW.name,
        NEW.price,
        NEW.stock,
        c.name,
        c.description,
        s.name,
        s.description
    FROM
        staging.subcategory s
    JOIN
        staging.category c ON NEW.subcategory_id = s.subcategory_id
    WHERE
        s.category_id = c.category_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- trigger tabel product when insert new data
CREATE TRIGGER product_insert_trigger
AFTER INSERT ON staging.product
FOR EACH ROW
EXECUTE FUNCTION dwh.insert_dim_product();




CREATE OR REPLACE FUNCTION dwh.insert_fct_order()
RETURNS TRIGGER AS $$
DECLARE
    temp_customer_id uuid; 		-- id from warehouse
    temp_product_id uuid; 		-- id from warehouse
   	temp_order_date int; 		-- id from warehouse
   	temp_status varchar(50); 	-- status from staging.orders
BEGIN
	-- Get customer_id from dwh.dim_customer
    SELECT customer_id INTO temp_customer_id
    FROM dwh.dim_customer
    WHERE customer_nk = (SELECT customer_id FROM staging.orders WHERE order_id = NEW.order_id);

    -- Get product_id from dwh.dim_product
    SELECT product_id INTO temp_product_id
    FROM dwh.dim_product
    WHERE product_nk = NEW.product_id AND current_flag = 'current';
   
     -- Get date_id from dwh.dim_date
    SELECT date_id INTO temp_order_date
    FROM dwh.dim_date
    WHERE date_actual = (SELECT order_date FROM staging.orders WHERE order_id = NEW.order_id);
   
   -- Get status from staging.order
   SELECT status into temp_status
   FROM staging.orders WHERE order_id = NEW.order_id;
   
   
    INSERT INTO dwh.fct_order (order_nk, product_id, customer_id, order_date, quantity, price, status)
    VALUES (
        NEW.order_id,
        temp_product_id,
        temp_customer_id,
        temp_order_date,
        NEW.quantity,
        NEW.price,
        temp_status
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- trigger tabel order fact when insert new data
CREATE TRIGGER order_insert_trigger
AFTER INSERT ON staging.order_detail
FOR EACH ROW
EXECUTE FUNCTION dwh.insert_fct_order();



-- Handle Update Data SCD 1
-- Create a function that updates dwh.dim_customer
CREATE OR REPLACE FUNCTION dwh.update_dim_customer()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE dwh.dim_customer
    SET
        first_name = NEW.first_name,
        last_name = NEW.last_name,
        email = NEW.email,
        phone = NEW.phone,
        address = NEW.address,
        updated_at = NOW() -- Update the timestamp
    WHERE customer_nk = NEW.customer_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER customer_update_trigger
AFTER UPDATE OF first_name,last_name,phone, address ON staging.customer
FOR EACH ROW
EXECUTE FUNCTION dwh.update_dim_customer();


-- Create a function that updates dwh.dim_product
CREATE OR REPLACE FUNCTION dwh.update_dim_product()
RETURNS TRIGGER AS $$
begin
	IF TG_TABLE_NAME = 'product' THEN
	    UPDATE dwh.dim_product
	    SET
	        name = NEW.name,
	        price = NEW.price,
	        stock = NEW.stock,
	        updated_at = NOW() -- Update the timestamp
	    WHERE product_nk = NEW.product_id;
	ELSIF TG_TABLE_NAME = 'subcategory' THEN
		UPDATE dwh.dim_product
	    SET
	        subcategory_name = NEW.name,
	        subcategory_desc = NEW.description,
	        updated_at = NOW() -- Update the timestamp
	    WHERE subcategory_name = OLD.name;
	ELSIF TG_TABLE_NAME = 'category' THEN
		UPDATE dwh.dim_product
	    SET
	        category_name = NEW.name,
	        category_desc = NEW.description,
	        updated_at = NOW() -- Update the timestamp
	    WHERE category_name = OLD.name;
	END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create a trigger that fires after an update some  update on the product table
CREATE TRIGGER product_update_trigger
AFTER UPDATE OF name, price, stock ON staging.product
FOR EACH ROW
EXECUTE FUNCTION dwh.update_dim_product();

-- Create a trigger that fires after an update some  update on the subcategory table
CREATE TRIGGER subcategory_update_trigger
AFTER UPDATE of name, description ON staging.subcategory
FOR EACH ROW
EXECUTE FUNCTION dwh.update_dim_product();

-- Create a trigger that fires after an update some  update on the category table
CREATE TRIGGER category_update_trigger
AFTER UPDATE of name, description ON staging.category
FOR EACH ROW
EXECUTE FUNCTION dwh.update_dim_product();


-- Handle Update Data SCD 2
-- update a subcategory product

CREATE OR REPLACE FUNCTION dwh.insert_dim_product_on_subcategory_update()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO dwh.dim_product ( product_nk, name, price, stock, 
    			category_name, category_desc,
        		subcategory_name, subcategory_desc)
    SELECT
        NEW.product_id, NEW.name, NEW.price, NEW.stock,
        c.name, c.description,
        s.name, s.description
    FROM
        staging.subcategory s
    JOIN
        staging.category c ON NEW.subcategory_id = s.subcategory_id
    WHERE
        s.category_id = c.category_id;
       
    UPDATE dwh.dim_product
	    SET
	        current_flag = 'expire',
	        updated_at = NOW() -- Update the timestamp
	    WHERE product_nk = NEW.product_id and 
	    	subcategory_name = (select name from staging.subcategory where old.subcategory_id = subcategory_id); 
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create a trigger that fires after an update on the email column of the customer table
CREATE TRIGGER product_subcategory_update_trigger
AFTER UPDATE OF subcategory_id ON staging.product
FOR EACH ROW
EXECUTE FUNCTION dwh.insert_dim_product_on_subcategory_update();



-- Handle Update Status Order
-- Create a function that updates dwh.fct_order
CREATE OR REPLACE FUNCTION dwh.update_fct_order()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE dwh.fct_order
    SET
        status = NEW.status,
        updated_at = NOW()
    WHERE order_nk = NEW.order_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create a trigger that fires after an update some  on the fact order table
CREATE TRIGGER order_status_update_trigger
AFTER UPDATE OF status ON staging.orders
FOR EACH ROW
EXECUTE FUNCTION dwh.update_fct_order();



