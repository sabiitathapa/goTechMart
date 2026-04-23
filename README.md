<div align="center">
  <h1>
    <p>E-Commerce Data Analysis Project</p>
  </h1>
</div>
<p align="center">
  <img width="350" height="170" alt="goTechMart_logo" src="https://github.com/user-attachments/assets/47697062-ce29-4bc6-a3b0-4dbb3efaab94" />
</p>
<h2>Executive Summary</h2>
<table>
  <tr>
    <td>
      <strong>SALES</strong>
      <h4>COVID-driven peak in 2020</h4>
      <p>Sales surged 162% in 2020 driven by the pandemic, before declining sharply by 46% in 2022. North America contributed ~50% of total revenue throughout the period.</p>
    </td>
    <td>
      <strong>MARKETING</strong>
      <h4>Heavy reliance on direct channel</h4><p>Revenue is heavily concentrated in direct customer channels, signaling a clear opportunity to expand email and social media strategies.</p>
    </td>
  </tr>
  <tr><td></td><td></td></tr>
  <tr>
    <td>
      <strong>LOYALTY PROGRAM</strong>
      <h4>Loyalty members outperform</h4><p>Loyalty program revenue grew steadily while non-loyalty revenue declined — though a 2022 dip warrants further investigation.</p>
    </td>
    <td>
      <strong>PRODUCT</strong>
      <h4>Gaming Monitor &amp; MacBook lead</h4><p>Top two revenue-generating products. Bose Soundsport Headphones contributed only 0.01% of revenue with minimal returns — a candidate for discontinuation.</p>
    </td>
  </tr>
</table>
<details align="justify">
  <summary><h2>Introduction</h2></summary>
  Founded in 2018, goTechMart is an e-commerce company that sells popular electronics products and has since expanded to a global customer base. Like most e-commerce companies, goTechMart sells products through their online site as well as through their mobile app. They use a variety of marketing channels to reach customers, including Email campaigns, SEO, and affiliate links. Over the last few years, their more popular products have been products from Apple, Samsung, and ThinkPad.
</details>
<details align="justify">
  <summary><h2>Project Objective</h2></summary>
  GoTechMart possesses a robust dataset covering orders, customer profiles, product catalogs, and geographic information, yet much of its potential remains untapped. Key stakeholders have identified a significant opportunity to extract value across critical areas — sales performance, marketing effectiveness, operational efficiency, product strategy, and loyalty program utilization. This project bridges that gap by transforming raw data into clear, actionable intelligence that empowers decision-makers to optimize operations, strengthen business strategies, and consistently deliver superior products to a global customer base.
</details>
<h2>Data Overview</h2>
<p>The dataset consists of four core tables covering orders, customers, order status, and geographic information. </p>
<p>
<h4>Key Highlights</h4>
  <ul>
  <li><strong>4</strong><span> Years of Data</span></li>
  <li><strong>4</strong><span> Core Tables</span></li>
  <li><strong>+162%</strong><span> Peak Sales Growth</span></li>
  <li><strong>50%</strong><span> North America Revenue</span></li>
</ul>
</p>
<h4>ERD Diagram</h4>
<div align="center">
  <img width="600" height="337" alt="goTechMart_ERD" src="https://github.com/user-attachments/assets/1544f17b-00d2-4fcc-b1c9-a83bdd52840a" />
