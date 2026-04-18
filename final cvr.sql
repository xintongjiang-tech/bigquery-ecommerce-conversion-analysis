SELECT date,
       count(distinct fullVisitorId) as unique_visitors,
       count(visitId) as total_sessions,
       sum(if(totals.transactions is not null,1,0)) as total_transactions, #if(..., 1, 0)：因为没买东西的人该字段是 null。这行代码的意思是：如果这个会话成交了，记作 1，没成交记作 0，最后加总。漏斗的底端
       sum(cast(totals.transactionRevenue as Int64))/1000000 as total_revenue,
      SAFE_DIVIDE(SUM(IF(totals.transactions IS NOT NULL, 1, 0)), COUNT(DISTINCT fullVisitorId)) * 100 AS conversion_rate
from `bigquery-public-data.google_analytics_sample.ga_sessions_201708*`
Group by date
order by date;

