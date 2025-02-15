#!/bin/sh

if [ -n "$DOCKER_SERVICE_NAME" ]; then
	NAME="$NODE_NAME"
else
	NAME=$(uname -n)
fi

cleanup() {
	echo "Container is stopping, removing runner '$NAME'..."
	peertube-runner unregister --url $URL --runner-name $NAME
}

trap cleanup SIGTERM

echo "Starting runner $NAME"...

peertube-runner server & sleep 5 && \
peertube-runner register --url $URL --registration-token $TOKEN --runner-name $NAME && \
wait
