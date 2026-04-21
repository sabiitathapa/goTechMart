# goTechMart: Data Analysis on the e-commerce platforms dataset
<p align="center">
  <img width="680" height="270" alt="goTechMart_logo" src="https://github.com/user-attachments/assets/47697062-ce29-4bc6-a3b0-4dbb3efaab94" />
</p>
<h2>Executive Summary</h2>
<p align="justify">
  Between 2019 and 2022, North America was goTechMart's strongest market, contributing roughly half of total revenue. Sales peaked in 2020 with a 162% surge, largely driven by the COVID-19 pandemic, before sharply declining by 46% in 2022. The company's revenue remains heavily reliant on direct customer channels, presenting a clear opportunity for the marketing team to expand into email and social media. The loyalty program showed gradual revenue growth over the period, moving in the opposite direction to non-loyalty customers, though a dip in 2022 signals the need for further investigation and a renewed push to grow membership.
</p>
<details align="justify">
  <summary><h2>Introduction</h2></summary>
  Founded in 2018, goTechMart is an e-commerce company that sells popular electronics products and has since expanded to a global customer base. Like most e-commerce companies, goTechMart sells products through their online site as well as through their mobile app. They use a variety of marketing channels to reach customers, including Email campaigns, SEO, and affiliate links. Over the last few years, their more popular products have been products from Apple, Samsung, and ThinkPad.
</details>
<details align="justify">
  <summary><h2>Project Objective</h2></summary>
  GoTechMart possesses a robust dataset covering orders, customer profiles, product catalogs, and geographic information, yet much of its potential remains untapped. Key stakeholders have identified a significant opportunity to extract value across critical areas — sales performance, marketing effectiveness, operational efficiency, product strategy, and loyalty program utilization. This project bridges that gap by transforming raw data into clear, actionable intelligence that empowers decision-makers to optimize operations, strengthen business strategies, and consistently deliver superior products to a global customer base.
</details>
<h2>Data Overview</h2>
<p>
  The dataset used for this analysis covers the period of 2019-2022 and the company, goTechMart has collected 108,000 transactions from 88,000 customers throughout the period with the total sales revenue exceeding $28 million. </p>
<p>
The available dataset spans over various dimensions and categories including orders, order status, customers and geolocation entity.
</p>
<b>ERD Diagram</b>
  <img width="860" height="580" alt="goTechMart_ERD" src="https://github.com/user-attachments/assets/1544f17b-00d2-4fcc-b1c9-a83bdd52840a" />
<details align="justify">
  <summary><h2>Methodology</h2></summary>
  To bring this analysis to life, three core tools were used throughout the project. Excel served as the starting point for cleaning and organizing the raw data, making sure everything was structured and ready for deeper exploration. Tableau was then used to visually explore the data and build interactive dashboards that make the insights easy to understand at a glance. Finally, SQL was used to dig into the numbers and extract meaningful insights through structured queries.
</details>
<div>
  <h2>Analysis, Insights & Findings</h2>
  <h3>Revenue, AOV & Order Counts</h3>
  <table align="center">
    <tr>
      <td>
        <p align="center">
          <img width="2848" height="1512" alt="Sales by USD" 
            src="https://github.com/user-attachments/assets/9837a6e7-6571-47ab-9ef5-443bb89c9098" />
          Revenue
        </p>
      </td>
      <td>
        <p align="center">
          <img width="2848" height="1512" alt="AOV by USD" 
            src="https://github.com/user-attachments/assets/8d5efe97-2290-4640-8a3d-b8414ba7300b" />
          AOV
        </p>
      </td>
      <td>
        <p align="center">
          <img width="2848" height="1512" alt="orders by month" 
            src="https://github.com/user-attachments/assets/7bbd72d7-2fcc-4f3b-a81c-1c48b259166e" />
          Total Orders
        </p>
      </td>
    </tr>
  </table>
  <div>
    <img width="628" height="144" alt="Sales_AOV_Order" 
      src="https://github.com/user-attachments/assets/5315f10d-40ec-46e4-8d37-133c40a7ad47" />
    <table align="center">
    <tr>
      <td>
        <p align="center">Total Revenue: <b>$28M</b>
        </p>
      </td>
      <td>
        <p align="center">Total AOV: <b>$260</b>
        </p>
      </td>
      <td>
        <p align="center">Total Orders: <b>108126</b>
        </p>
      </td>
    </tr>
    </table>
    <p>
      In 2020, the company gained its highest sales of all time with sales growth by <b>162%</b>, AOV growth by <b>31%</b> and order count growth by <b>101%</b>.
    </p>
    <p>
      After COVID, the sales declined to 46% and order count declined to 40% in 2022 while total AOV declined to just 10%.
    </p>
    <p>
      From 2019 to 2020, average number of sales per year was 27K, with average yearly sale revenue of $7M and average order value of $254. 2021 saw the highest number of sales (36K), but 2020 had on average the most expensive sales (AOV of $300).
    </p>
  </div>
  <div>
    <h3>Sales</h3>
    <img width="2848" height="1512" alt="Revenue by region" 
      src="https://github.com/user-attachments/assets/bbe4cbbc-a71f-4c32-bbfa-30d77a5db388" />
    <p align="justify">North America has collected the highest Sales Revenue throughout the period.</p>
    <table align="center">
    <tr>
      <td>
        <img width="2960" height="1512" alt="Sales mix by product" 
          src="https://github.com/user-attachments/assets/713e7d24-1719-4ac9-84ee-5a0352903944" />
      </td>
      <td>
        <img width="1493" height="867" alt="Sales by product" 
        src="https://github.com/user-attachments/assets/78ce7194-4bf5-4da6-966d-82f07abdf07a" />
      </td>
    </tr>
  </table>
    <p align="justify">
      The 27in 4K Gaming Monitor generated 35% revenue, the highest Sales of $9862K with AOV $421 and more than 23K orders throughout the period.
    </p>
    <p align="justify">
      The Apple Airpods Headphones hold the highest order count of 48K, generating total Sales revenue of $7739K and AOV of $160 throughout the period.</p>
