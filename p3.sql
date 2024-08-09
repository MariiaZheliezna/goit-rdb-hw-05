select order_id, AVG(quantity) as average_quantity
from (select order_id, quantity 
	from order_details where quantity > 10) as temp
group by order_id;