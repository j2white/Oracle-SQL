/* get user objects by size */
select
segment_name,
segment_type,
tablespace_name,
bytes,
round (bytes / 1024, 2) as kb_size,
round (bytes / 1024 / 1024, 2) as mb_size, 
round (bytes / 1024 / 1024 / 1024, 2) as gb_size

from user_segments
where
segment_type = 'TABLE'

order by
segment_name asc
