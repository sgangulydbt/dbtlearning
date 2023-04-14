{{ config( materialized="ephemeral") }}

select * from {{ ref('emea_customer') }}
 union 
select * from {{ ref('as_customer') }}
union
select * from {{ ref('me_customer') }}