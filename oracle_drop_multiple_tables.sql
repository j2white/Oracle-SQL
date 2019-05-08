/* example for dropping multiple oracle tables in a loop */

CREATE TABLE test_1(c1 VARCHAR2(50));
CREATE TABLE test_2(c1 VARCHAR2(50));
CREATE TABLE test_3(c1 VARCHAR2(50));

BEGIN
  FOR rec IN
    (
      SELECT
        table_name
      FROM
        all_tables
      WHERE
        table_name in ('test_1','test_2','test_3')
    )
  LOOP
    EXECUTE immediate 'DROP TABLE  '||rec.table_name || ' CASCADE CONSTRAINTS';
  END LOOP;
END;