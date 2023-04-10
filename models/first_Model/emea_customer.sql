select 
    c_custkey as cust_key,
    c_name as cust_nm,
    c_address as cust_address,
    c_phone as cust_phn_nm,
    n_name as nation,
    r_name as regionname,
    c_acctbal as cust_acct_bal



from "DEV"."PUBLIC"."CUSTOMER" 
left join "DEV"."PUBLIC"."NATION" on CUSTOMER.C_NATIONKEY=NATION.N_NATIONKEY
left join "DEV"."PUBLIC"."REGION" on NATION.N_REGIONKEY=REGION.R_REGIONKEY
where r_name in ('EUROPE','MIDDLE EAST','AFRICA') 