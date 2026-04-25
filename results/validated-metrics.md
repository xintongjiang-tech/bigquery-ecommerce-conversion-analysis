# Validated Metrics

This file keeps the most important project metrics in one place so the repository has a clear evidence layer.

## Headline Metrics

| Metric | Value | Interpretation | Source |
|---|---:|---|---|
| Basket to purchase drop-off | 79.42% | The largest leak occurs at the final purchase stage | Project analysis summary and funnel results |
| Desktop basket-to-purchase conversion | 26.89% | Desktop users complete checkout at a much higher rate | Device-level conversion analysis |
| Mobile basket-to-purchase conversion | 8.11% | Mobile users convert far less efficiently than desktop users | Device-level conversion analysis |
| Desktop share of total revenue | 94.29% | Revenue is heavily concentrated in desktop traffic | Revenue-by-device analysis |

## What These Metrics Support
These numbers support the following conclusions:

1. Checkout completion is the main bottleneck in the funnel.
2. The mobile experience likely deserves more attention than broad traffic expansion.
3. Device-level conversion quality is a real revenue issue, not only a reporting difference.

## Important Caution
These are the validated headline metrics currently used in the project narrative. If you later update the BigQuery logic or analysis window, you should refresh this file so the README, dashboard, and interview materials stay aligned.

## Reuse Guidance
If you reference this project in a resume, interview, or portfolio, the safest phrasing is:

- identified a 79.42 percent drop-off between basket and purchase completion
- found desktop basket-to-purchase conversion at 26.89 percent versus 8.11 percent on mobile
- showed that desktop contributed 94.29 percent of total revenue

## Related Files
- [`validated-metrics.csv`](./validated-metrics.csv)
- [`../docs/index.html`](../docs/index.html)
- [`../advanced_analysis/validation-and-assumptions.md`](../advanced_analysis/validation-and-assumptions.md)
