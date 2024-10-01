select pol_number,
TERM_RIDER_FACE_AMOUNT,
TR_STAT_RESERVES from 
{{ source('policy','FR_30_CY_RIDERS')}}
