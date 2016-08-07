#!/bin/bash
ifconfig
/sbin/ip route
nmap 172.17.42.1
nmap 10.128.0.1
nmap 127.0.0.1

# echo ${PGHOST}
# echo ${parent-host}
# echo `which psql`
# echo 'before first select, should have from_travis table'
# psql --version
psql -c "select 1;" -U postgres -h 172.17.42.1 -p 5432 -d docker_test_developement --echo-all --echo-errors
# psql -c "select 1;" -U postgres -h 10.128.0.1 -p 5432 -d docker_test_developement --echo-all --echo-errors
# psql -c "select 1;" -U postgres -h localhost -p 5432 -d docker_test_developement --echo-all --echo-errors
# psql -c "select 1;" -U postgres -h 127.0.0.1 -p 5432 -d docker_test_developement --echo-all --echo-errors
# psql -c "select 1;" -U postgres -h 10.0.3.1 -p 5432 -d docker_test_developement --echo-all --echo-errors
# psql -c "select 1;" -U postgres -h 172.17.0.5 -p 5432 -d docker_test_developement --echo-all --echo-errors
# psql -c "select 1;" -U postgres -h parent-host -p 5432 -d docker_test_developement --echo-all --echo-errors
