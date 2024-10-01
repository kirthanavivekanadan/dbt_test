
with policy_data as
(
    select * from {{ref('stg_policy__data')}}

),
fr_30 as 
(
    select * from {{ref('stg_policy__fr_30')}}
)
, final_select as
(
   select pol_number,
    TERM_RIDER_FACE_AMOUNT,
TR_STAT_RESERVES 
from policy_data pd 
left join fr_30 fr on fr.pol_number = pd.policy_number
)


select * from final_select