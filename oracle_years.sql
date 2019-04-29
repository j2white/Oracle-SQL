/* generate the years between two dates */

with
--------------------------------------------------------------------------------
dates as (
            select
            TRUNC(TO_DATE('2008-01-01','YYYY-MM-DD')) as date_start,
            TRUNC(TO_DATE('2018-12-31','YYYY-MM-DD')) as date_end
            from dual
            )
--------------------------------------------------------------------------------
select
distinct(extract(year from last_day(to_date(d.date_end + 1 - rownum)))) as year_value
from
dates d,
all_objects
where
trunc(d.date_end + 1 - rownum,'MM') >= trunc(d.date_start,'MM')
order by 1