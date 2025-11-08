-- ahh i was wondering why they didn't ask that from the start
SELECT
    ROUND(
        SQRT(
            POWER((MAX(LAT_N) - MIN(LAT_N)), 2) +
            POWER((MAX(LONG_W) - MIN(LONG_W)), 2)
        ),
        4
    )
FROM STATION
