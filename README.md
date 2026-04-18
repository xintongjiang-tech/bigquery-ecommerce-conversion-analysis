# BigQuery E-commerce Conversion Analysis

## 🎯 Project Executive Summary
This project explores the user journey and conversion dynamics of an e-commerce platform using the Google Analytics public dataset in BigQuery. By leveraging SQL for data extraction and transformation, I identified critical bottlenecks in the user acquisition and purchase funnel, specifically highlighting the performance disparity between desktop and mobile platforms.



## 📊 Business Questions
- What is the drop-off rate at each stage of the customer purchase funnel?
- How does the conversion rate differ across device categories (Desktop, Mobile, Tablet)?
- What is the impact of site navigation behaviors on revenue completion?
- Which pages or stages act as the biggest "leaks" in the conversion funnel?

## 🛠️ Tech Stack
- **Database**: Google BigQuery (Public Datasets)
- **Data Manipulation**: Advanced SQL (CTEs, Window Functions, Case Statements)
- **Visualization**: Power BI (Dashboarding & Storytelling)

## 🔑 Key Findings & Insights
1. **Funnel Bottleneck**: There is a significant drop-off rate of X% (update this number) between the 'Basket' and 'Order Completed' stages, suggesting potential friction in the checkout process.
2. **Device Discrepancy**: Desktop users exhibit a conversion rate of X%, significantly outperforming Mobile users (X%). This indicates a potential mobile-first UX/UI optimization opportunity.
3. **Revenue Analysis**: Total revenue is heavily skewed towards [Desktop/Mobile] users, highlighting a clear area for prioritized investment in platform-specific improvements.

## 🚀 Recommendations
- **Mobile UX Audit**: Conduct a usability test on the mobile checkout flow to identify why users are failing to complete transactions.
- **Retargeting Strategy**: Implement an email remarketing campaign specifically targeting users who added items to the cart but dropped off before completion.
- **Conversion Optimization**: A/B test the "Order Completed" page loading speed to ensure it is not causing technical drop-offs.

## 📂 Repository Contents
- `/sql_scripts`: Contains the core queries used for data aggregation and funnel metrics.
- `/dashboard_preview`: Screenshots of the Power BI visualization.
