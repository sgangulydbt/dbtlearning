 {{ config(database="analytics") }}
select *
from raw.stripe.payment
