Use olympics;
GO

SELECT 
    full_name,
    gender,
    height,
    weight
FROM
    person
        INNER JOIN
    person_region ON person_id = person_id
WHERE
    person_id IN (1 , 2, 3);
