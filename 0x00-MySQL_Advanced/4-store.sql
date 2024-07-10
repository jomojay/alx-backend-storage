-- Creates a trigger that decreases the quantity
-- of an item after adding a new order.
DROP TRIGGER IF EXISTS decrement;
CREATE TRIGGER decrement
AFTER INSERT
ON orders
FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.number WHERE NAME = NEW.item_name;
