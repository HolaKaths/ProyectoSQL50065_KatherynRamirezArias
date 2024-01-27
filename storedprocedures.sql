CREATE PROCEDURE get_total_transactions(
IN table_name VARCHAR(255)  = 'transactions',
IN order_type VARCHAR(255)
)
BEGIN
DECLARE total_transactions INT;
CREATE TEMPORARY TABLE temp_results (total_transactions INT);

IF order_type = 'ASC' THEN
INSERT INTO temp_results
SELECT COUNT(*)
FROM table_name
ORDER BY date ASC;
ELSE
INSERT INTO temp_results
SELECT COUNT(*)
FROM table_name
ORDER BY date DESC;
END IF;

SELECT * FROM temp_results;
DROP TABLE temp_results;
END;


