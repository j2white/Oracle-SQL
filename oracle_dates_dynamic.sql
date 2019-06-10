/* generate various dates based on today's date */

select
sysdate as today,
trunc(sysdate-1) as yesterday,
trunc(sysdate,'day') as curr_week_start,
trunc(sysdate,'day') + 6 as curr_week_end,
to_date(trunc(last_day(add_months(sysdate,-1))+1),'yyyy-mm-dd') as first_curr_month,
last_day(sysdate) as last_curr_month,
add_months(trunc(last_day(add_months(sysdate,-1))+1),-1) as first_prior_month,
last_day(add_months(sysdate,-1)) as last_prior_month,
add_months(trunc(last_day(add_months(sysdate,-1))+1),-2) as first_prior_two_month,
last_day(add_months(trunc(last_day(add_months(sysdate,-1))+1),-2)) as last_prior_two_month,
add_months(trunc(last_day(add_months(sysdate,-1))+1),-3) as first_prior_three_month,
last_day(add_months(trunc(last_day(add_months(sysdate,-1))+1),-3)) as last_prior_three_month,
add_months(sysdate,-6) as six_months_before_today,
to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss') as load

from 
dual
