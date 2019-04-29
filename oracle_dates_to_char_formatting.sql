/*  oracle date formats
    lower case argument generates lower case output */

select
sysdate, 
to_char(sysdate, 'HH') as hour_of_day,
to_char(sysdate, 'D') as day_num_of_week,
to_char(sysdate, 'DD') as day_num_of_month,
to_char(sysdate, 'DY') as day_name_abbreviated,
to_char(sysdate, 'MM') as month_num_two_postion,
to_char(sysdate, 'MON') as month_name_abbreviated,
to_char(sysdate, 'MONTH') as month_name_full,
to_char(sysdate, 'YYYY') as current_year

from
dual
