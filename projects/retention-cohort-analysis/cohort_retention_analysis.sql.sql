WITH users_clean AS (
    SELECT user_id,
           promo_signup_flag,
           CASE
               WHEN replace(replace(split_part(trim(signup_datetime), ' ', 1), '.', '-'), '/', '-') ~ '^\d{1,2}-\d{1,2}-\d{4}$'
               THEN to_date(replace(replace(split_part(trim(signup_datetime), ' ', 1), '.', '-'), '/', '-'), 'DD-MM-YYYY')
               WHEN replace(replace(split_part(trim(signup_datetime), ' ', 1), '.', '-'), '/', '-') ~ '^\d{1,2}-\d{1,2}-\d{2}$'
               THEN to_date(replace(replace(split_part(trim(signup_datetime), ' ', 1), '.', '-'), '/', '-'), 'DD-MM-YY')
           END AS signup_date
    FROM project.cohort_users_raw
),
events_clean AS (
    SELECT event_id,
           user_id,
           event_type,
           revenue,
           CASE
               WHEN replace(replace(split_part(trim(event_datetime), ' ', 1), '.', '-'), '/', '-') ~ '^\d{1,2}-\d{1,2}-\d{4}$'
               THEN to_date(replace(replace(split_part(trim(event_datetime), ' ', 1), '.', '-'), '/', '-'), 'DD-MM-YYYY')
               WHEN replace(replace(split_part(trim(event_datetime), ' ', 1), '.', '-'), '/', '-') ~ '^\d{1,2}-\d{1,2}-\d{2}$'
               THEN to_date(replace(replace(split_part(trim(event_datetime), ' ', 1), '.', '-'), '/', '-'), 'DD-MM-YY')
           END AS event_date
    FROM project.cohort_events_raw
),
joined AS (
    SELECT u.user_id,
           u.promo_signup_flag,
           date_trunc('month', u.signup_date)::date AS cohort_month,
           date_trunc('month', e.event_date)::date AS activity_month,
           e.event_type,
           (EXTRACT(YEAR FROM e.event_date) - EXTRACT(YEAR FROM u.signup_date)) * 12
           + (EXTRACT(MONTH FROM e.event_date) - EXTRACT(MONTH FROM u.signup_date)) AS month_offset
    FROM users_clean u
    JOIN events_clean e ON e.user_id = u.user_id
    WHERE e.event_date IS NOT NULL
      AND u.signup_date IS NOT NULL
      AND e.event_type IS NOT NULL
      AND e.event_type <> 'test_event'
)
SELECT promo_signup_flag,
       cohort_month,
       month_offset,
       COUNT(DISTINCT user_id) AS users_total
FROM joined
WHERE activity_month >= '2025-01-01'
  AND activity_month <= '2025-06-01'
GROUP BY promo_signup_flag, cohort_month, month_offset
ORDER BY promo_signup_flag, cohort_month, month_offset;