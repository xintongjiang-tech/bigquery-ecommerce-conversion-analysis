# Executive Case Study

## Project Objective
This project analyzes the Google Analytics e-commerce public dataset in BigQuery to identify where conversion efficiency breaks down, how device behavior affects purchase completion, and which actions would most likely improve revenue outcomes.

## Business Context
For an e-commerce business, strong traffic alone is not enough. The more important question is whether visitors move efficiently through the purchase funnel. If high-intent users abandon late in the journey, the business may be losing revenue due to friction in product discovery, checkout flow, or device-specific experience.

## Analytical Approach
The analysis was structured around three layers:

1. Funnel reconstruction
The customer journey was mapped from visit to product interest, basket activity, and final purchase completion.

2. Segment comparison
Device-level performance was compared to determine whether conversion quality differed meaningfully between desktop and mobile.

3. Business translation
Results were interpreted in terms of product, conversion, and revenue implications rather than reported as isolated metrics.

## Validated Findings
The current project narrative is based on the following headline metrics:

- basket-to-purchase drop-off: 79.42 percent
- desktop basket-to-purchase conversion: 26.89 percent
- mobile basket-to-purchase conversion: 8.11 percent
- desktop share of total revenue: 94.29 percent

These metrics point to a consistent pattern: the most important weakness occurs late in the funnel, and mobile underperforms desktop by a substantial margin.

## Interpretation
The findings suggest that the primary commercial issue is not simply traffic generation. Instead, the lower funnel appears to be the more urgent problem area, especially where users have already demonstrated purchase intent by reaching the basket stage.

The device gap further suggests that mobile friction may be reducing the efficiency of conversion at a meaningful scale. Because desktop accounts for the majority of revenue, the difference in user experience is not only behavioral but also financially significant.

## Recommended Actions
- conduct a focused mobile checkout UX audit
- investigate payment, form, or navigation friction in the lower funnel
- retarget basket abandoners with recovery messaging
- segment the analysis further by landing page, traffic source, and visitor type
- validate any deeper explanatory claim with reproducible query outputs before presenting it as causal

## AI-Assisted Workflow
Claude Code supported the project as an AI assistant in four practical ways:

- converting business questions into SQL analysis structure
- accelerating SQL drafting and refinement
- helping surface logic and consistency risks during validation
- improving documentation, narrative clarity, and repository organization

AI support improved analytical speed and structure, while final conclusions remained tied to reviewed SQL outputs and validated headline metrics.

## Repository Assets
- `README.md` for the project summary
- `results/` for validated metrics
- `docs/` for the web dashboard
- `advanced_analysis/` for deeper analytical and validation materials
