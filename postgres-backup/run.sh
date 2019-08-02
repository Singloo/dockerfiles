#! /bin/sh

set -e

exec go-cron -s "$SCHEDULE" -p 8888 /bin/sh backup.sh