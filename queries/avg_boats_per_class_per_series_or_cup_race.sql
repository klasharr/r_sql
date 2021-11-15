# Here we are quering for handicap boats, change the second NOT IN to filter on Dart 18s or ILCA e.g.
#
# and class not in ('Dart 18', 'ILCA 6', 'ILCA 7', 'ILCA 4.2'  )
# 
# OR 
#
# and class in ( 'ILCA 6', 'ILCA 7', 'ILCA 4.2'  )
#
# OR 
#
# and class = 'Dart 18' 
#

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
 and class not in ('Dart 18', 'ILCA 6', 'ILCA 7', 'ILCA 4.2'  )
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
limit 100
