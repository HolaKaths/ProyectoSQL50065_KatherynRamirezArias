CREATE VIEW top_5_best_selling_courses AS
SELECT
  c.id,
  c.name,
  c.description,
  c.price,
  c.created_at,
  c.updated_at,
  c.category_id,
  COUNT(*) AS number_of_sales
FROM product_transactions pt
INNER JOIN products c ON pt.product_id = c.id
GROUP BY c.id
ORDER BY number_of_sales DESC
LIMIT 5;

CREATE VIEW top_seller AS
SELECT
  c.seller_id,
  u.username,
  COUNT(*) AS number_of_sales,
  (
    SELECT COUNT(*)
    FROM product_transactions pt
    INNER JOIN products c ON pt.product_id = c.id
    WHERE c.seller_id = pt.seller_id
  ) AS total_courses_sold
FROM product_transactions pt
INNER JOIN products c ON pt.product_id = c.id
INNER JOIN users u ON c.seller_id = u.id
GROUP BY c.seller_id
ORDER BY number_of_sales DESC
LIMIT 1;


