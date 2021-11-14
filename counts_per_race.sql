SELECT
        DATE,
        fleet_name,
        series_name,
        race_name,
        COUNT(*) as count
    FROM
        `helm_data_table`
    WHERE status not in ('DNC','OOD') 
GROUP BY
    series_name,
    race_name, 
    fleet_name 
ORDER BY `count`  DESC LIMIT 200;
