-- 1.)view the menu_items table
select * from menu_items
limit 10;

-- 2.)find the number of items on the menu
select count(*)  from menu_items;

-- 3.)what are the most least and expensive items on the menu
select * from menu_items
order by price;

select * from menu_items
order by price desc;

-- 4.)how many italian dishes are there in the menu
select count(*) from menu_items
where category='Italian'

-- 5.)what are the least and most expensive italian dishes on the menu
USE restaurant_db;

SELECT * FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

-- 6.)how many dishes are in each category
select count(menu_item_id) as number_of_dishes, category from menu_items
group by category;

-- 7.)what is the average dish price in each category 

select avg(price) as average_price , category from menu_items
group by category;