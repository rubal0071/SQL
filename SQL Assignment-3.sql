use day2;

### Imported datatset using "Table Data Import Wizard"

show tables;

select * from bank_inventory_pricing;

## 1. Which product has the highest estimated sale price, and what is the price?
select product, price, estimated_sale_price 
from bank_inventory_pricing 
where estimated_sale_price in (select max(estimated_sale_price) from bank_inventory_pricing);

## Other method
select product, price, estimated_sale_price 
from bank_inventory_pricing
order by estimated_sale_price desc limit 1;

## 2. Calculate the total profit for each product (Estimated Sale Price - Purchase Cost).

select product, sum(estimated_sale_price-purchase_cost) as Total_Profit
from bank_inventory_pricing 
group by product;

## 3. How many products have missing values in the "purchase_cost" column?
select count(product) 
from  bank_inventory_pricing 
where purchase_cost is null;

## 4. Calculate the total purchase cost for each product.

select product, sum(purchase_cost) 
from bank_inventory_pricing
group by product;

## 5. Calculate the total revenue for each product (Quantity * Estimated Sale Price).

select product, sum(quantity * estimated_sale_price) as Total_Revenue
from bank_inventory_pricing
group by product




