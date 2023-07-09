# 2. a. Write function that takes the customernumber as input and returns the purchase_status based on the following criteria . [table:Payments]
-- if the total purchase amount for the customer is < 25000 status = Silver, amount between 25000 and 50000, status = Gold
-- if amount > 50000 Platinum

DELIMITER //

DELIMITER //

CREATE FUNCTION get_purchase_status(customer_num INT) RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE total_purchase_amount DECIMAL(10, 2);
    DECLARE purchase_status VARCHAR(50);
    
    SELECT SUM(amount) INTO total_purchase_amount
    FROM Payments
    WHERE customerNumber = customer_num;
    
    IF total_purchase_amount < 25000 THEN
        SET purchase_status = 'Silver';
    ELSEIF total_purchase_amount >= 25000 AND total_purchase_amount <= 50000 THEN
        SET purchase_status = 'Gold';
    ELSE
        SET purchase_status = 'Platinum';
    END IF;
    
    RETURN purchase_status;
END //

DELIMITER ;

