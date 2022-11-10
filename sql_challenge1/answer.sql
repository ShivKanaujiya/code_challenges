-- For each product, find out the number of locations in which that product was purchased?

select t.Product_ID, c.location
from challenge1.customers c, challenge1.transactions t
WHERE c.id = t.customer_id
GROUP BY t.Product_ID, c.location
 

-- What are the number of purchases per location for each product?
SELECT c.location, COUNT(t.product_id) AS total_product
FROM challenge1.customers c, challenge1.transactions t
WHERE c.id = t.customer_id
GROUP BY c.location


-- Which brand is generating more revenue?
SELECT product_brand, SUM(product_amount) AS REVENUE
from transactions 
GROUP BY product_brand ASC



-- What is the total number of product sold by each brand?
SELECT DISTINCT Product_Brand, COUNT(Product_Description)
FROM transactions
GROUP BY Product_Brand

SELECT COUNT(Product_Description)
FROM transactions
WHERE Product_Brand = "APPLE"

-- Find out the customer, who has purchased more number of products and the his total expenditure?
SELECT c.id, t.Transation_ID
FROM challenge1.customers c, challenge1.transactions t
WHERE c.id = t.customer_id
GROUP BY 

-- Find out the customer, who has spent maximum amount
SELECT c.id, SUM(t.product_amount) 
FROM challenge1.customers c, challenge1.transactions t
WHERE c.id = t.customer_id
GROUP BY c.id 

