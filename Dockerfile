FROM alpine:3.10
RUN apk add --no-cache git

COPY generator.sh /generator.sh
COPY bootstrap.sh /bootstrap.sh

RUN chmod +x /generator.sh
CMD ["sh", "./bootstrap.sh"]