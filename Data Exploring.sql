select * from supermarket_sales;

-- Change Data type
ALTER TABLE supermarket_sales MODIFY Date date;
Alter Table supermarket_sales modify Time time;


-- EXPLORING DATA
-- Summary by Branch
select 
branch, 
round(sum(Total),2) as Total_sales, 
round(sum(gross_income),2) as Total_gross_income,
round(sum(gross_margin_percentage),2) as total_percentage,
round(sum(Rating)/count(Invoice_ID),2) as Total_Rating
from supermarket_sales
group by Branch
ORDER BY branch;

-- Summary by City
select 
city, 
round(sum(Total),2) as Total_sales, 
round(sum(gross_income),2) as Total_gross_income,
round(sum(gross_margin_percentage),2) as total_percentage,
round(sum(Rating)/count(Invoice_ID),2) as Total_Rating
from supermarket_sales
group by city
ORDER BY city;

# Yagon City only has branch A
# Mandalay City only has branch B
# Naypyitaw City only has branch C

-- Summary by Product
select 
Product_line, 
round(sum(Total),2) as Total_sales, 
round(sum(gross_income),2) as Total_gross_income,
round(sum(gross_margin_percentage),2) as total_percentage,
round(sum(Rating)/count(Invoice_ID),2) as Total_Rating
from supermarket_sales
group by Product_line
ORDER BY Total_Rating;


-- Summary by Payment Methode
select 
Payment, 
round(sum(Total),2) as Total_sales, 
round(sum(gross_income),2) as Total_gross_income,
round(sum(gross_margin_percentage),2) as total_percentage,
count(Invoice_ID) as Total_Trancsaction
from supermarket_sales
group by Payment
ORDER BY Payment;

-- Summary by Customer type
select 
Customer_type, 
round(sum(Total),2) as Total_sales, 
round(sum(gross_income),2) as Total_gross_income,
round(sum(gross_margin_percentage),2) as total_percentage,
count(Invoice_ID) as Total_Trancsaction
from supermarket_sales
group by Customer_type
ORDER BY Customer_type;

-- Summary by Date Transaction
select 
month(Date), 
round(sum(Total),2) as Total_sales, 
round(sum(gross_income),2) as Total_gross_income,
round(sum(gross_margin_percentage),2) as total_percentage,
count(Invoice_ID) as Total_Trancsaction
from supermarket_sales
group by month(Date)
ORDER BY month(Date);


