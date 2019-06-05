docker-postgresql
=================

Adapted from the image found at https://github.com/docker-library/postgres/.

Should work as the [official Postgres image](https://registry.hub.docker.com/_/postgres/).

## Backup

Run `docker exec db_name /usr/local/bin/backup` create a db dump with pg\_dumpall in $BACKUPROOT (defaults to /var/lib/postgresql/backup). The script will gzip the dump and keep the ten latest runs.

## Restore

Restore a pg\_dumpall database dump by mounting it to /restore/dump\_all.sql. The restore script will only run if the database is uninitialized and the file dump\_all.sql exists.
