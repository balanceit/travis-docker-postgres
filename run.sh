#!/bin/bash
echo ${PGHOST}
echo `which psql`
echo 'before first select, should have from_travis table'
psql -c "select table_name from information_schema.tables where table_schema= 'public';" -U pos -h ${PGHOST} -p 543 -d test_developement --echo-all --echo-errors  --output=file
cat file
