#!/bin/sh

set -e

cat >~/.netrc <<EOF
machine api.heroku.com
    login $1
    password $2
machine git.heroku.com
    login $1
    password $2
EOF

sh -c "heroku pg:backups:capture JADE -a $3"
