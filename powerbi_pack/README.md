# Power BI Build Pack

This folder contains a practical build pack for recreating the project as a portfolio-ready dashboard in Power BI.

Because this repository was prepared in an environment without Power BI Desktop, it does not include a native `.pbix` file. Instead, this pack provides the next best thing:

- dashboard page structure
- KPI definitions
- suggested visuals
- field mapping
- recommended DAX measures
- build steps for Power BI Desktop or Power BI Service

## What You Can Build From This Pack
Using the files in this folder, you can create a clean interview-ready dashboard with:

1. An executive overview page
2. A funnel and drop-off page
3. A device performance page
4. An actions and recommendations page

## Files
- [`dashboard-storyboard.md`](./dashboard-storyboard.md): Page-by-page dashboard layout and recommended visuals
- [`dax-measures.md`](./dax-measures.md): Suggested Power BI measures and KPI logic
- [`data-model-notes.md`](./data-model-notes.md): Guidance for shaping BigQuery outputs into a simple Power BI model

## Recommended Workflow
1. Run the BigQuery SQL queries in this repository.
2. Export the result tables as CSV or connect Power BI directly to BigQuery.
3. Create the tables described in `data-model-notes.md`.
4. Add the measures from `dax-measures.md`.
5. Build the pages described in `dashboard-storyboard.md`.
6. Export screenshots into `dashboard_screenshots/`.

## Best Portfolio Positioning
If you do not want to overclaim, the cleanest wording is:

This repository includes a Power BI dashboard design pack that translates the SQL analysis into a stakeholder-ready dashboard structure, including KPI definitions, DAX guidance, and presentation layout.
