CREATE FUNCTION get_courses_by_seller(seller_id INT)
RETURNS TABLE (
id INT,
name VARCHAR(255),
description VARCHAR(255),
price DECIMAL(10,2),
created_at DATETIME,
updated_at DATETIME
) AS
BEGIN
RETURN (
SELECT
c.id,
c.name,
c.description,
c.price,
c.created_at,
c.updated_at
FROM products c
WHERE c.seller_id = seller_id
);
END;

CREATE FUNCTION get_average_age_of_registered_users()
RETURNS DECIMAL(10,2) AS
BEGIN
RETURN (
SELECT AVG(age)
FROM users
);
END;
