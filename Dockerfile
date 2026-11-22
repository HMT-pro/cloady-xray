FROM teddysun/xray:latest
COPY config.template.json /config.template.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
