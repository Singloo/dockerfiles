#! /bin/sh

# exit if a command fails
set -e

apk update

apk add curl ca-certificates

curl -L https://github.com/odise/go-cron/releases/download/v0.0.7/go-cron-linux.gz | zcat > /usr/local/bin/go-cron

chmod a+x /usr/local/bin/go-cron

apk add --update nodejs npm

apk del ca-certificates
# cleanup
rm -rf /var/cache/apk/*