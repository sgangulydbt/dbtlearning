{{config(
    schema='STAGING',
    database='DEV',
    materialized='table'
)}}

select * from "NATION" limit 5