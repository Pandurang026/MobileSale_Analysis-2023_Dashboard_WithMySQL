
-- =========CREATE DATABASE============

create database Mobile_Alalysis;
use  Mobile_Alalysis;

select*from mobile;

-- ===============QUESTIONS===================
# 1.CHECK MOBILE FEATURE AND PRICE LIST?
	select Phone_name, Price from mobile;
    
# 2.FIND OUT THE PRICE OF 5 MOST EXPENSIVE PHONE?
	select Phone_name, Sum(Price) AS Total_Price 
    from mobile
    group by Phone_name
    order by Total_Price desc
    Limit 5;
    
# 3.FIND OUT THE PRICE OF 5 MOST CHEAPEST PHONE?
	select Phone_name, Sum(Price) AS Total_Price 
    from mobile
    group by Phone_name
    order by Total_Price 
    Limit 5;
    
# 4.LIST OF TOP 5 SAMSUNG PHONES WITH PRICE AND ALL FEATURES
	select Phone_name, Sum(Price) AS Total_Price
    from mobile
    where Phone_name LIKE "S%"
    group by Phone_name
    order by Total_Price desc
	Limit 5;
    
    select Phone_name, Sum(Price) As Total_Price from mobile
    where Brands = "Samsung"
    group by Phone_name
    order by Total_Price desc
    Limit 5;
    
    
    
    
# 5.MUST HAVE ANDROID PHONE LIST THEN TOP 5 HIGH PRICE ANDROID PHONE
	select Phone_name, Sum(Price) AS Total_Price, Operating_System_Type 
    from mobile
    where Operating_System_Type = "Android"
    group by Phone_name, Operating_System_Type
    order by Total_Price Desc
    Limit 5;
    
# 6.MUST HAVE ANDROID PHONE LIST THEN TOP 5 LOWER PRICE ANDROID PHONE
	  select * from mobile
	  where Operating_System_Type = "Android"
	  order by Price
	  LIMIT 5;
	  
  
# 7.MUST HAVE IOS PHONE LIST THEN TOP 5 HIGH PRICE IOS PHONE
		select * from mobile
        where Operating_System_Type = "iOS"
        order by Price DESc
        Limit 5;
        
# 8.MUST HAVE IOS PHONE LIST THEN TOP 5 LOWER PRICE IOS PHONE
		select * from mobile
        where Operating_System_Type = "iOS"
        order by Price 
        Limit 5;
	
# 9.WRITE A QUERY WHICH PHONE SUPPORT 5G AND ASLO TOP 5 PHONE WITH 5G SUPPORT
		select * from mobile
        where 5G_Availability = "Yes"
        order by price desc
        Limit 5;
        
# 10.TOTAL PRICE OF ALL MOBILE IS TO BE FOUND WITH  BRAND NAME
		select Brands, Sum(Price) As Total_Price
        from mobile
        group by Brands
        order by Total_Price Desc;

    
