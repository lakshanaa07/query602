WITH 
survey AS(
    SELECT * FROM `cloudside-academy.lakshana_test.annual-enterprise-survey02`
),

a AS(
    SELECT 
        Year,
        value,
        serial_number
    FROM a 
)

select * from a
