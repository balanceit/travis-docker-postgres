#!/bin/bash
echo ${PGHOST}
echo `which psql`
echo 'before first select, should have from_travis table'
psql -c "select table_name from information_schema.tables where table_schema= 'public';" -U postgres -h ${PGHOST} -p 5432 -d docker_test_developement --echo-all --echo-errors  --output=file
cat file
