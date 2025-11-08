-- QUERY UNO
SELECT
    CONCAT(Name, "(", SUBSTRING(Occupation, 1, 1), ")")
FROM OCCUPATIONS
ORDER BY Name;

-- QUERY TWO
SELECT
    CONCAT("There are a total of ", COUNT(Name), " ", LCASE(Occupation), "s.")
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Name), Occupation;
