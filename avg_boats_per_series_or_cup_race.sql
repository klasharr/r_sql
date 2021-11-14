SELECT
    series_name,
    fleet_name,
    ROUND(AVG(COUNT),
    2) AS avg_boats
FROM
    (
    SELECT
        DATE,
        CONCAT(series_name, ' ', race_name) AS concat_name,
        fleet_name,
        series_name,
        race_name,
        COUNT(*) AS COUNT
    FROM
        `helm_data_temp_table`
    WHERE
STATUS
    NOT IN('DNC', 'OOD')
GROUP BY
    series_name,
    race_name,
    fleet_name
ORDER BY
    `count`
) AS tmpdata
GROUP BY
    series_name,
    fleet_name
ORDER BY
    avg_boats
DESC
    ;
