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

## Results and interpretation

Add only conclusions that are directly supported by the completed analysis. For example, describe a visible pattern in a particular cohort or segment only after checking the final table. Do not add invented percentages, business impact, or recommendations.

## Data notes

The source dataset is not included in this repository unless it is public and safe to share. Sensitive or proprietary information should remain private; use an anonymized sample only when appropriate.

## Repository structure

```text
projects/retention-cohort-analysis/
└── README.md
```

When ready, you can add a `sql/` folder for final queries and an `images/` folder for public-safe visuals.
