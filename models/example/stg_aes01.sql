WITH 
survey AS(
    SELECT * FROM `cloudside-academy.lakshana_test.annual-enterprise-survey01`
),

a AS(
    SELECT 
        id,
        year,
        serial_number,
        Industry_aggregation_NZSIOC
    FROM a 
)

select * from a
