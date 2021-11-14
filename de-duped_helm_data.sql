SELECT
    *
FROM
    `helm_data_temp_table`
WHERE
    series_name NOT IN(
        'The Opener 2021',
        'James Day Cup 2021',
        'Owerdale Cup 2021',
        'RNLI Pennant 2021'
    ) AND
STATUS
    NOT IN('DNC', 'OOD')
ORDER BY
    DATE ASC
