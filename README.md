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
- `final buy.sql`: Core funnel stage query for visitor-to-buyer tracking.
- `device.sql`: Device-level basket-to-purchase conversion analysis.
- `final cvr.sql`: Daily conversion and revenue trend query.
- `hit order.sql`: Page-order level journey exploration.
- `the whole month of July.sql`: Monthly browsing behavior exploration.
- `advanced_analysis/`: Extended portfolio materials showing deeper analytics thinking and AI-agent workflow.

## 🧠 Advanced Portfolio Extension
To make this project stronger as a modern analytics portfolio piece, I added a dedicated extension folder that highlights both deeper business analysis and responsible AI-agent usage:

- [`advanced_analysis/README.md`](./advanced_analysis/README.md): A next-step analytical framework covering segmentation, hypothesis prioritization, KPI design, and experiment planning.
- [`advanced_analysis/ai-agent-workflow.md`](./advanced_analysis/ai-agent-workflow.md): A practical explanation of how AI agents can accelerate SQL analysis, QA, and stakeholder communication without replacing validation.
- [`advanced_analysis/sql/deeper_analysis_playbook.sql`](./advanced_analysis/sql/deeper_analysis_playbook.sql): Reusable BigQuery SQL templates for device diagnostics, landing-page quality, basket abandonment, visitor segmentation, and opportunity sizing.

## 💡 Why This Matters
This project now demonstrates not only SQL execution and dashboard-driven insight generation, but also:

- stronger analytical prioritization
- clearer business translation
- reusable investigation design
- AI-enabled workflow thinking

That combination better reflects how modern analysts operate in real product and business environments.


---
*Last updated: 2026-04-25*
