-- BigQuery Standard SQL
-- Deep-dive analysis templates for the e-commerce conversion project.
-- These queries are designed as reusable follow-up investigations.
-- Replace the date suffix range as needed for your analysis window.

/*
Query 1: Device-level funnel performance
Purpose:
- Compare how sessions move from visit to product interest to basket to purchase.
- Check whether the mobile gap begins before checkout or during checkout.
*/
WITH session_funnel AS (
  SELECT
    fullVisitorId,
    visitId,
    device.deviceCategory AS device_category,
    IFNULL(totals.visits, 0) AS visits,
    MAX(IF(hits.eCommerceAction.action_type = '2', 1, 0)) AS viewed_product,
    MAX(IF(hits.eCommerceAction.action_type = '3', 1, 0)) AS added_to_basket,
    MAX(IF(totals.transactions IS NOT NULL AND totals.transactions > 0, 1, 0)) AS purchased,
    IFNULL(totals.totalTransactionRevenue / 1000000, 0) AS revenue
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
  UNNEST(hits) AS hits
  WHERE _TABLE_SUFFIX BETWEEN '20170801' AND '20170831'
  GROUP BY 1, 2, 3, 4, 8
)
SELECT
  device_category,
  COUNT(*) AS sessions,
  SUM(viewed_product) AS product_view_sessions,
  SUM(added_to_basket) AS basket_sessions,
  SUM(purchased) AS purchase_sessions,
  SAFE_DIVIDE(SUM(added_to_basket), COUNT(*)) AS session_to_basket_rate,
  SAFE_DIVIDE(SUM(purchased), SUM(added_to_basket)) AS basket_to_purchase_rate,
  SAFE_DIVIDE(SUM(purchased), COUNT(*)) AS overall_conversion_rate,
  SUM(revenue) AS revenue,
  SAFE_DIVIDE(SUM(revenue), COUNT(*)) AS revenue_per_session
FROM session_funnel
GROUP BY 1
ORDER BY revenue DESC;

/*
Query 2: Landing-page quality by device
Purpose:
- Identify whether weak mobile conversion is concentrated on specific entry pages.
*/
WITH landing_page_sessions AS (
  SELECT
    fullVisitorId,
    visitId,
    device.deviceCategory AS device_category,
    (SELECT h.page.pagePath
     FROM UNNEST(hits) AS h
     WHERE h.hitNumber = 1
     LIMIT 1) AS landing_page,
    MAX(IF(hits.eCommerceAction.action_type = '3', 1, 0)) AS added_to_basket,
    MAX(IF(totals.transactions IS NOT NULL AND totals.transactions > 0, 1, 0)) AS purchased,
    IFNULL(totals.totalTransactionRevenue / 1000000, 0) AS revenue
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
  UNNEST(hits) AS hits
  WHERE _TABLE_SUFFIX BETWEEN '20170801' AND '20170831'
  GROUP BY 1, 2, 3, 4, 7
)
SELECT
  device_category,
  landing_page,
  COUNT(*) AS sessions,
  SUM(added_to_basket) AS basket_sessions,
  SUM(purchased) AS purchase_sessions,
  SAFE_DIVIDE(SUM(purchased), COUNT(*)) AS conversion_rate,
  SAFE_DIVIDE(SUM(revenue), COUNT(*)) AS revenue_per_session
FROM landing_page_sessions
WHERE landing_page IS NOT NULL
GROUP BY 1, 2
HAVING COUNT(*) >= 50
ORDER BY device_category, revenue_per_session DESC, sessions DESC;

/*
Query 3: New vs returning visitor conversion
Purpose:
- Check whether conversion weakness is driven mainly by first-time visitors.
*/
WITH visitor_segments AS (
  SELECT
    fullVisitorId,
    visitId,
    device.deviceCategory AS device_category,
    trafficSource.medium AS traffic_medium,
    IF(totals.newVisits = 1, 'new', 'returning') AS visitor_type,
    MAX(IF(hits.eCommerceAction.action_type = '3', 1, 0)) AS added_to_basket,
    MAX(IF(totals.transactions IS NOT NULL AND totals.transactions > 0, 1, 0)) AS purchased,
    IFNULL(totals.totalTransactionRevenue / 1000000, 0) AS revenue
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
  UNNEST(hits) AS hits
  WHERE _TABLE_SUFFIX BETWEEN '20170801' AND '20170831'
  GROUP BY 1, 2, 3, 4, 5, 8
)
SELECT
  device_category,
  visitor_type,
  traffic_medium,
  COUNT(*) AS sessions,
  SUM(added_to_basket) AS basket_sessions,
  SUM(purchased) AS purchase_sessions,
  SAFE_DIVIDE(SUM(purchased), COUNT(*)) AS session_conversion_rate,
  SAFE_DIVIDE(SUM(purchased), SUM(added_to_basket)) AS basket_to_purchase_rate,
  SUM(revenue) AS revenue