</div>
<details align="justify">
  <summary><h2>Methodology</h2></summary>
  <table>
  <tr>
    <td>
      <strong>Data Cleaning</strong>
      <h4>Excel</h4>
      <p>Used as the starting point for cleaning and organizing raw data, ensuring everything was structured and ready for deeper exploration.</p>
    </td>
    <td>
      <strong>Visualization</strong>
      <h4>Tableau</h4>
      <p>Used to visually explore the data and build interactive dashboards that make insights easy to understand at a glance.</p>
    </td>
    <td>
      <strong>Analysis</strong>
      <h4>SQL</h4>
      <p>Used to dig into the numbers and extract meaningful insights through structured queries and aggregations.</p>
    </td>
  </tr>
  </table>
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
  <div align="center">
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
    <div align="center">
    <img width="922" height="437" alt="Revenue by region" 
      src="https://github.com/user-attachments/assets/7488cf86-32de-4c7a-8ca2-c273ea2f8275" />
    <p align="justify">North America has collected the highest Sales Revenue throughout the period.</p>
    </div>
    <table align="center">
    <tr>
      <td>
        <img width="1281" height="825" alt="Sales by product" 
          src="https://github.com/user-attachments/assets/e00474ec-ccc4-46cb-8286-971fd1ffb69b" />
      </td>
      <td> 
        <img width="1491" height="860" alt="Sales mix by product" 
             src="https://github.com/user-attachments/assets/fbf8be92-50d5-4ddd-b23c-784dd9d302a4" />
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
    <div align="center">
    <img width="690" height="224" alt="Refund by region_pie" 
      src="https://github.com/user-attachments/assets/20dbe635-f008-42d0-bbcd-9340bc04541f" />
    <p align="justify">
      Our preliminary exploratory analysis shows the North America is the region with the highest refund rate of <b>56%.</b>
    </p>
    </div>
    <table align="center">
    <tr>
      <td>
        <img width="1281" height="825" alt="Refund by product" 
          src="https://github.com/user-attachments/assets/1b3891f8-d428-400d-82f7-6eb42ba4039b" />
      </td>
      <td>
        <img width="1491" height="860" alt="Refund mix by product" 
          src="https://github.com/user-attachments/assets/62821342-9eb8-4194-a811-0b7b6a1c5cc3" />
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
    <div align="center">
    <img width="922" height="437" alt="Marketing channel popularity" 
      src="https://github.com/user-attachments/assets/8d3f19d0-9979-44e4-af76-a2ab84cbabb4" />
    <p>
      <b>Direct marketing channel</b> covers more than <b>80%</b> of total sales revenue followed by emails (11.91%). 
    </p>
    </div>
    <div align="center">
    <img width="748" height="212" alt="Loyalty vs Non-loyalty" 
      src="https://github.com/user-attachments/assets/ec3daf0d-5490-4b6d-9692-60b3774c0168" />
    <img width="671" height="174" alt="isloyal" 
      src="https://github.com/user-attachments/assets/5ae80beb-afe4-48d8-98e5-80f68f333118" />
  <br/>
    <p align="justify">
      Loyalty program customers show continuous sales growth compared to non-loyalty program customers. However, by the end of the period, the company is losing its revenue through a loyalty program which needs to be addressed.
    </p>
    </div>
    <table align="center">
    <tr>
      <td>
        <p align="center">
        <img width="1463" height="853" alt="Popular Purchase Platform" 
          src="https://github.com/user-attachments/assets/b52c19f2-304e-4777-8d2d-d8e1a50719d5" />
          Every year, huge percent of orders are purchased through <b>web platforms</b>.
        </p>
      </td>
      <td>
        <p align="center">
        <img width="1487" height="860" alt="Order Frequency" 
          src="https://github.com/user-attachments/assets/aec54fef-2294-4111-8ec9-458c73308a75" />
          <b>Apple Airpods Headphones</b> were the most purchased items (48K) with <b>almost double that of the next highest purchased item</b>, Gaming Monitor (23k).
        </p>
      </td>
    </tr>
  </table>
    <div align="center">
    <img width="922" height="437" alt="Seasonality-linegraph" 
      src="https://github.com/user-attachments/assets/9f3c4cd3-51d6-470c-948c-fad59389b519" />
 <p align="justify">
   This line graph reveals that the <b>New Year Holiday Period (Nov-Jan)</b> was the most favorable period and the <b>Summer Break (Apr-Aug)</b> was the worst period for sales. Another interesting factor to remember is <b>Oct 2019</b> shows comparatively small declining sales than the rest.
 </p>
    </div>
  </div>
  </div>
  <div>
    <h2>Recommendations</h2>
<table>
  <tr>
    <th>Department</th>
    <th>Insight</th>
    <th>Recommendation</th>
  </tr>
  <tr>
    <td><code>Finance</code></td>
    <td><code>Post-COVID revenue decline combined with consistent seasonal downturns in summer</code></td>
    <td><code>Perform root cause analysis by segmenting data across regions, product categories, and channels, and implement seasonal strategies such as targeted promotions, pricing adjustments, or demand forecasting to stabilize revenue</code></td>
  </tr>
  <tr>
    <td><code>Product & Operation</code></td>
    <td><code>Despite strong sales performance, Gaming Monitors and MacBooks exhibit high return rates</code></td>
    <td><code>Conduct a comprehensive return behavior analysis using customer feedback, return classifications, and satisfaction data to identify root causes such as product expectations, quality issues, or fulfillment gaps, and implement corrective actions</code></td>
  </tr>
  <tr>
    <td><code>Sales & Marketing</code></td>
    <td><code>Gaming Monitors and Apple products show strong traction (>60%) in North America</code></td>
    <td><code>Increase regional marketing investment, run targeted promotions, and optimize product visibility to capitalize on high-demand categories</code></td>
  </tr>
  <tr>
    <td><code>Sales & Marketing</code></td>
    <td><code>Declining post-2022 engagement suggests reduced customer retention and loyalty program effectiveness</code></td>
    <td><code>Rebuild the loyalty program as a data-driven retention engine by applying RFM segmentation to identify at-risk and high-value customers. Activate targeted re-engagement campaigns and personalized incentive structures through coordinated execution across sales, marketing, and operations to improve customer lifetime value</code></td>
  </tr>
  <tr>
    <td><code>Sales & Marketing</code></td>
    <td><code>Consistent revenue growth observed during the New Year season</code></td>
    <td><code>Plan early seasonal campaigns, offer time-limited discounts, and optimize inventory to meet increased demand during this high-performing period</code></td>
  </tr>
  <tr>
    <td><code>Sales & Marketing</code></td>
    <td><code>High dependency on the Direct Channel while Email channel shows potential uptick performance</code></td>
    <td><code>Enhance email personalization and automation while diversifying marketing efforts across paid, organic, and referral channels to improve acquisition resilience</code></td>
  </tr>
</table>
  </div>
</div>

Feel free to visit an interactive dashboard here: <a href="https://public.tableau.com/views/elist/Dashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link">Dashboard</a>
