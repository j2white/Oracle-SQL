/*  clean up common phone number formatting and 
    quality issues
*/
with
------------------------------------------------
base as (
        select '(000) 000-0000' as phone_number from dual
        union
        select '9999999999' as phone_number from dual
        union
        select '0000000000' as phone_number from dual
        union
        select '(555) 555-9110' as phone_number from dual
        union
        select '5555559110' as phone_number from dual
        )
------------------------------------------------
select
b.phone_number,
trim(leading 0 from (regexp_replace(b.phone_number,'[^0-9A-Za-z]|0+|9999999999', ''))) AS clean_phone

from
base b
