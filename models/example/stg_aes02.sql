WITH
survey AS(
    SELECT * FROM `cloudside-academy.lakshana_test.annual_enterprise_survey02`
),

b AS(
    SELECT
        Year,id,
        value,
        serial_number,
        Industry_aggregation_NZSIOC
    FROM survey
)

select * from b

