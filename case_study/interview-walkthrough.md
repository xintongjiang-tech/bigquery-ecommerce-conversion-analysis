# Interview Walkthrough

## 30-Second Version
I analyzed the Google Analytics e-commerce public dataset in BigQuery to understand where users were dropping out of the purchase funnel and which segments were underperforming. The most important result was that the largest leak happened late in the funnel, between basket and purchase completion, and that mobile users converted much worse than desktop users. I used SQL for funnel reconstruction and segmentation, Power BI for communication, and Claude Code as an AI assistant to speed up query drafting, debugging, and validation.

## 2-Minute Version
The business question behind the project was simple: if an e-commerce site is attracting traffic, where exactly is revenue being lost inside the conversion journey?

I used the Google Analytics sample dataset in BigQuery to reconstruct the funnel and compare performance across device categories. From there, I focused on three things:

1. Funnel stage drop-off
I mapped the journey from visit to product interest to basket and purchase, then measured where users were leaving the process.

2. Segment performance
I compared device-level conversion behavior and found a meaningful desktop-versus-mobile performance gap.

3. Business translation
Instead of stopping at the metric, I framed the result as a product and revenue problem: if high-intent users are abandoning late, then checkout friction is likely a higher-priority issue than traffic generation.

I also used Claude Code as an AI assistant to help accelerate SQL generation, debugging, iterative refinement, and validation checks. That improved speed, but final conclusions stayed grounded in reviewed SQL logic.

## 5-Minute Version

### Problem Framing
The objective was to understand how customers move through the purchase funnel and identify where conversion efficiency breaks down. I wanted the analysis to go beyond reporting a conversion rate and instead support product prioritization.

### Method
- Queried the Google Analytics public dataset in BigQuery
- Used SQL to define funnel stages and build segment-level comparisons
- Reviewed device differences to identify where conversion quality diverged
- Structured outputs so they could be translated into Power BI visuals and executive recommendations

### Findings
- The largest funnel leakage occurs between basket and purchase completion.
- Desktop users are much more likely to complete checkout than mobile users.
- Revenue is heavily concentrated in desktop traffic, which increases the business importance of the device gap.

### Interpretation
This pattern suggests that the business does not only have an acquisition problem. It likely has a lower-funnel usability or checkout-friction problem, especially on mobile.

### AI-Assisted Workflow
Claude Code supported the project as an AI assistant in four ways:

- converting business questions into SQL analysis plans
- accelerating first-draft query generation
- helping debug and refactor query logic
- improving validation discipline by surfacing denominator and consistency risks

### What I Would Do Next
- validate add-to-cart and checkout-stage leakage with a reproducible saved query
- segment results by landing page and traffic source
- quantify revenue upside scenarios if mobile conversion improves
- test mobile checkout simplification and basket abandonment recovery tactics

## Strong Closing Line
The value of this project is not just that it finds a conversion problem. It shows how I move from a business question, to structured SQL analysis, to validated insight, to concrete product recommendations, while also using AI tools responsibly inside the workflow.
