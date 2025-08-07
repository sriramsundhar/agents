FROM mongo:8
COPY ./sync/keyfile /data/replica.key
COPY ./sync/mongoLocal/dw/* /tmp/dw/
COPY ./sync/scripts/restore.sh /docker-entrypoint-initdb.d/restore.sh
RUN chmod 400 /data/replica.key \
    && chown 999:999 /data/replica.key
