# Suggested DAX Measures

These measures assume you import flattened tables into Power BI rather than the full nested Google Analytics schema.

## Recommended Tables
- `daily_summary`
- `funnel_summary`
- `device_summary`

## Daily Summary Measures

```DAX
Total Visitors = SUM(daily_summary[unique_visitors])
```

```DAX
Total Sessions = SUM(daily_summary[total_sessions])
```

```DAX
Total Transactions = SUM(daily_summary[total_transactions])
```

```DAX
Total Revenue = SUM(daily_summary[total_revenue])
```

```DAX
Conversion Rate % = DIVIDE([Total Transactions], [Total Visitors], 0)
```

## Funnel Measures

```DAX
Funnel Visitors = SUM(funnel_summary[total_visitors])
```

```DAX
Funnel Product Viewers = SUM(funnel_summary[product_viewers])
```

```DAX
Funnel Basket Viewers = SUM(funnel_summary[basket_viewers])
```

```DAX
Funnel Buyers = SUM(funnel_summary[buyers])
```

```DAX
Visit To Product View % = DIVIDE([Funnel Product Viewers], [Funnel Visitors], 0)
```

```DAX
Product View To Basket % = DIVIDE([Funnel Basket Viewers], [Funnel Product Viewers], 0)
```

```DAX
Basket To Purchase % = DIVIDE([Funnel Buyers], [Funnel Basket Viewers], 0)
```

```DAX
Basket Drop-Off % = 1 - [Basket To Purchase %]
```

## Device Measures

```DAX
Device Visitors = SUM(device_summary[total_visitors])
```

```DAX
Device Basket Viewers = SUM(device_summary[basket_viewers])
```

```DAX
Device Revenue = SUM(device_summary[total_revenue])
```

```DAX
Device Basket To Buy % = AVERAGE(device_summary[basket_to_buy_cvr])
```

```DAX
Revenue Share % = DIVIDE([Device Revenue], CALCULATE([Device Revenue], ALL(device_summary[deviceCategory])), 0)
```

## Narrative Card Measures

```DAX
Best Performing Device =
MAXX(
    TOPN(1, VALUES(device_summary[deviceCategory]), [Device Basket To Buy %], DESC),
    device_summary[deviceCategory]
)
```

```DAX
Lowest Performing Device =
MAXX(
    TOPN(1, VALUES(device_summary[deviceCategory]), [Device Basket To Buy %], ASC),
    device_summary[deviceCategory]
)
```

## Formatting Notes
- Format conversion measures as percentage with 1 or 2 decimals.
- Format revenue measures as currency.
- Keep KPI card labels short and business-facing.
