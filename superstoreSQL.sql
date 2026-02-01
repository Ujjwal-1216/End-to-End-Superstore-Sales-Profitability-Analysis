use superstore;
select * from storedata;
-- Total revenue and profit
select sum(Revenue) as Total_revenue , sum(Profit) as Total_profit from storedata;
-- revenue by category
select Category , sum(Revenue) as Revenue from storedata group by Category order by Revenue DESC;
-- Region Wise profit
select Region , sum(Profit) as Total_profit from storedata group by Region order by Total_profit DESC;
-- Monthly sales Trend
Select Order_Year as Year , Order_Month as Month , sum(Revenue) as Sales from storedata  Group by Year , Month order by Year , Month;
-- Top 5 customers by Revenue
Select 'Customer Name' , sum(Revenue) as Total_revenue from storedata group by 'Customer Name' order by Total_revenue Desc 
LIMIT 5;
-- Impact of discount on Profit 
select Discount , sum(Profit) As Profit from storedata Group by Discount Order by Discount;
-- 






