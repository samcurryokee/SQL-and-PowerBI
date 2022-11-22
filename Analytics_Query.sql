/** Main aim is to unify the 3 excel sheets tto form one which will be used in PowerBI **/

/**giving the union an alias**/

with hotels as (
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

/**some exploratory data analysis**/


/**
select
arrival_date_year,
hotel,
round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) as revenue 
from hotels
group by arrival_date_year,hotel
**/

select * from hotels
left join market_segment$ on hotels.market_segment = market_segment$.market_segment
left join meal_cost$ on meal_cost$.meal = hotels.meal 




 









