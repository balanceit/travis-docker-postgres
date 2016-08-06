#!/bin/bash
psql -c "select table_name from information_schema.tables where table_schema= 'public';" -U postgres -h ${PGHOST} -p 5432 -d docker_test_developement
