/* generate various dates based on today's date */

select
sysdate,
add_months(sysdate,-6) as minus_6_month_from_today,
to_char(trunc(last_day(add_months(sysdate,-1))+1),'yyyy-mm-dd HH24:MI') as first_d_month,
last_day(sysdate) as last_d_month,
trunc(sysdate-1) as yesterday,
last_day(add_months(sysdate,-1)) as last_day_prior_month,
add_months(trunc(last_day(add_months(sysdate,-1))+1),-1) as start_1_months_ago,
last_day(add_months(trunc(last_day(add_months(sysdate,-1))+1),-1)) as end_1_months_ago,
add_months(trunc(last_day(add_months(sysdate,-1))+1),-2) as start_2_months_ago,
last_day(add_months(trunc(last_day(add_months(sysdate,-1))+1),-2)) as end_2_months_ago,
add_months(trunc(last_day(add_months(sysdate,-1))+1),-3) as start_3_months_ago,
last_day(add_months(trunc(last_day(add_months(sysdate,-1))+1),-3)) as end_3_months_ago

from dual
