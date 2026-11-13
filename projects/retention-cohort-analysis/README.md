# Cohort Retention and Acquisition Channel Analysis

## Project overview

This project analyzes user retention by cohort and compares promotional and organic acquisition groups. The analysis was completed as part of my Data Analyst studies at GoIT.

## Goal

To organize user activity data into cohorts, calculate retention over time, and make the comparison between promotional and organic user groups easier to explore.

## Tools

- SQL
- Google Sheets

## Analysis workflow

1. Cleaned the source data and checked it for issues that could affect the analysis.
2. Joined the relevant data tables in SQL.
3. Defined each user's **cohort month** from their first relevant activity.
4. Calculated the **month offset** between the cohort month and subsequent activity.
5. Calculated retention rates by cohort and month offset.
6. Compared promotional and organic groups using the available acquisition labels.
7. Presented the results in Google Sheets with pivot tables and conditional formatting.

## Methodology

- **Cohort month:** the month in which a user first met the project's cohort-entry condition.
- **Month offset:** the number of months between a user's cohort month and an activity month.
- **Retention rate:** returning users for a cohort and month offset divided by the size of that cohort.

The exact entry condition, activity definition, and segment rules should match the SQL queries and source data used in the project.

## Deliverables

- SQL queries: add the final query files or a link to them here.
- Google Sheets report: add a view-only link here if the sheet can be shared.
- Visual output: add an exported cohort table or screenshot only if the underlying data may be shown publicly.

## Key findings

- The analysis included 600 users: 358 organic sign-ups (59.7%) and 242 promo sign-ups (40.3%).
- Organic cohorts were relatively stable, with approximately 50–70 new users per month.
- Promo cohorts grew from 34 users in January to 47 users in June.
- Organic retention was high and relatively stable: first-month retention averaged about 81% across cohorts, ranging from 73% to 87%. The January organic cohort retained 56% of users by month 5.
- Promo cohorts showed lower retention. First-month retention averaged 56% and declined from 62% for the January cohort to 47% for the May cohort.
- In month 3, retention was 32% for the January promo cohort and 35% for the February promo cohort, compared with 68–80% for organic cohorts.

This comparison suggests that promo acquisition increased sign-ups, while organic cohorts retained a larger share of users. A possible next step would be to review campaign targeting and messaging alongside acquisition volume.

## Visuals

![Cohort retention overview](cohort_retention_overview.png)

## SQL

[View the SQL query](cohort_retention_analysis.sql)

## Data notes

The source dataset is not included in this repository unless it is public and safe to share. Sensitive or proprietary information should remain private; use an anonymized sample only when appropriate.

## Repository structure

```text
projects/retention-cohort-analysis/
└── README.md
```

