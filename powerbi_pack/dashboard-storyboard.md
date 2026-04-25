# Dashboard Storyboard

## Design Goal
The dashboard should feel more like a product analytics review than a generic BI report. Keep it simple, analytical, and executive-facing.

Suggested visual style:

- white or warm-neutral background
- dark text with one accent color for emphasis
- use red or amber only for drop-off / underperformance
- avoid overcrowding with too many small charts

## Page 1: Executive Overview

### Purpose
Give a hiring manager or stakeholder the project story in one screen.

### Recommended Visuals
- KPI cards:
  - total visitors
  - total sessions
  - total transactions
  - total revenue
  - conversion rate
- Funnel summary visual:
  - visitors
  - product viewers
  - basket viewers
  - buyers
- Short text box:
  - largest bottleneck is basket to purchase
  - desktop outperforms mobile
  - checkout friction is likely a revenue issue

### Ideal Layout
- Top row: KPI cards
- Left center: funnel visual
- Right center: business takeaway text block
- Bottom row: daily conversion trend

## Page 2: Funnel And Drop-Off

### Purpose
Show exactly where the journey breaks down.

### Recommended Visuals
- Main funnel chart from:
  - total visitors
  - product viewers
  - basket viewers
  - buyers
- Stage conversion table:
  - visit to product view
  - product view to basket
  - basket to purchase
- Drop-off callout card:
  - biggest drop-off stage
- Optional note:
  - exact add-to-cart drop-off should be shown only if validated by the saved funnel query

### Ideal Layout
- Large funnel on the left
- Stage rate matrix or table on the right
- Bottom takeaway banner with one sentence recommendation

## Page 3: Device Performance

### Purpose
Make the desktop versus mobile gap impossible to miss.

### Recommended Visuals
- Clustered bar chart:
  - basket-to-purchase conversion by device
- Bar chart:
  - revenue by device
- Table:
  - device category
  - total visitors
  - basket viewers
  - basket-to-buy conversion
  - revenue share

### Ideal Layout
- Top: conversion comparison
- Bottom left: revenue by device
- Bottom right: device KPI table

## Page 4: Actions And Recommendations

### Purpose
Translate analysis into business action.

### Recommended Visuals
- Priority matrix:
  - mobile checkout audit
  - basket abandonment retargeting
  - landing-page quality review
  - source / channel segmentation
- Text cards:
  - what the business should do now
  - what should be validated next
  - how AI assistance supported the workflow

### Ideal Layout
- Left: action list with expected impact
- Right: methodology and validation notes

## Recommended Captions

### Executive Overview Caption
This dashboard shows that the most meaningful conversion problem happens late in the funnel, where high-intent users fail to complete purchase.

### Device Page Caption
Desktop materially outperforms mobile in basket-to-purchase conversion, suggesting that lower-funnel mobile friction deserves immediate attention.

### Actions Page Caption
The analysis supports product optimization and remarketing actions rather than broad assumptions about traffic quality alone.
