# E-commerce Conversion Funnel Analysis in BigQuery

[![SQL](https://img.shields.io/badge/SQL-Advanced-orange.svg)]()
[![BigQuery](https://img.shields.io/badge/BigQuery-Google%20Cloud-4285F4.svg)]()
[![Power BI](https://img.shields.io/badge/Visualization-Power%20BI-F2C811.svg)]()
[![AI Assisted](https://img.shields.io/badge/Workflow-Claude%20Code-111111.svg)]()

## Overview
This project analyzes e-commerce customer behavior in the Google Analytics public dataset using BigQuery SQL and dashboard storytelling. The goal is to understand where users drop off in the purchase funnel, which customer segments underperform, and how analytics can be translated into product and revenue decisions.

Beyond the core SQL analysis, this repository is structured as a portfolio-ready case study. It highlights not only the final business insights, but also the analytical workflow, validation discipline, and responsible use of AI assistance during SQL generation, debugging, iterative refinement, and documentation.

## Business Problem
E-commerce teams rarely struggle because they lack traffic alone. More often, the real challenge is that users enter the funnel but fail to convert efficiently. This project investigates:

- where the largest funnel leak occurs
- whether mobile behavior materially underperforms desktop
- how navigation and session behavior relate to purchase completion
- which follow-up actions would create the clearest revenue upside

## Executive Summary
The analysis points to a clear conversion efficiency problem in the lower funnel:

- The largest drop-off occurs between basket and purchase completion.
- Desktop users convert far more efficiently than mobile users.
- Revenue contribution is heavily concentrated in desktop traffic.

Taken together, these findings suggest that checkout friction, especially on mobile, is a more urgent business issue than top-of-funnel traffic generation.

## Key Findings
1. Basket-to-purchase is the most critical bottleneck.
The funnel shows a major late-stage drop-off, indicating that many users reach high purchase intent but do not complete checkout.

2. Desktop significantly outperforms mobile.
Desktop basket-to-purchase conversion is substantially higher than mobile, which points to a likely mobile UX, navigation, or payment-friction problem.

3. Revenue is concentrated in desktop sessions.
Desktop contributes the overwhelming majority of revenue, reinforcing that device-specific conversion quality is commercially important, not just statistically interesting.

## Recommendations
- Prioritize a mobile checkout UX audit to identify field friction, payment barriers, and page-speed issues.
- Retarget basket abandoners because they represent high-intent users with incomplete purchases.
- Break funnel performance down further by landing page, acquisition source, and visitor type to isolate the highest-value recovery opportunities.
- Use experiment-driven optimization rather than broad redesign assumptions.

## Tech Stack
- BigQuery for querying Google Analytics public data
- SQL for funnel logic, segmentation, aggregation, and validation
- Power BI for dashboarding and business storytelling
- Claude Code as an AI assistant for query drafting, debugging, refinement, and validation support

## Repository Guide

### Core SQL
- `final buy.sql`: Core funnel stage query for visitor-to-buyer tracking
- `device.sql`: Device-level basket-to-purchase conversion analysis
- `final cvr.sql`: Daily conversion and revenue trend query
- `hit order.sql`: Page-order level journey exploration
- `the whole month of July.sql`: Monthly browsing behavior exploration

### Portfolio Extensions
- [`advanced_analysis/`](./advanced_analysis/README.md): Deep-dive analytical framework, AI workflow, validation notes, and reusable SQL templates
- [`case_study/`](./case_study/README.md): Interview-ready project narrative and presentation materials
- [`powerbi_pack/`](./powerbi_pack/README.md): Dashboard build pack with storyboard, DAX measures, and data-model guidance
- [`dashboard_screenshots/`](./dashboard_screenshots/README.md): Screenshot checklist and gallery structure for dashboard presentation

## AI-Assisted Analytics Workflow
This repository is intentionally positioned as an example of modern analytics work, where AI support improves speed without weakening rigor.

Claude Code was used as an AI assistant to support:

- SQL query generation from business questions
- debugging and iterative refinement of logic
- review of funnel definitions, denominators, and consistency risks
- documentation of assumptions, caveats, and next-step analyses

The final analytical claims remain grounded in analyst-reviewed SQL rather than unverified model output.

## Validation Philosophy
This project distinguishes between:

- validated observations supported by current SQL logic
- working hypotheses that require deeper segmentation
- explanatory narratives that should not be overstated as causal proof

That separation matters in portfolio work because strong analytics is not only about finding an interesting number, but about knowing which claims are fully supported and which still need evidence.

## Suggested Interview Angle
If you present this project in interviews, the strongest framing is:

1. Start with the business problem and why conversion efficiency matters.
2. Walk through the funnel and device-level findings.
3. Explain how you used SQL to isolate the bottleneck.
4. Show how AI assistance accelerated query iteration and validation.
5. Finish with the product and revenue actions the business should prioritize.

## Next Best Additions
If you want to push the project even further, the next highest-value additions would be:

- exported Power BI dashboard screenshots
- a one-page executive summary slide
- a saved metrics table that backs every headline figure in the README
- a short video walkthrough or Loom link

## Project Assets
- [Advanced Analysis](./advanced_analysis/README.md)
- [AI Agent Workflow](./advanced_analysis/ai-agent-workflow.md)
- [Validation and Assumptions](./advanced_analysis/validation-and-assumptions.md)
- [Deep-Dive SQL Playbook](./advanced_analysis/sql/deeper_analysis_playbook.sql)
- [Case Study](./case_study/README.md)
- [Interview Walkthrough](./case_study/interview-walkthrough.md)
- [Power BI Build Pack](./powerbi_pack/README.md)
- [Dashboard Screenshot Guide](./dashboard_screenshots/README.md)

---
Last updated: 2026-04-25
