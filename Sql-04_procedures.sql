USE ecommerce_db;

DELIMITER //

CREATE PROCEDURE place_order(
    IN u_id INT,
    IN p_id INT,
    IN qty INT
)
BEGIN
    DECLARE new_order_id INT;

    INSERT INTO orders(user_id, status)
    VALUES (u_id, 'Placed');

    SET new_order_id = LAST_INSERT_ID();

    INSERT INTO order_items(order_id, product_id, quantity)
    VALUES (new_order_id, p_id, qty);
END //

DELIMITER ;
