#!/bin/bash
ifconfig
/sbin/ip route
echo ${PGHOST}
echo `which psql`
echo 'ping 172.17.42.1'
ping -t 3 172.17.42.1
echo 'ping 10.128.0.1'
ping -t 3 10.128.0.1
echo 'before first select, should have from_travis table'
psql --version
psql -c "select 1;" -U postgres -h 172.17.42.1 -p 5432 -d docker_test_developement --echo-all --echo-errors
psql -c "select 1;" -U postgres -h 10.128.0.1 -p 5432 -d docker_test_developement --echo-all --echo-errors
psql -c "select 1;" -U postgres -h localhost -p 5432 -d docker_test_developement --echo-all --echo-errors
psql -c "select 1;" -U postgres -h 127.0.0.1 -p 5432 -d docker_test_developement --echo-all --echo-errors
