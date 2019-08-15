FROM alpine:3.10
COPY generator.sh /generator.sh
RUN chmod +x /generator.sh
CMD ["sh", "/generator.sh"]