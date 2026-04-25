# Data Model Notes

## Simplest Build Strategy
The easiest way to build this dashboard is not to import the raw nested Google Analytics table directly into Power BI. Instead, create a few clean summary tables in BigQuery first, then load those results into Power BI.

## Recommended Summary Tables

### 1. `daily_summary`
Source:
- `final cvr.sql`

Fields:
- `date`
- `unique_visitors`
- `total_sessions`
- `total_transactions`
- `total_revenue`
- `conversion_rate`

### 2. `funnel_summary`
Source:
- `final buy.sql`
- or the validation funnel query in `advanced_analysis/sql/deeper_analysis_playbook.sql`

Fields:
- `total_visitors`
- `product_viewers`
- `basket_viewers`
- `buyers`

### 3. `device_summary`
Source:
- `device.sql`

Fields:
- `deviceCategory`
- `total_visitors`
- `basket_viewers`
- `basket_to_buy_cvr`
- `total_revenue`

## Relationship Guidance
If you keep the model simple, you may not need complex table relationships at all. You can treat:

- `daily_summary` as the trend table
- `funnel_summary` as the funnel page table
- `device_summary` as the device comparison table

That is enough for a portfolio dashboard and keeps the model easy to explain in interviews.

## Recommended Import Paths

### Option 1: CSV Import
- Run each SQL query in BigQuery
- Export results to CSV
- Import CSV files into Power BI

### Option 2: BigQuery Connector
- Connect Power BI directly to BigQuery
- Paste each query into Power Query
- Rename each imported result as a clean semantic table

## Practical Note For Mac Users
Power BI Desktop is primarily a Windows application. If you are working on Mac, common options are:

- use Power BI Service with prepared datasets
- run Power BI Desktop on Windows
- use a Windows VM
- build the visuals in another BI tool, then keep this pack as the Power BI handoff specification

## Portfolio Advice
For portfolio purposes, a clean dashboard with three import tables is better than an overly complex semantic model. Recruiters and interviewers care more about:

- whether the visuals answer the business question
- whether the KPI logic is defensible
- whether you can explain the tradeoffs clearly
