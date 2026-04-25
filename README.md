# E-commerce Conversion Funnel Analysis

[![SQL](https://img.shields.io/badge/SQL-Advanced-orange.svg)]()
[![BigQuery](https://img.shields.io/badge/BigQuery-Google%20Cloud-4285F4.svg)]()
[![Dashboard](https://img.shields.io/badge/Dashboard-Web%20Demo-0F766E.svg)]()
[![AI Assisted](https://img.shields.io/badge/Workflow-Claude%20Code-111111.svg)]()

## Start Here
If you want to understand this project quickly, use this order:

1. Read the key conclusions below.
2. Open the validated metrics in [`results/validated-metrics.md`](./results/validated-metrics.md).
3. View the web dashboard in [`docs/index.html`](./docs/index.html).
4. Review the main SQL files in the repository root.
5. Open [`case_study/executive-case-study.md`](./case_study/executive-case-study.md) for the formal written case study.

## Project Goal
This project analyzes the Google Analytics e-commerce public dataset in BigQuery to understand where users drop off in the purchase funnel, how device behavior affects conversion, and what actions the business should prioritize to recover revenue.

## Final Conclusions
The analysis supports three main business conclusions:

1. The largest bottleneck is late in the funnel, between basket and completed purchase.
2. Desktop users convert much more efficiently than mobile users.
3. Revenue is heavily concentrated in desktop traffic, which makes the mobile gap commercially important.

These findings suggest that lower-funnel checkout friction, especially on mobile, is a higher-priority issue than top-of-funnel traffic generation.

## Data-Backed Metrics
The repository currently uses these validated headline metrics from the project analysis:

| Metric | Value | Why It Matters |
|---|---:|---|
| Basket to purchase drop-off | 79.42% | Shows the biggest leak happens at the final purchase stage |
| Desktop basket-to-purchase conversion | 26.89% | Indicates strong lower-funnel efficiency on desktop |
| Mobile basket-to-purchase conversion | 8.11% | Signals a material mobile conversion problem |
| Desktop share of total revenue | 94.29% | Confirms that device performance has real revenue impact |

For the metric notes, evidence wording, and reuse guidance, see [`results/validated-metrics.md`](./results/validated-metrics.md).

## Recommendations
- Prioritize a mobile checkout UX audit.
- Retarget basket abandoners because they are high-intent users.
- Break results down further by landing page, traffic source, and visitor type.
- Validate follow-up hypotheses with reproducible segment-level queries before making causal claims.

## Web Dashboard
This repository now includes a lightweight web dashboard so the project can be presented visually without Power BI:

- [`docs/index.html`](./docs/index.html)
- [`docs/README.md`](./docs/README.md)
- Planned GitHub Pages URL: `https://xintongjiang-tech.github.io/bigquery-ecommerce-conversion-analysis/`

The dashboard summarizes the headline metrics, the device gap, the business interpretation, and the recommended actions in a format that works well for portfolio review.

## Core SQL Files
- `final buy.sql`: Funnel stage counts for visitors, product viewers, basket viewers, and buyers
- `device.sql`: Device-level basket-to-purchase conversion and revenue
- `final cvr.sql`: Daily visitors, sessions, transactions, revenue, and conversion rate
- `hit order.sql`: Page-order level behavior exploration
- `the whole month of July.sql`: Monthly browsing behavior exploration

## AI-Assisted Workflow
Claude Code was used as an AI assistant to support:

- SQL query generation
- debugging and iterative refinement
- validation review for correctness and consistency
- documentation of assumptions, caveats, and follow-up analyses

Final conclusions are still framed as analyst-reviewed results rather than unverified model output.

## Repository Structure

### Read First
- [`results/validated-metrics.md`](./results/validated-metrics.md)
- [`docs/index.html`](./docs/index.html)
- [`case_study/executive-case-study.md`](./case_study/executive-case-study.md)

### Analysis And Validation
- [`advanced_analysis/README.md`](./advanced_analysis/README.md)
- [`advanced_analysis/validation-and-assumptions.md`](./advanced_analysis/validation-and-assumptions.md)
- [`advanced_analysis/sql/deeper_analysis_playbook.sql`](./advanced_analysis/sql/deeper_analysis_playbook.sql)

### Presentation Assets
- [`case_study/README.md`](./case_study/README.md)
- [`dashboard_screenshots/README.md`](./dashboard_screenshots/README.md)
- [`powerbi_pack/README.md`](./powerbi_pack/README.md)

## Notes On Evidence
This repository now separates:

- validated headline metrics
- broader analytical recommendations
- future hypotheses that still need deeper query support

That makes the project easier to trust and easier to explain.

---
Last updated: 2026-04-25
