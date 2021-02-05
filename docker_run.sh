#!/bin/sh

docker run \
  -e POSTGRES_USER=$DB_USER \
  -e POSTGRES_PASSWORD=$DB_PASSWORD \
  -e POSTGRES_DB=$DB_NAME \
  -d -p 5432:5432 postgis/postgis:$PSQL_VERSION-$PSQL_VERSION
