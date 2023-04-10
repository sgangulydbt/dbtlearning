{{config(
    schema='STAGING',
    database='DEV',
    materialized='table'
)}}

select 
    c_custkey as cust_key,
    c_name as cust_nm,
    c_address as cust_address,
    c_phone as cust_phn_nm,
    n_name as nation,
    r_name as regionname,
    c_acctbal as cust_acct_bal
    
from {{var('CUSTOMER_tbl')}}
left join {{source('me_customer','NATION')}} on CUSTOMER.C_NATIONKEY=NATION.N_NATIONKEY
left join {{source('me_customer','REGION')}} on NATION.N_REGIONKEY=REGION.R_REGIONKEY
where r_name in ('{{var('region_name')}}')