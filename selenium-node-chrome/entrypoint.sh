#!/bin/bash

set -e

host="$server"
cmd="$@"
echo "command: $@"
until curl http://$host > /dev/null 2>&1; do
  >&2 echo "Grid is unavailable - sleeping"
  sleep 1
done

>&2 echo "Grid is up - executing command"
sleep 1
exec $cmd
