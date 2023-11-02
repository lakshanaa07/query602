WITH
survey AS(
    SELECT * FROM `cloudside-academy.lakshana_test.annual_enterprise_survey01`
),

a AS(
    SELECT
        id,value,
        year,
        serial_number
    FROM survey
)

select * from a
