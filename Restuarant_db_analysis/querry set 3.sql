-- 1.)combine the menu_items and order_details table into single table 
select * from menu_items;
select * from order_details;

select * from 
order_details od left join menu_items mi
 on od.item_id=mi.menu_item_id;

-- 2.)what were the most and least ordered items ? which catgory do they belong to ?

select item_name ,category,count(order_details_id) as number_of_purchase from 
order_details od left join menu_items mi
 on od.item_id=mi.menu_item_id
 group by item_name,category
 order by number_of_purchase ;

-- 3.)what were the top 5 orders that spent the most money ?
select order_id,sum(price) as total_spend from 
order_details od left join menu_items mi
 on od.item_id=mi.menu_item_id
 group by order_id
 order by total_spend desc
 limit 5;


-- 4.)view the detail of the highest spend order?what insight can you gather from them
select category,count(item_id) as num_items from 
order_details od left join menu_items mi
 on od.item_id=mi.menu_item_id
 where order_id=440
 group by category;



-- 5.)view the details of the top 5 highest spend order.what insights can you gather form them 