<p align="justify">
  The Macbook Air Laptop generated the highest AOV of $1590 with total Sales revenue of $6303K from 3964 orders throughout the period.
    </p>
  </div>
  <div>
    <h3>Refund</h3>
    <img width="690" height="224" alt="Refund by region_pie" 
      src="https://github.com/user-attachments/assets/20dbe635-f008-42d0-bbcd-9340bc04541f" />
    <p align="justify">
      Our preliminary exploratory analysis shows the North America is the region with the highest refund rate of <b>56%.</b>
    </p>
    <table align="center">
    <tr>
      <td>
        <img width="1493" height="867" alt="Refund by product" 
          src="https://github.com/user-attachments/assets/b7a8cfbf-1425-4ffe-aaa7-7cd48f0cf161" />
      </td>
      <td>
        <img width="2960" height="1512" alt="Refund mix by product" 
          src="https://github.com/user-attachments/assets/91327aec-1d5b-43be-af19-4368fe3d54b7" />
      </td>
    </tr>
  </table>
    <p align="justify">
    The Macbook Air Laptop holds the highest refund amount with 33.37% ($746K) with just 453 returns.
    </p>
    <p align="justify">
      The Apple Airpods Headphones are the most returned product with 2636 returns covering 19.22% ($430K) of total return amount.
    </p>
  </div>
  <div>
    <h3>Product & Operations</h3>
    <img width="1032" height="610" alt="Marketing channel popularity" 
      src="https://github.com/user-attachments/assets/40a6d74e-9643-4a59-9394-20ac3a742271" />
    <p align="justify">
      Direct marketing channel covers more than <b>80%</b> of total sales revenue followed by emails (11.91%). 
    </p>
    <br/>
    <img width="748" height="212" alt="Loyalty vs Non-loyalty" 
      src="https://github.com/user-attachments/assets/ec3daf0d-5490-4b6d-9692-60b3774c0168" />
    <img width="671" height="174" alt="isloyal" 
      src="https://github.com/user-attachments/assets/5ae80beb-afe4-48d8-98e5-80f68f333118" />
  <br/>
    <p align="justify">
      Loyalty program customers show continuous sales growth compared to non-loyalty program customers. However, by the end of the period, the company is losing its revenue through a loyalty program which needs to be addressed.
    </p>
    <br/>
    <table align="center">
    <tr>
      <td>
        <p align="center">
        <img width="2848" height="1512" alt="Popular platform" 
          src="https://github.com/user-attachments/assets/55b2cee5-9aaa-4caf-835a-0a32673ab822" />
          Every year, huge percent of orders are purchased through <b>web platforms</b>.
        </p>
      </td>
      <td>
        <p align="center">
        <img width="2878" height="1512" alt="Order Frequency" 
          src="https://github.com/user-attachments/assets/085bb3c3-a3b9-4586-b605-4c3c1bfff69c" />
          Apple Airpods Headphones were the most purchased items (48K) with <b>almost double that of the next highest purchased item</b>, Gaming Monitor (23k).
        </p>
      </td>
    </tr>
  </table>
    <img width="1848" height="920" alt="Seasonality Trend" 
      src="https://github.com/user-attachments/assets/d2f53d9c-7b1d-447d-8142-b3ea3fa124a4" />
 <p align="justify">
   This scatter plot reveals that the <b>New Year Holiday Period (Nov-Jan)</b> was the most favorable period and the <b>Summer Break (Apr-Aug)</b> was the worst period for sales. Another interesting factor to remember is Oct 2022 shows comparatively sharp declining sales than the rest.
 </p>
  </div>
  </div>
</div>
