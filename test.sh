#!/bin/sh

set +xe

HOST="127.0.0.1:5000"

curl -vv -X OPTIONS \
  "http://$HOST"

curl -vv -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -d '{"jsonrpc":"2.0","id":1,"method":"ping","params":["Hello World!"]}' \
  "http://$HOST"
