#!/bin/bash
# wait-for-postgres.sh

set -e

host="$1"
shift
cmd="$@"

# while ! netcat -z $host 5432; do
>&2 echo "Postgres is unavailable - sleeping"
sleep 5
# done

>&2 echo "Postgres is up - executing command"
exec $cmd
