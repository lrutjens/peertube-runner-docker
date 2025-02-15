FROM alpine:latest

RUN apk add --no-cache nodejs npm ffmpeg
RUN npm install -g @peertube/peertube-runner

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
