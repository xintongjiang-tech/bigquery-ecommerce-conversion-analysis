# Advanced Analysis Extension

This folder expands the original conversion-funnel case study into a stronger portfolio artifact. The goal is to show not only the final insight, but also the analytical depth, prioritization logic, and AI-assisted workflow behind the project.

## What Is Already Validated
The main project README documents three verified headline findings from the current analysis:

1. The largest funnel drop-off happens between **Basket** and **Order Completed**.
2. **Desktop** converts materially better than **Mobile**.
3. Revenue contribution is heavily concentrated in **Desktop** traffic.

Those findings remain the foundation of the case study. This extension focuses on what a strong analyst would do next.

## What This Extension Adds
- A more explicit decision framework for diagnosing the checkout funnel.
- A prioritization layer that connects observed conversion gaps to business actions.
- An AI-agent workflow that shows how analysis can be accelerated without replacing validation.
- Reusable BigQuery SQL templates for deeper segmentation and follow-up investigation.

## Analytical Deep-Dive Framework

### 1. Funnel Friction Decomposition
The original project identifies the biggest leak in the funnel. The next analytical step is to break that leak into more actionable components:

- Device-specific abandonment.
- Entry-page and landing-page quality.
- New versus returning visitor behavior.
- Checkout-step or navigation-path complexity.
- Revenue loss concentration among high-intent users.

This turns a broad conversion problem into a set of testable operational questions.

### 2. Mobile Conversion Diagnostics
Because mobile materially underperforms desktop, the key issue is not just that mobile is worse, but why it is worse. A deeper analysis should check:

- Whether mobile users abandon earlier or later in the journey.
- Whether specific landing pages attract low-intent mobile traffic.
- Whether mobile traffic is skewed toward low-converting acquisition sources.
- Whether checkout navigation creates more page loops or dead ends on smaller screens.

This is where the project can evolve from descriptive reporting into root-cause analysis.

### 3. Revenue Recovery Sizing
A portfolio project becomes more executive-ready when it estimates upside instead of stopping at diagnosis. A practical next step is to size scenarios such as:

- What happens if mobile basket-to-purchase conversion improves to tablet performance?
- What happens if checkout abandonment drops by 5 or 10 percentage points?
- Which segment creates the largest recoverable revenue opportunity: mobile, new users, or specific landing paths?

This creates a bridge between analytics and product prioritization.

## KPI Tree For Follow-Up Analysis
| Layer | KPI | Why It Matters |
|---|---|---|
| Acquisition | Sessions by device/source | Shows where user quality differences begin |
| Engagement | Product views, basket adds, depth of session | Identifies intent before checkout |
| Conversion | Basket-to-purchase rate | Core efficiency metric |
| Commercial | Revenue per session, revenue per purchaser | Quantifies business impact |
| Retention | Returning purchaser share | Highlights long-term value concentration |

## Prioritized Hypotheses
| Hypothesis | Why It Is Plausible | How To Validate | Business Value |
|---|---|---|---|
| Mobile checkout has usability friction | Mobile purchase completion is far below desktop | Compare device-level funnel leakage and exit pages | High |
| High-intent users are dropping during the final step | The largest leak occurs late in the funnel | Inspect users who reached basket but did not complete purchase | High |
| Certain landing pages generate weak traffic quality | Traffic quality often varies by entry page | Compare landing-page cohort conversion and revenue per session | Medium |
| New visitors need more trust signals before purchase | First-time users usually convert less efficiently | Segment new vs returning visitors across the funnel | Medium |
| Checkout complexity is causing loop behavior | Repeated navigation can indicate friction | Analyze path repetition before abandonment | Medium |

## Recommended Experiment Roadmap

### Phase 1: Diagnostic
- Quantify funnel performance by device, source, landing page, and user type.
- Isolate the highest-value abandonment segment.
- Confirm whether the mobile gap appears before basket creation or during checkout completion.

### Phase 2: Product Action
- Simplify the mobile checkout path.
- Reduce unnecessary form fields and payment friction.
- Improve trust cues, delivery clarity, and checkout speed on mobile.

### Phase 3: Commercial Action
- Retarget basket abandoners.
- Personalize follow-up messaging for high-intent non-purchasers.
- Route more budget toward sources with stronger post-basket conversion quality.

## How This Strengthens The Portfolio
This extension makes the project more compelling for analytics, product analytics, and AI-enabled analyst roles because it demonstrates:

- clear business framing
- analytical prioritization
- experimental thinking
- reproducible SQL design
- responsible use of AI agents inside an analytical workflow

## Related Files
- [AI Agent Workflow](./ai-agent-workflow.md)
- [SQL Playbook](./sql/deeper_analysis_playbook.sql)

## Note On Scope
The additional sections in this folder are designed as a next-step analysis blueprint. They build on the validated findings in the main README, but they do not claim that every deeper segment and hypothesis has already been executed in production.
