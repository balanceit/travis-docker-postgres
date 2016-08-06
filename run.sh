#!/bin/bash
echo ${PGHOST}
psql -c "select table_name from information_schema.tables where table_schema= 'public';" -U postgres -h ${PGHOST} -p 5432 -d docker_test_developement
psql -c "create table from_container (currenttime timestamp not null default current_timestamp);" -U postgres -h ${PGHOST} -p 5432 -d docker_test_developement
psql -c "select table_name from information_schema.tables where table_schema= 'public';" -U postgres -h ${PGHOST} -p 5432 -d docker_test_developement
