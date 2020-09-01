FROM docker:stable

COPY entrypoint.sh /entrypoint.sh
COPY install-hstore.sh /docker-entrypoint-initdb.d/
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

