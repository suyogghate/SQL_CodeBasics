USE food_db;

SELECT * FROM items;

SELECT * FROM variants;

SELECT *, CONCAT(variant_name, ' ', name) AS full_name, (price+variant_price) AS full_price
FROM items
CROSS JOIN variants;

