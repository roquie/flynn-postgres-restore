Restore database of failed flynn cluster
----------------------------------------

This a alternative method rather than present by authors.
But it request database credentials to connect.

1) Follow instruction there about zfs volume:
https://gist.github.com/titanous/36754c1da91c632640a7

2) Download database folder (or compress to zip and then download) to local machine/other-server
3) Place postgres files to `flynn-db` folder

```bash
$ tree -L 1 flynn-db/ | head -15
flynn-db/
├── PG_VERSION
├── base
├── global
├── pg-restore
├── pg_clog
├── pg_commit_ts
├── pg_dynshmem
├── pg_hba.conf
├── pg_ident.conf
├── pg_logical
├── pg_multixact
├── pg_notify
├── pg_replslot
├── pg_serial
```
4) Run `docker-compose up`
5) Connect to database and use your credentials to dump sql.

Database recovered. Fine!
