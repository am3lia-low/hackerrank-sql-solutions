SET @rowindex := -1;

SELECT ROUND(AVG(tbl.LAT_N), 4) AS median
FROM (
    SELECT @rowindex := @rowindex + 1 AS indx, LAT_N
    FROM STATION
    ORDER BY LAT_N
) AS tbl
WHERE tbl.indx IN (FLOOR(@rowindex/2), CEILING(@rowindex/2));
