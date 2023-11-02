WITH
{{config(materialized='view')}}

inter AS(
    SELECT
        t1.id,
        t1.year, t1.Industry_aggregation_NZSIOC, t2.value

    FROM
        {{ ref('stg_aes01') }} AS t2
    RIGHT JOIN
        (
        SELECT
                {{ dbt_utils.star(from=ref('stg_aes01')) }},
                {{ dbt_utils.star(from=ref('stg_aes02'), except=["value","Year","id","serial_number"])>
                CAST(value AS INT64) AS value_as_int
        FROM
            {{ ref('stg_aes02') }}
        GROUP BY
            id,
            Industry_aggregation_NZSIOC,
            serial_number,
            value,
            Year
) AS t1
    ON
        t1.id = t2.serial_number
    WHERE
        t1.year=2013
)

SELECT * FROM inter
