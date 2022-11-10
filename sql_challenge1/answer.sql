-- For each product, find out the number of locations in which that product was purchased?
select t.Product_ID, count(c.location)
from challenge1.customers c, challenge1.transactions t
WHERE c.id = t.customer_id
GROUP BY t.Product_ID

-- What are the number of purchases per location for each product? 
SELECT t.Product_ID, count(c.location)
FROM challenge1.customers c, challenge1.transactions t
WHERE c.id = t.customer_id
GROUP BY c.location, t.Product_ID


-- Which brand is generating more revenue?
SELECT product_brand, SUM(product_amount) AS REVENUE
from transactions 
GROUP BY product_brand
order by REVENUE DESC
limit 1

-- What is the total number of product sold by each brand?
SELECT DISTINCT Product_Brand, COUNT(Product_Description)
FROM transactions
GROUP BY Product_Brand

-- Find out the customer, who has purchased more number of products and the his total expenditure?
SELECT c.id, COUNT(t.Transation_ID) as total_prod , SUM(t.Product_Amount) as total_exp
FROM challenge1.customers c, challenge1.transactions t
WHERE c.id = t.customer_id
GROUP BY c.`ID` 
ORDER BY total_prod desc, total_exp DESC


-- Find out the customer, who has spent maximum amount
SELECT c.id, SUM(t.product_amount) as total_amt
FROM challenge1.customers c, challenge1.transactions t
WHERE c.id = t.customer_id
GROUP BY c.id 
ORDER BY total_amt DESC
LIMIT 1

