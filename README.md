# Developer Launch Funnel & 24-Hour SLA Bottleneck Analysis

## Business Context
In high-volume app store launch operations (50+ monthly developer titles across Early Access, Pre-registration, Indie Corner, and Family/Kids), maintaining under-24-hour turnaround SLAs is critical to hitting go-live windows. This project uses SQL to join launch pipeline logs with developer studio metadata to pinpoint regional and campaign-level bottlenecks.

## Tools & SQL Techniques Used
* **Relational Joins:** `LEFT JOIN` to enrich launch logs with studio tier and regional attributes.
* **Conditional Aggregation:** `CASE WHEN` statements inside `SUM()` to flag >24-hour SLA breaches without filtering out baseline volume.
* **Grouping & Ranking:** Multi-metric `GROUP BY` summaries ranked with `ORDER BY` to prioritize operational intervention.

## Key Operational Findings & Recommendations
1. **EMEA Pipeline Bottleneck:** EMEA recorded a 100% SLA breach rate (39.0-hour average turnaround vs. 21.0 hours in APAC and NA), driven heavily by low-tier studio submissions stalling in pre-launch checks.
2. **Pre-Registration Friction:** `Pre-reg` campaigns showed the highest stall concentration, indicating a need for earlier readiness verification and standardized onboarding checklists before intake.
