FROM alpine:latest

RUN apk add --update --no-cache fail2ban && mkdir -p /var/run/fail2ban

ENTRYPOINT ["/usr/bin/fail2ban-client"]
CMD ["-f", "start"]
