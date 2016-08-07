#!/bin/bash
echo ${PGHOST}
echo `which psql`
echo 'before first select, should have from_travis table'
psql --version
psql -c "select 1;" -U postgres -h 10.128.0.1 -p 5432 -d docker_test_developement --echo-all --echo-errors
psql -c "select 1;" -U postgres -h localhost -p 5432 -d docker_test_developement --echo-all --echo-errors
psql -c "select 1;" -U postgres -h 127.0.0.1 -p 5432 -d docker_test_developement --echo-all --echo-errors
