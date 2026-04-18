SELECT
  COUNT(DISTINCT (CASE WHEN h.page.pagePath = '/ordercompleted.html' THEN fullVisitorId END)) AS total_monthly_buyers,
  COUNT(DISTINCT CASE WHEN totals.transactions IS NOT NULL THEN visitId END) AS total_monthly_transactions,
  SAFE_DIVIDE(
    COUNT(DISTINCT (CASE WHEN h.page.pagePath = '/ordercompleted.html' THEN fullVisitorId END)) 
    - 
    COUNT(DISTINCT CASE WHEN totals.transactions IS NOT NULL THEN visitId END),
    
    COUNT(DISTINCT CASE WHEN totals.transactions IS NOT NULL THEN visitId END)
  ) * 100 AS monthly_gap_percentage,
  SAFE_DIVIDE(

  COUNT(DISTINCT (CASE WHEN h.page.pagePath = '/ordercompleted.html' THEN fullVisitorId END)),

  COUNT(DISTINCT (CASE WHEN h.page.pagePath = '/basket.html' THEN fullVisitorId END))
) * 100 AS basket_to_buy_cvr,
 SAFE_DIVIDE(
    COUNT(DISTINCT (CASE WHEN h.page.pagePath = '/ordercompleted.html' THEN fullVisitorId END)),
    COUNT(DISTINCT fullVisitorId)
  ) * 100 AS overall_cvr_percent
FROM 
  `bigquery-public-data.google_analytics_sample.ga_sessions_201707*`,
  UNNEST(hits) AS h
WHERE 
  h.type = 'PAGE';