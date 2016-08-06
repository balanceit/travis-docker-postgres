#!/bin/bash
echo ${PGHOST}
echo `which psql`
echo 'before first select, should have from_travis table'
psql -c "select table_name from information_schema.tables where table_schema= 'public';" -U postgres -h ${PGHOST} -p 5432 -d docker_test_developement > out
echo 'before creation of from_container'
psql -c "create table from_container (currenttime timestamp not null default current_timestamp);" -U postgres -h ${PGHOST} -p 5432 -d docker_test_developement >> out
echo 'after creation of from_container'
echo 'before second select, should have from_travis and from_container table'
psql -c "select table_name from information_schema.tables where table_schema= 'public';" -U postgres -h ${PGHOST} -p 5432 -d docker_test_developement >> out
cat out
