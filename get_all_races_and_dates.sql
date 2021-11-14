# Get all races and dates. Useful for seeing combined events

SELECT DISTINCT
    DATE,
    series_name,
    race_name,
    race_id
FROM
    helm_data
GROUP BY
    DATE,
    series_name
ORDER BY
    DATE ASC
LIMIT 100
