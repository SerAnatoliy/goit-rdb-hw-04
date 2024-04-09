select 
c.name as Category_name
, count(c.name) as Quantity
,avg(od.quantity) as Avarage_quantity
From mydb.order_details as od
Right Join mydb.orders as o on o.id = od.order_id
Left Join mydb.products as p on p.id = od.product_id 
Left Join mydb.employees as e on o.employee_id = e.employee_id
Left join mydb.categories as c on c.id = p.category_id
Right join mydb.customers as cu on cu.id = o.customer_id
Left join mydb.shippers as s on s.id = o.shipper_id
Left join mydb.suppliers as su on su.id = p.supplier_id
group by c.name
having avarage_quantity > 21 
