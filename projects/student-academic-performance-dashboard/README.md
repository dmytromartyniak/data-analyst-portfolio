
# Student Academic Performance Dashboard | Power BI

## Project overview

This educational project combines homework assignments 10 and 11 from the GoIT Data Analyst course into one interactive Power BI report. The dashboard explores student academic performance by subject, class, grade type, and time period.

## Project goals

- Compare average grades across subjects and classes.
- Track changes in average grades over time.
- Explore the distribution of grade types and negative grades.
- Allow users to move from a class-level overview to student-level details.

## Tools and techniques

- Power BI
- DAX measures stored in a dedicated `_Measures` table
- Calendar table and time-series analysis
- Slicers, filters, and visual interactions
- Drill-through for class-level detail
- Tooltip page with month-over-month metrics

## Report pages

### Academic Performance Overview

An overview page with KPI cards for average, exam, test, and homework grades; average-grade comparisons by subject and class; a timeline; and the distribution of grade types.

### Class Performance

A class-level analysis page with slicers for academic year, grade type, and department. It includes a multi-row card, a class metrics table, negative-grade analysis, and monthly `MoM_AG%` changes.

### Class Details

A drill-through page that allows a selected class to be explored at the student level and by grade type.

### MoM%_AG_Details

A tooltip page showing average grade, previous-period grade, and month-over-month change (`MoM_AG%`).

## Visuals

![Academic performance overview](academic_performance_overview.png)

![Class performance](class_performance.png)

## Data privacy

Do not publish screenshots or files containing real student personal data. Names should be anonymized or masked before publication when necessary.
