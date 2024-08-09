select *, (select orders.customer_id from orders where orders.id = order_details.order_id) as customer_id
from order_details;