FROM mongo:5.0.26
COPY ./mongo/keyfile /data/replica.key
COPY ./mongo/mongoLocal/dw/* /tmp/dw/
COPY ./mongo/scripts/restore.sh /docker-entrypoint-initdb.d/restore.sh
RUN chmod 400 /data/replica.key \
    && chown 999:999 /data/replica.key
