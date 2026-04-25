# Validation And Assumptions

This document makes the analytical process more transparent by separating **validated observations**, **working assumptions**, and **AI-assisted quality checks**.

## What Is Already Validated
The current repository supports these headline conclusions from the existing analysis:

- There is a major drop-off between basket and purchase completion.
- Desktop basket-to-purchase conversion materially outperforms mobile.
- Revenue is disproportionately concentrated in desktop traffic.

These statements are consistent with the current SQL outputs and project summary.

## What Should Not Be Claimed Without Re-Validation
Some portfolio bullets can sound compelling but should not be stated as fixed facts unless the exact query result is stored and reproducible. For example:

- a specific add-to-cart drop-off percentage such as 20 percent
- a claim about the exact checkout step causing friction
- a causal explanation for why mobile underperforms

If these are used in a resume or interview, they should be backed by a saved query result, screenshot, or documented metric definition.

## AI-Assisted Validation Workflow
In this project, Claude Code can be framed as an AI assistant that supports:

- SQL query generation for first-draft analysis logic
- debugging when field logic, aggregation level, or joins need refinement
- iterative refinement of CTE structure, naming, and segmentation
- validation review for consistency between business definitions and SQL outputs

The key portfolio point is not that AI replaced analysis. The stronger claim is that AI accelerated iteration while the analyst retained responsibility for correctness.

## Validation Checklist
Before a metric is presented as a final result, it should pass the following checks:

1. Grain check:
Confirm whether the metric is session-level, user-level, or event-level.

2. Funnel definition check:
Confirm that each stage is defined consistently across all queries.

3. Deduplication check:
Verify that repeated hits or sessions do not inflate stage counts.

4. Denominator check:
Make sure conversion rates use the intended base population.

5. Time-window check:
Confirm that date filters are consistent across all related queries.

6. Revenue check:
Ensure transaction revenue is scaled correctly and tied to the same unit of analysis.

7. Cross-query consistency check:
Compare totals across headline queries to catch silent logic drift.

## Recommended Evidence To Store
To make this project feel more complete and interview-ready, the strongest next step is to preserve supporting evidence for each major claim:

- one saved query for overall funnel stage counts
- one saved query for device-level conversion
- one screenshot or table for the final metrics referenced in the README
- one assumptions note explaining any proxy logic such as page-path-based stage mapping

## Positioning Statement For Portfolio Use
This project uses Claude Code as an AI assistant for SQL query drafting, debugging, and iterative refinement, followed by AI-assisted validation to improve query correctness and consistency. Final conclusions are based on analyst-reviewed SQL logic rather than unverified model output.
