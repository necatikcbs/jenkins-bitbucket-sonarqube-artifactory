#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL

    CREATE USER bitbucketuser;
    CREATE DATABASE bitbucketdb;
    GRANT ALL PRIVILEGES ON DATABASE bitbucketdb TO bitbucketuser;
    
EOSQL