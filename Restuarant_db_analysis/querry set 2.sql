-- 1.) view the order details table 
select * from order_details

-- 2.)view the date  range of the table 
USE restaurant_db;
select min(order_date) , max(order_date)from order_details

-- 3.)how many oders where made within this date range
select count(distinct order_id) from order_details; 

-- 4.)how many items where ordered within this date range
select count(*) from order_details; 

-- 5.)which order had the most number of items 
select order_id ,count(item_id) as number_0f_items from order_details
group by order_id 
order by number_0f_items desc; 

-- 6.)how many orders had more than 12 items
select order_id ,count(item_id) as number_0f_items from order_details
group by order_id 
having number_0f_items>12 ; 