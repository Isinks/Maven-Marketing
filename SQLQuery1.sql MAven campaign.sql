select *
from [dbo].[marketing_data]

--identying the null values in the income column
select count(*)
from [dbo].[marketing_data]
where Income is NULL

--Replacing the null values with 0
select Id, coalesce(Income, 0) Income
from [dbo].[marketing_data]

-- Total purchase from different sales channel
SELECT 
	SUM(NumWebPurchases) Web_Purchase,
	SUM(NumDealsPurchases) Deal_Purchase,
	SUM(NumCatalogPurchases)Catalog_Purchases ,
	SUM(NumStorePurchases) Store_Purchases
FROM [dbo].[marketing_data]


--The most sold product
SELECT 
    SUM(MntWines) Wine,
    SUM(MntFruits) Fruit,
	SUM(MntMeatProducts) Meat,
	SUM(MntFishProducts)Fish,
	SUM(MntSweetProducts) Sweet,
	SUM(MntGoldProds) Gold
from [dbo].[marketing_data]

--product sold by country
Select Country,
       SUM(MntWines) Wine,
    SUM(MntFruits) Fruit,
	SUM(MntMeatProducts) Meat,
	SUM(MntFishProducts)Fish,
	SUM(MntSweetProducts) Sweet,
	SUM(MntGoldProds) Gold
from [dbo].[marketing_data]
group by Country

--Amount spent on each product in web purchase
SELECT 
    SUM(MntWines) Wine,
    SUM(MntFruits) Fruit,
	SUM(MntMeatProducts) Meat,
	SUM(MntFishProducts)Fish,
	SUM(MntSweetProducts) Sweet,
	SUM(MntGoldProds) Gold
from [dbo].[marketing_data]
where NumWebPurchases in (MntWines,
                           MntFruits,
						   MntMeatProducts,
						   MntSweetProducts,
						   MntFishProducts,
	                       MntGoldProds)

--Amount spent on each product in store purchase
SELECT 
    SUM(MntWines) Wine,
    SUM(MntFruits) Fruit,
	SUM(MntMeatProducts) Meat,
	SUM(MntFishProducts)Fish,
	SUM(MntSweetProducts) Sweet,
	SUM(MntGoldProds) Gold
from [dbo].[marketing_data]
where NumStorePurchases in (MntWines,
                           MntFruits,
						   MntMeatProducts,
						   MntSweetProducts,
						   MntFishProducts,
	                       MntGoldProds)

-- Income by Education
select education,
       SUM(Income) income
from [dbo].[marketing_data]
group by Education
order by Income DESC

--income by Marital status
select Marital_Status,
       SUM(Income) Income
from [dbo].[marketing_data]
group by Marital_Status
order by Income DESC

--How well each Campaign did
SELECT 
    SUM(AcceptedCmp1) Campaign_1,
	SUM(AcceptedCmp2) Campaign_2,
	SUM(AcceptedCmp3) Campaign_3,
	SUM(AcceptedCmp4) Campaign_4,
	SUM(AcceptedCmp5) Campaign_5
from [dbo].[marketing_data]

--Total purchase for each campaign
-- Campaign 1
SELECT 
    SUM(MntWines) Wine,
    SUM(MntFruits) Fruit,
	SUM(MntMeatProducts) Meat,
	SUM(MntFishProducts)Fish,
	SUM(MntSweetProducts) Sweet,
	SUM(MntGoldProds) Gold
from [dbo].[marketing_data]
where AcceptedCmp1 in (MntWines,
                           MntFruits,
						   MntMeatProducts,
						   MntSweetProducts,
						   MntFishProducts,
	                       MntGoldProds)

--for Campaign 2
SELECT 
    SUM(MntWines) Wine,
    SUM(MntFruits) Fruit,
	SUM(MntMeatProducts) Meat,
	SUM(MntFishProducts)Fish,
	SUM(MntSweetProducts) Sweet,
	SUM(MntGoldProds) Gold
from [dbo].[marketing_data]
where AcceptedCmp2 in (MntWines,
                           MntFruits,
						   MntMeatProducts,
						   MntSweetProducts,
						   MntFishProducts,
	                       MntGoldProds)

--For Campaign 3
SELECT 
    SUM(MntWines) Wine,
    SUM(MntFruits) Fruit,
	SUM(MntMeatProducts) Meat,
	SUM(MntFishProducts)Fish,
	SUM(MntSweetProducts) Sweet,
	SUM(MntGoldProds) Gold
