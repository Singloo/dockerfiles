run a cron job to backup postgresQL db
and upload file to Aliyun OSS(to do)

```bash
docker run -d --env-file ./backup.list -v /apps/backups:/backups --restart always --name pg-backup meanless/postgres-backup 
```