{{ config(schema="STAGING", database="DEV", materialized="table") }}

select
    c_custkey as cust_key,
    c_name as cust_nm,
    c_address as cust_address,
    c_phone as cust_phn_nm,
    n_name as nation,
    r_name as regionname,
    c_acctbal as cust_acct_bal

--from  {{ source("me_customer", "CUSTOMER")}}   
from  {{var('CUSTOMER_tbl')}} 
left join
    {{ source("me_customer", "NATION") }} on customer.c_nationkey = nation.n_nationkey
left join
    {{ source("me_customer", "REGION") }} on nation.n_regionkey = region.r_regionkey
where r_name in ('{{var('region_name')}}')
