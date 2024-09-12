select distinct product_name from Products

select products.product_id, products.product_name, products.price 
from Products
left join nutritional_information
on products.product_id = nutritional_information.product_id
where fiber > 5;

SELECT products.product_name, nutritional_information.protein
FROM products
LEFT JOIN nutritional_information
ON products.product_id = nutritional_information.product_id
ORDER BY nutritional_information.protein DESC
LIMIT 1

-- 
SELECT categories.category_id, SUM(products.calories)
FROM categories
LEFT JOIN products
ON categories.category_id = products.category_id
LEFT JOIN nutritional_information
ON nutritional_information.product_id = products.product_id
WHERE nutritional_information.fat <> 0
GROUP BY categories.category_id

SELECT categories.category_name, AVG(products.price)
FROM categories
LEFT JOIN products
ON categories.category_id = products.category_id
GROUP BY categories.category_name

