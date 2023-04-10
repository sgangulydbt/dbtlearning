{{config(
    schema='STAGING',
    database='DEV',
    materialized='table'
)}}

select * from DEV.PUBLIC.NATION limit 5