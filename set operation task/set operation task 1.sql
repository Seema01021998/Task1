select product_name from product where product_id in (select t.product_id from order_items t
join order_details d on t.order_id = d.order_id join customer c on
c.customer_id = d.customer_id where city = 'Pune')