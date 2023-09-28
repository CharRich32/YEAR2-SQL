Use olympics;
GO

SELECT 
    full_name,
    weight,
    CASE
        WHEN weight < 50 THEN 'Low'
        WHEN weight >= 50 AND weight <= 100 THEN 'Average'
        WHEN weight > 100 THEN 'High'
    END evaluation
FROM
    person;


