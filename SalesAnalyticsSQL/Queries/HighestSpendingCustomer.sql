select * from orders;select * from customers;

--✅ Highest Spending Customer:
select o.customer_id , c.name , sum(o.quantity * o.price_per_unit) as higest_spent
from  orders o inner join customers c
	on o.customer_id = c.customer_id
group by o.customer_id, c.name
order by higest_spent desc
