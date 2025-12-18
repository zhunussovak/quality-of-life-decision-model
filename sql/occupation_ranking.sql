CREATE TABLE occupation_balance_ranking AS
SELECT
    occupation_type,
    AVG(avg_work_hours_per_day) AS avg_work_hours,
    AVG(avg_rest_hours_per_day) AS avg_rest_hours,
    AVG(avg_sleep_hours_per_day) AS avg_sleep_hours,
    AVG(avg_exercise_hours_per_day) AS avg_exercise_hours,
    (
        -AVG(avg_work_hours_per_day)
        + AVG(avg_rest_hours_per_day)
        + AVG(avg_sleep_hours_per_day)
        + AVG(avg_exercise_hours_per_day)
    ) AS balance_score
FROM quality_of_life
GROUP BY occupation_type
ORDER BY balance_score DESC;
