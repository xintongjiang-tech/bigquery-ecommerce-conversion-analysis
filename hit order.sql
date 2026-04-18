select fullVisitorId,
      visitId,
      visitNumber,
      h.page.pagePath,
      h.type,
      h.hitNumber
From `bigquery-public-data.google_analytics_sample.ga_sessions_20170801`,
UNNEST(hits) as h
where h.type='PAGE'
order by fullVisitorId,visitId,h.hitNumber
limit 100;