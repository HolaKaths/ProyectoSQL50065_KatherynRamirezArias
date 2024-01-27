CREATE TABLE products_log (
id INT AUTO_INCREMENT,
product_id INT,
user_id INT,
action VARCHAR(255),
date DATETIME,
time TIME,
PRIMARY KEY (id)
);

CREATE TRIGGER products_log_before_update
BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
INSERT INTO products_log (product_id, user_id, action, date, time)
VALUES (OLD.id, OLD.user_id, 'UPDATE', NOW(), NOW());
END;
PRIMARY KEY (id)
);

CREATE TRIGGER products_log_after_update
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
INSERT INTO products_log (product_id, user_id, action, date, time)
VALUES (NEW.id, NEW.user_id, 'UPDATE', NOW(), NOW());
END;

CREATE TABLE product_transactions_log (
id INT AUTO_INCREMENT,
product_transaction_id INT,
user_id INT,
action VARCHAR(255),
date DATETIME,
time TIME,
PRIMARY KEY (id)
);

CREATE TRIGGER product_transactions_log_before_insert
BEFORE INSERT ON product_transactions
FOR EACH ROW
BEGIN
INSERT INTO product_transactions_log (product_transaction_id, user_id, action, date, time)
VALUES (NEW.id, NEW.user_id, 'INSERT', NOW(), NOW());
END;
PRIMARY KEY (id)
);

CREATE TRIGGER product_transactions_log_after_insert
AFTER INSERT ON product_transactions
FOR EACH ROW
BEGIN
INSERT INTO product_transactions_log (product_transaction_id, user_id, action, date, time)
VALUES (NEW.id, NEW.user_id, 'UPDATE', NOW(), NOW());
END;
