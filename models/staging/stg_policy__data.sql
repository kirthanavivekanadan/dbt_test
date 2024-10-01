select 
policy_number,
subsegments,
company_code
from 
{{ source('policy','policy_data')}}