FROM visitor_segments
GROUP BY 1, 2, 3
HAVING COUNT(*) >= 25
ORDER BY revenue DESC, sessions DESC;

/*
Query 4: Basket abandoners and exit-page clues
Purpose:
- Focus on high-intent sessions that reached basket but did not purchase.
- Surface exit pages that may indicate checkout friction.
*/
WITH basket_abandoners AS (
  SELECT
    fullVisitorId,
    visitId,
    device.deviceCategory AS device_category,
    MAX(IF(hits.eCommerceAction.action_type = '3', 1, 0)) AS added_to_basket,
    MAX(IF(totals.transactions IS NOT NULL AND totals.transactions > 0, 1, 0)) AS purchased,
    ARRAY_AGG(hits.page.pagePath ORDER BY hits.hitNumber DESC LIMIT 1)[OFFSET(0)] AS last_page
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
  UNNEST(hits) AS hits
  WHERE _TABLE_SUFFIX BETWEEN '20170801' AND '20170831'
  GROUP BY 1, 2, 3
)
SELECT
  device_category,
  last_page,
  COUNT(*) AS abandoning_sessions
FROM basket_abandoners
WHERE added_to_basket = 1
  AND purchased = 0
  AND last_page IS NOT NULL
GROUP BY 1, 2
ORDER BY abandoning_sessions DESC;

/*
Query 5: Opportunity sizing scenario
Purpose:
- Estimate potential extra purchases if mobile basket-to-purchase conversion improves.
- Replace the target rate below with a benchmark from desktop, tablet, or a business goal.
*/
WITH device_summary AS (
  SELECT
    device.deviceCategory AS device_category,
    COUNT(DISTINCT CONCAT(fullVisitorId, '-', CAST(visitId AS STRING))) AS sessions,
    COUNT(DISTINCT IF(hits.eCommerceAction.action_type = '3', CONCAT(fullVisitorId, '-', CAST(visitId AS STRING)), NULL)) AS basket_sessions,
    COUNT(DISTINCT IF(totals.transactions IS NOT NULL AND totals.transactions > 0, CONCAT(fullVisitorId, '-', CAST(visitId AS STRING)), NULL)) AS purchase_sessions
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
  UNNEST(hits) AS hits
  WHERE _TABLE_SUFFIX BETWEEN '20170801' AND '20170831'
  GROUP BY 1
)
SELECT
  device_category,
  basket_sessions,
  purchase_sessions,
  SAFE_DIVIDE(purchase_sessions, basket_sessions) AS current_basket_to_purchase_rate,
  CASE
    WHEN device_category = 'mobile' THEN basket_sessions * 0.15
    ELSE NULL
  END AS target_purchase_sessions,
  CASE
    WHEN device_category = 'mobile' THEN (basket_sessions * 0.15) - purchase_sessions
    ELSE NULL
  END AS incremental_purchase_opportunity
FROM device_summary
ORDER BY basket_sessions DESC;

-- End of playbook.

/*
Query 6: Funnel stage validation and drop-off accounting
Purpose:
- Produce a reproducible visit -> product view -> add to cart -> purchase funnel.
- Make it easier to validate any future claim about add-to-cart drop-off.
- Use this query before stating an exact percentage in a README, resume, or interview.
*/
WITH funnel_base AS (
  SELECT
    CONCAT(fullVisitorId, '-', CAST(visitId AS STRING)) AS session_key,
    MAX(IF(hits.eCommerceAction.action_type = '2', 1, 0)) AS product_view_flag,
    MAX(IF(hits.eCommerceAction.action_type = '3', 1, 0)) AS add_to_cart_flag,
    MAX(IF(totals.transactions IS NOT NULL AND totals.transactions > 0, 1, 0)) AS purchase_flag
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
  UNNEST(hits) AS hits
  WHERE _TABLE_SUFFIX BETWEEN '20170801' AND '20170831'
  GROUP BY 1
),
funnel_counts AS (
  SELECT
    COUNT(*) AS sessions,
    SUM(product_view_flag) AS product_view_sessions,
    SUM(add_to_cart_flag) AS add_to_cart_sessions,
    SUM(purchase_flag) AS purchase_sessions
  FROM funnel_base
)
SELECT
  sessions,
  product_view_sessions,
  add_to_cart_sessions,
  purchase_sessions,
  SAFE_DIVIDE(add_to_cart_sessions, product_view_sessions) AS product_view_to_cart_rate,
  1 - SAFE_DIVIDE(add_to_cart_sessions, product_view_sessions) AS product_view_to_cart_dropoff_rate,
  SAFE_DIVIDE(purchase_sessions, add_to_cart_sessions) AS cart_to_purchase_rate,
  1 - SAFE_DIVIDE(purchase_sessions, add_to_cart_sessions) AS cart_to_purchase_dropoff_rate
FROM funnel_counts;
