-- Stored Procedure para obtener el número total de transacciones

CREATE PROCEDURE get_total_transactions(
  -- Define el parámetro `table_name`
  IN table_name VARCHAR(255) = 'transactions',
  -- Define el parámetro `order_type`
  IN order_type VARCHAR(255)
)
BEGIN

  -- Declara variables
  DECLARE total_transactions INT;

  -- Crea una tabla temporal para almacenar el resultado final
  CREATE TEMPORARY TABLE temp_results (total_transactions INT);

  -- Ordena los registros según el valor de `order_type` y de forma ascendente
  IF order_type = 'ASC' THEN
    INSERT INTO temp_results
      SELECT COUNT(*)
      FROM transactions
      ORDER BY date ASC;
  ELSE
    INSERT INTO temp_results
      SELECT COUNT(*)
      FROM transactions
      ORDER BY date DESC;
  END IF;

  -- Inserta el número total de registros en la tabla temporal, así no ocupo muchos recursos
  INSERT INTO temp_results
    SELECT total_transactions;

  -- Devuelve el resultado almacenado en la tabla temporal
  SELECT * FROM temp_results;

  -- Elimina la tabla temporal para liberar los recursos
  DROP TABLE temp_results;

END;
