select * from orders;select * from customers;
-- repeated customers ( order grater than 1 time)

select customer_id ,count(order_id) as total_orders
from orders 
group by (customer_id)
having count(order_id) > 1



select * from orders;select * from customers;
-- ✅ Month-wise Revenue:
select FORMAT(order_date,'yyyy-MM') as month , sum(quantity * price_per_unit) as month_wise_revenue
from orders
group by FORMAT(order_date,'yyyy-MM')
order by month
