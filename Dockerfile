FROM alpine:3.10
RUN apk add --no-cache git
COPY generator.sh /generator.sh
RUN chmod +x /generator.sh
CMD ["sh", "/generator.sh"]