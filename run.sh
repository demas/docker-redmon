#!/bin/bash

url='' # redis://:password@127.0.0.1:6379
port='' # 4567
auth='' # admin:admin

if [ -z "${REDIS_URL}" ]; then
  echo "REDIS_URL is not defined"
else
  echo "using REDIS_URL: ${REDIS_URL}"
  url="--redis ${REDIS_URL}"
fi

if [ -z "${HTTP_PORT}" ]; then
  echo "HTTP_PORT is not defined. use default port 4567"
else
  echo "using HTTP_PORT: ${HTTP_PORT}"
  port="--port ${HTTP_PORT}"
fi

if [ -z "${HTTP_AUTH}" ]; then
  echo "HTTP_AUTH is not defined"
else
  echo "using HTTP_AUTH: ${HTTP_AUTH}"
  auth="--secure ${HTTP_AUTH}"
fi

echo "Executing: redmon $url $port $auth"
redmon $REDIS_URL $url $port $auth
