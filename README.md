# 📊 BigQuery E-commerce Conversion Analysis

[![Python](https://img.shields.io/badge/Python-3.9-blue.svg)](https://www.python.org/)
[![SQL](https://img.shields.io/badge/SQL-Expert-orange.svg)]()
[![BigQuery](https://img.shields.io/badge/BigQuery-GCP-blueviolet.svg)]()

---

## 📌 Project Executive Summary
This project analyzes the user journey and conversion dynamics of an e-commerce platform using Google Analytics public datasets in BigQuery. By leveraging advanced SQL for data extraction and transformation, I identified critical bottlenecks in the purchase funnel, highlighting a significant performance disparity between desktop and mobile platforms.

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
1. **Funnel Bottleneck**: There is a significant drop-off rate of **79.42%** between the 'Basket' and 'Order Completed' stages, suggesting substantial friction or technical barriers in the checkout process that require immediate optimization.
2. **Device Discrepancy**: Desktop users exhibit a conversion rate (Basket to Purchase) of **26.89%**, significantly outperforming Mobile users at **8.11%**. This highlights a critical "mobile-first" UX/UI gap hindering revenue growth.
3. **Revenue Analysis**: Total revenue is heavily skewed towards **Desktop** users, who account for **94.29%** of total revenue, confirming the need to prioritize investment in mobile platform-specific improvements.

## 🚀 Recommendations
- **Mobile UX Audit**: Conduct an immediate usability test on the mobile checkout flow to identify why users are failing to complete transactions at such high rates.
- **Retargeting Strategy**: Implement an email/push remarketing campaign specifically targeting the high volume of users who add items to the cart but drop off before completion.
- **Conversion Optimization**: A/B test the "Order Completed" page loading speed and simplify the mobile payment interface to reduce friction.

## 📂 Repository Contents
- `/sql_scripts`: Contains the core queries used for data aggregation and funnel metrics.


---
*Last updated: 2026-04-18*
