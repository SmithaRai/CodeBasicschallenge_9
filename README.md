#Promotion Analysis in FMCG Sector (Codebasics Contest) 
AtliQ Mart is a retail giant with over 50 supermarkets in the southern region of India. All their 50 stores ran a massive promotion during the Diwali 2023 and Sankranti 2024 (festive time in India) on their AtliQ branded products. To keep AtliQ Mart's promotions on track, we need to analyze them by product and category. By taking a deep dive, we can uncover what's working and what's not for each AtliQ brand item. These insights will then help us craft specific actions to make future promotions even better.

## **problem statement**
AtliQ Mart's 50 stores ran a massive promotion during the Diwali 2023 and Sankranti 2024 (festive time in India) on their AtliQ branded products.To identify the success rate of each campaign pomotions and  make informed decisions for their next promotional period. 

## **Outcomes**
Uncover Top Performers by stores
Discover Revenue Drivers
Craft a Strategic Roadmap

## **Questions to ask**
Bottom 10 stores interms of increemental sold units(ISU%)
Is there a significant difference in the performance of discount based promotions versus bogof(buy one get one offer) or cashback promotions ?
Which promotion strike the best balance between increemental sold units and maintaining healthy margins?
Are there specific products that respond exceptionally well or poorly to promotions?
Correlation between product category and promotion type effectiveness ? 
Which promotions drove the best results in each campaign?

## **Dataset Description**
### dim_campaigns
#### 1.**campaign_id** : Unique identifier for each promotional campaign.
#### 2.**campaign_name** : Descriptive name of the campaign (e.g., Diwali, Sankranti). 
#### 3.**start_date** :  The date on which the campaign begins, formatted as DD-MM-YYYY 
#### 4.**end_date** :The date on which the campaign ends, formatted as DD-MM-YYYY. 
*******************************************
### dim_products
#### 1.**product_code** : Unique code assigned to each product for identification.
#### 2.**product_name** : The full name of the product, including brand and specifics (e.g., quantity, size).
#### 3.**category** : The classification of the product into broader categories such as Grocery & Staples, Home Care, Personal Care, Home Appliances, etc.
*******************************************
### dim_stores
#### 1.**store_id** : Unique code identifying each store location.
#### 2.**city** : The city where the store is located, indicating the geographical market.
*******************************************
### fact_events
#### 1.**event_id** : Unique identifier for each sales event.
#### 2.**store_id** : Refers to the store where the event took place, linked to the dim_stores table
#### 3.**campaign_id** : Indicates the campaign under which the event was recorded, linked to the dim_campaigns table.
#### 4.**product_code** : The code of the product involved in the sales event, linked to the dim_products table.
#### 5.**base_price** : The standard price of the product before any promotional discount.
#### 6.**promo_type:** : The type of promotion applied (e.g., percentage discount, BOGOF(Buy One Get One Free), cashback).
#### 7.**quantity_sold(before_promo)** : The number of units sold in the week immediately preceding the start of the campaign, serving as a baseline for comparison with promotional sales.
#### 8.**quantity_sold(after_promo)** : The quantity of the product sold after the promotion was applied.

### **Dataset Overview : Key Statistics and Shape**
  **Missing Values** :no missing values
  
## **Adhoc Analysis**
### **Questions to ask**
Provide a list of products with base price greater than 500 and that are featured in "bogof"
generate a report that provides an overview of the number of stores in each city

## **Analysis insights**

**Consumer Trends**: Consumers are less likely to be swayed by discounts on lower-priced homecare products, with offers around 25% off showing minimal impact.
**Revenue Trends**: It is observed that bundled products had boosted up revenue after promotions in contrast personal care products generated drastic loss in revenue. 

## **recommendations**

**Focus on gifitng**: During these festivals campaign, the focus might shift towards buying premium homecare products for gifting, rather than deals for personal use.

**Cross selling**:  When a customer purchases a discounted product, recommend complementary items that specifically enhance their chosen item.

**deep discounts**: Consumers expect big discounts especially on premium products.Ensuring deep discounts without  impacting profit margins would be a better strategy .

**Focus on product benefits**: emphasizing on unique selling points of the product and benefits of the product can improve the chances of sales.

## **PowerBI Dashboard**

1. **Slicers**: Product category,product,campaign,promotion type

2. **Report Pages**: Store Performance,Promotion analysis, Product and category analysis

## **Conclusion**

The promotion analysis of  atliq mart data has provided valuable insights into store performance, promotions behaviour, and  product and category revenue growth. By leveraging data-driven strategies, businesses can optimize their operations and enhance success rate of promotions in the next period .

### **🚀Key Takeaways:**

- **Insights into Customer Behavior:** the most popular AtliQ branded product categories and specific items during these festive periods.

- **Promotion Effectiveness:** Understand which promotion types (e.g., discounts, free gifts) resonated best with customers for different product categories.
