#!/bin/sh
today=$(date +"%s")
docker exec -it lqhdb /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'Facaila666!' -Q "BACKUP DATABASE [Dev] TO DISK = N'/var/opt/mssql/data/dev.bak' WITH NOFORMAT, NOINIT, NAME = 'dev-full', SKIP, NOREWIND, NOUNLOAD, STATS = 10"
docker cp lqhdb:/var/opt/mssql/data/dev.bak /home/lqh/dbbackups/dev_${today}.bak



# Note that need to Make Shell Script executable
# https://fedingo.com/how-to-run-shell-script-as-cron-job/