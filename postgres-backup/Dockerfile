FROM postgres:alpine

ADD install.sh install.sh

RUN sh install.sh && rm install.sh

ENV POSTGRES_DB **None**
ENV POSTGRES_DB_FILE **None**
ENV POSTGRES_HOST **None**
ENV POSTGRES_PORT 5432
ENV POSTGRES_USER **None**
ENV POSTGRES_PASSWORD **None**
ENV POSTGRES_EXTRA_OPTS '-Z9'
ENV SCHEDULE '@daily'
ENV BACKUP_DIR '/backups'
ENV BACKUP_KEEP_DAYS 7
ENV BACKUP_KEEP_WEEKS 4
ENV BACKUP_KEEP_MONTHS 6



VOLUME /backups

ADD backup.sh /backup.sh
RUN chmod a+x /backup.sh
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["exec /usr/local/bin/go-cron -s \"$SCHEDULE\" -- /backup.sh"]
