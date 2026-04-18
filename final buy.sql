SELECT
  -- 第一层：全站总独立访客 (Top of Funnel)
  COUNT(DISTINCT fullVisitorId) AS total_visitors,

  -- 第二层：看了产品详情页的人 (通过路径关键词筛选)
  COUNT(DISTINCT (
    CASE WHEN h.page.pagePath LIKE '%shop+by+brand%' THEN fullVisitorId END
  )) AS product_viewers,

  -- 第三层：进入了购物车页面的人
  COUNT(DISTINCT (
    CASE WHEN h.page.pagePath = '/basket.html' THEN fullVisitorId END
  )) AS basket_viewers,

  -- 第四层：最终下单成功的人 (这是我们要的最终转化)
  COUNT(DISTINCT (
    CASE WHEN h.page.pagePath = '/ordercompleted.html' THEN fullVisitorId END
  )) AS buyers

FROM 
  `bigquery-public-data.google_analytics_sample.ga_sessions_20170801`,
  UNNEST(hits) AS h
WHERE 
  h.type = 'PAGE';