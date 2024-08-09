DROP FUNCTION IF EXISTS calculate;

DELIMITER //
CREATE FUNCTION calculate(x FLOAT, y FLOAT)
RETURNS FLOAT
NO SQL
BEGIN
    RETURN x / y;
END //
DELIMITER ;

select order_id, quantity, calculate(quantity, 10.0) as calculation from order_details;