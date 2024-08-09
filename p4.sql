with temp as (select order_id, quantity from order_details where quantity > 10)
select order_id, AVG(quantity) as AVG_quantity from temp group by order_id;