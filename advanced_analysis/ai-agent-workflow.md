# AI Agent Workflow For This Analytics Project

This document explains how AI agents can be used to strengthen a data analysis project without weakening analytical rigor. In this project, the AI agent is best positioned as an **analysis copilot**, not as the source of truth.

## Where AI Agents Add Real Value

### 1. Turning Business Questions Into Metric Definitions
A strong analysis starts by translating broad business questions into measurable logic. AI agents help accelerate this step by converting requests such as:

- Why is mobile underperforming?
- Where is the biggest funnel leak?
- Which segment should the business fix first?

into structured metric plans:

- funnel stage definitions
- segmentation rules
- denominator and numerator logic
- candidate dimensions for slicing results

This reduces ambiguity before writing SQL.

### 2. Drafting And Refactoring BigQuery SQL
AI agents are useful for:

- drafting CTE-based SQL skeletons
- rewriting long queries for readability
- suggesting segmentation logic
- converting business logic into reusable query templates
- standardizing naming and comments

This shortens the path from question to first working query.

### 3. Logic Review And QA
A high-quality AI-assisted workflow should use the model to review for common analytical risks such as:

- double-counting sessions or users
- mixing session-level and user-level metrics
- inconsistent funnel stage definitions
- misleading denominator choices
- overclaiming causality from descriptive analysis

The model can surface likely mistakes quickly, but final verification still belongs to the analyst.

### 4. Insight Packaging
After the SQL is validated, AI agents can help transform raw outputs into:

- executive summaries
- stakeholder-ready recommendations
- slide or dashboard narration
- experiment proposals
- concise GitHub documentation

This is especially valuable when the same findings need to be communicated to both technical and non-technical audiences.

### 5. Reproducible Project Documentation
A polished portfolio project is more than a finished chart. AI agents can help maintain:

- README structure
- methodology notes
- assumption logs
- SQL playbooks
- experiment backlogs

That makes the project easier to review, extend, and discuss in interviews.

## Suggested AI-Agent Workflow
1. Define the business question in plain language.
2. Ask the AI agent to translate it into measurable KPIs and segments.
3. Draft the SQL with explicit comments and assumptions.
4. Manually validate counts, joins, and funnel logic in BigQuery.
5. Use the AI agent again to summarize findings and frame business recommendations.
6. Store the methodology, caveats, and reusable queries in the repository.

## Example Prompts

### Metric Design Prompt
> Convert this business question into a BigQuery analysis plan: "Why is mobile basket-to-purchase conversion much lower than desktop?" Include KPI definitions, segmentation ideas, and validation checks.

### SQL Drafting Prompt
> Write BigQuery Standard SQL to compare basket-to-purchase conversion by device category using GA sessions data. Use readable CTEs and note assumptions clearly.

### QA Prompt
> Review this funnel query for double-counting risk, inconsistent denominators, and any mismatch between session-level and user-level logic.

### Narrative Prompt
> Turn these device-level funnel outputs into an executive summary with three business implications and two next-step experiments.

## Guardrails
To show strong AI-agent usage in a portfolio, it is important to document the guardrails as clearly as the benefits:

- AI suggestions are not accepted without SQL-level validation.
- Observed results are separated from inferred explanations.
- Reusable prompts are treated as accelerators, not evidence.
- Every important metric needs a traceable definition.
- Recommendations should stay proportional to the evidence.

## Why This Matters In A Portfolio
Many analytics projects show SQL and dashboards. Fewer projects show how the analyst works. This workflow demonstrates that the project owner can:

- use AI tools productively
- preserve analytical discipline
- move faster from vague question to structured answer
- communicate both technical and business outcomes

That combination is especially valuable for modern analytics, product analytics, and AI-enabled business intelligence roles.
