USE xyz_company;

-- 1. SELECT
SELECT *
FROM item;

-- 2. WHERE
SELECT item_id, item_title
FROM item
WHERE item_id > 10;

-- 3. ORDER BY
SELECT item_id, item_title
FROM item
ORDER BY item_title;

-- 4. GROUP BY
SELECT item_category_id, COUNT(*) AS total_items
FROM item
GROUP BY item_category_id;

-- 5. INNER JOIN
SELECT
    item.item_id,
    item.item_title,
    item_category.item_category
FROM item
INNER JOIN item_category
    ON item.item_category_id = item_category.item_category_id;

-- 6. LEFT JOIN
SELECT
    item.item_id,
    item.item_title,
    item_category.item_category
FROM item
LEFT JOIN item_category
    ON item.item_category_id = item_category.item_category_id;

-- 7. RIGHT JOIN
SELECT
    item.item_id,
    item.item_title,
    item_category.item_category
FROM item
RIGHT JOIN item_category
    ON item.item_category_id = item_category.item_category_id;

-- 8. SUBQUERY
SELECT item_id, amount
FROM price
WHERE amount > (
    SELECT AVG(amount)
    FROM price
);

-- 9. AVG
SELECT AVG(amount) AS average_price
FROM price;

-- 10. SUM
SELECT SUM(amount) AS total_price
FROM price;

-- 11. VIEW
CREATE OR REPLACE VIEW item_category_view AS
SELECT
    item.item_id,
    item.item_title,
    item_category.item_category
FROM item
INNER JOIN item_category
    ON item.item_category_id = item_category.item_category_id;

-- Check the VIEW
SELECT *
FROM item_category_view;

-- 12. INDEX
SHOW INDEX FROM item;