from [dbo].[marketing_data]
where AcceptedCmp3 in (MntWines,
                           MntFruits,
						   MntMeatProducts,
						   MntSweetProducts,
						   MntFishProducts,
	                       MntGoldProds)

--for Campaign 4
SELECT 
    SUM(MntWines) Wine,
    SUM(MntFruits) Fruit,
	SUM(MntMeatProducts) Meat,
	SUM(MntFishProducts)Fish,
	SUM(MntSweetProducts) Sweet,
	SUM(MntGoldProds) Gold
from [dbo].[marketing_data]
where AcceptedCmp4 in (MntWines,
                           MntFruits,
						   MntMeatProducts,
						   MntSweetProducts,
						   MntFishProducts,
	                       MntGoldProds)

--for campaign 5
SELECT 
    SUM(MntWines) Wine,
    SUM(MntFruits) Fruit,
	SUM(MntMeatProducts) Meat,
	SUM(MntFishProducts)Fish,
	SUM(MntSweetProducts) Sweet,
	SUM(MntGoldProds) Gold
from [dbo].[marketing_data]
where AcceptedCmp5 in (MntWines,
                           MntFruits,
						   MntMeatProducts,
						   MntSweetProducts,
						   MntFishProducts,
	                       MntGoldProds)

--Number of sales made from each channel in each campaign
--Web purchases
SELECT 
    SUM(AcceptedCmp1) Campaign_1,
	SUM(AcceptedCmp2) Campaign_2,
	SUM(AcceptedCmp3) Campaign_3,
	SUM(AcceptedCmp4) Campaign_4,
	SUM(AcceptedCmp5) Campaign_5
from [dbo].[marketing_data]
Where NumWebPurchases in (AcceptedCmp1,
                           AcceptedCmp2,
						   AcceptedCmp3,
						   AcceptedCmp4,
						   AcceptedCmp5)

--For catalog purchase
SELECT 
    SUM(AcceptedCmp1) Campaign_1,
	SUM(AcceptedCmp2) Campaign_2,
	SUM(AcceptedCmp3) Campaign_3,
	SUM(AcceptedCmp4) Campaign_4,
	SUM(AcceptedCmp5) Campaign_5
from [dbo].[marketing_data]
Where NumCatalogPurchases in (AcceptedCmp1,
                           AcceptedCmp2,
						   AcceptedCmp3,
						   AcceptedCmp4,
						   AcceptedCmp5)

--for store Purchases
SELECT 
    SUM(AcceptedCmp1) Campaign_1,
	SUM(AcceptedCmp2) Campaign_2,
	SUM(AcceptedCmp3) Campaign_3,
	SUM(AcceptedCmp4) Campaign_4,
	SUM(AcceptedCmp5) Campaign_5
from [dbo].[marketing_data]
Where NumStorePurchases in (AcceptedCmp1,
                           AcceptedCmp2,
						   AcceptedCmp3,
						   AcceptedCmp4,
						   AcceptedCmp5)


--Total number of discount purchase
SELECT
    SUM(NumDealsPurchases) Discount
from [dbo].[marketing_data]

--web purchase due to the discount
SELECT
    SUM(NumDealsPurchases)Discount
from [dbo].[marketing_data]
where NumWebPurchases in (NumDealsPurchaseS)

--Catalog purchase due to the discount
Select
    SUM(NumDealsPurchases)Discount
from [dbo].[marketing_data]
Where NumCatalogPurchases in (NumDealsPurchaseS)

-- store purchase due to discount
Select
    SUM(NumDealsPurchases)Discount
from [dbo].[marketing_data]
Where NumStorePurchases in (NumDealsPurchaseS)

--Discount by education
SELECT 
    Education,
	SUM(NumDealsPurchases) Discount
from [dbo].[marketing_data]
Group by Education


--Discount by Marrital status
SELECT 
    Marital_Status,
	SUM(NumDealsPurchases) Discount
from [dbo].[marketing_data]
Group by Marital_Status

--Total number of complains
SELECT
    SUM(Complain) complain
from [dbo].[marketing_data]

--INcome by country
SELECT country,
            SUM(Income) Income
from [dbo].[marketing_data]
group by Country, Income
order by Income DESC

--Total web Visits
SELECT 
     SUM(NumWebVisitsMonth) Web_Visits
from [dbo].[marketing_data]

--WEB Visits by marrital status
SELECT 
    Marital_Status,
	SUM(NumWebVisitsMonth)Web_Visits
from [dbo].[marketing_data]
Group by Marital_Status

--web visits by Education
SELECT 
    Education,
	SUM(NumWebVisitsMonth)Web_Visits
from [dbo].[marketing_data]
Group by Education