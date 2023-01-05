SELECT 
product_id,
product_name,
current_inventory,
sum(current_inventory) OVER(order by product_id ) as cum_sum
sum(current_inventory) OVER(ORDER BY product_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as total_sales

from tutorial.excel_sql_inventory_data
