# Customer Churn Analysis — Business Findings & Impact Opportunities

## 1. Executive summary

The project dataset contains 1,200 customer records. There are 229 churned customers and 971 retained customers, giving an overall churn rate of **19.08%**. The strongest descriptive patterns are concentrated in customers on month-to-month contracts and customers in their first year. A higher churn rate is also observed among customers with multiple support tickets.

These results can help a subscription business prioritize retention experiments. They do **not** demonstrate that any intervention has already improved retention or generated savings; that would require an implemented program and before/after or controlled measurement.

## 2. Key results from the dataset

| Metric / segment | Result | Business interpretation |
|---|---:|---|
| Total customers | 1,200 | Analysis population |
| Churned customers | 229 | Customers marked `Churn = 1` |
| Retained customers | 971 | Customers marked `Churn = 0` |
| Overall churn rate | 19.08% | Baseline for future retention measurement |
| Month-to-month churn | 26.48% (179/676) | Highest-risk contract segment by observed rate |
| One-year contract churn | 12.75% (38/298) | Lower observed churn than month-to-month |
| Two-year contract churn | 5.31% (12/226) | Lowest observed contract churn rate |
| 0–12 months tenure churn | 41.36% (91/220) | Highest-risk tenure group |
| 13–24 months tenure churn | 21.55% (39/181) | Churn remains elevated after the first year |
| 25–48 months tenure churn | 15.97% (65/407) | Mid-tenure churn is lower but material |
| 49–72 months tenure churn | 8.67% (34/392) | Long-tenure customers have the lowest observed rate |
| Electronic-check churn | 22.08% (89/403) | Highest observed churn by payment method |
| Customers with 3+ support tickets | 28.47% (39/137) | Higher observed churn among repeat-support customers |
| Customers with 0 support tickets | 16.24% (51/314) | Lower observed churn in this group |

### Additional comparison

Average tenure is **24.51 months** for churned customers versus **39.12 months** for retained customers. This is consistent with the high churn rate in the earliest tenure group.

## 3. What this could mean for the business

### A. Prioritize first-year customer retention

The 0–12 month group has a 41.36% churn rate, substantially above the overall 19.08% baseline. A business could introduce an onboarding and early-life retention journey:

- Contact new customers after activation and at key milestones (for example, 30, 60, and 90 days).
- Check whether installation, service setup, billing, and product expectations were met.
- Offer proactive help when usage or support signals indicate friction.
- Track first-year churn by monthly cohort to see whether the intervention works.

**Potential business benefit:** fewer early customer losses and more time for customers to realize value from the service. The size of any improvement must be measured in a pilot.

### B. Test contract-conversion offers carefully

Month-to-month customers have a 26.48% churn rate, compared with 5.31% for two-year customers. This is an association, not proof that moving customers to longer contracts will cause churn to fall. Test transparent, optional annual-plan incentives with suitable customers, and monitor conversion, margin, complaints, and subsequent churn.

**Potential business benefit:** improved customer commitment and more predictable recurring revenue, if the offer is economically attractive and customers choose it voluntarily.

### C. Review the electronic-check payment journey

Electronic-check customers show 22.08% churn. Investigate payment failures, billing confusion, payment preferences, and customer experience before changing policy. Offer convenient alternative payment methods without penalizing customers.

**Potential business benefit:** fewer avoidable payment-related cancellations if friction is confirmed as a contributing factor.

### D. Proactively resolve repeated support issues

Customers with 3+ support tickets have a 28.47% churn rate. Flag repeat-contact customers for a case review, identify recurring issue categories, and aim for first-contact resolution where possible.

**Potential business benefit:** better service experience and fewer preventable cancellations. Ticket count may also reflect customer tenure or issue complexity, so investigate before assuming causation.

## 4. Recommended business action plan

| Priority | Action | Suggested owner | Measurement |
|---|---|---|---|
| 1 | Launch a first-90-day onboarding check-in pilot | Customer Success | 0–12 month churn rate; activation and issue-resolution rates |
| 2 | Review repeat support cases and root causes | Support Operations | Churn rate by ticket band; repeat-contact rate; resolution time |
| 3 | Investigate electronic-check billing experience | Billing / Product | Payment failure rate; cancellation reason; churn by payment method |
| 4 | Test optional annual-plan offers with an eligible segment | Marketing / Retention | Offer acceptance, incremental retention, margin, opt-out/complaint rate |
| 5 | Review results monthly using the Power BI dashboard | Analytics | Overall churn and segment churn trends |

## 5. How to quantify business impact after implementation

Use a measured comparison rather than presenting an assumed saving as a result:

1. Record the baseline churn rate for the target segment before the intervention.
2. Run a pilot with a clearly defined eligible group; where practical, compare it with a similar control group.
3. Measure churn over the same follow-up period for both groups.
4. Calculate the percentage-point change and the relative reduction.
5. Estimate financial impact only using verified customer contribution margin or revenue and the number of *incrementally retained* customers.

Example formulas:

- **Churn-rate change (percentage points)** = Pilot churn rate − baseline/control churn rate.
- **Relative churn reduction (%)** = (Baseline churn rate − pilot churn rate) ÷ baseline churn rate × 100.
- **Estimated incremental retained customers** = Eligible customers × (control churn rate − pilot churn rate).
- **Estimated incremental contribution** = Incremental retained customers × contribution margin per customer over the chosen period − intervention cost.

## 6. Limitations and responsible interpretation

- The dataset contains 1,200 records and is treated as a project/sample dataset; it is not verified live data from a named company.
- This is a descriptive analysis, not a causal study or predictive churn model.
- Segment rates can be affected by sample size, overlapping customer characteristics, and other unobserved factors.
- Satisfaction score does not show a simple monotonic relationship with churn in this dataset; do not claim that low satisfaction alone explains churn.
- Monthly charges on churned records can be summed as an exposure indicator, but this is not automatically realized lost revenue, recoverable revenue, or profit impact.
- Business recommendations are hypotheses to test, not proven outcomes.

## 7. Conclusion

The clearest retention opportunities suggested by this dataset are early-tenure engagement, understanding month-to-month customer needs, reviewing payment friction, and resolving repeat support issues. The analysis gives a business team a focused starting point for experiments and a set of measurable KPIs. Actual business improvement should be claimed only after those actions are implemented and their incremental effect is measured.