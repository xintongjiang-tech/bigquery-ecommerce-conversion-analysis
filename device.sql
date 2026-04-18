select device.deviceCategory,
       count(distinct fullVisitorId) as total_visitors,
       count(distinct(case when h.page.pagePath='/basket.html' then fullVisitorId End)) as basket_viewers,
       SAFE_DIVIDE(
    COUNT(DISTINCT (CASE WHEN h.page.pagePath = '/ordercompleted.html' THEN fullVisitorId END)),
    COUNT(DISTINCT (CASE WHEN h.page.pagePath = '/basket.html' THEN fullVisitorId END))
  ) * 100 AS basket_to_buy_cvr,
     SUM(totals.transactionRevenue) as total_revenue
FROM 
  `bigquery-public-data.google_analytics_sample.ga_sessions_201707*`,
  UNNEST(hits) AS h
WHERE h.type = 'PAGE'
GROUP BY 1
ORDER BY 2 DESC;