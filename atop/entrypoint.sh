#!/bin/sh

set -e 

# atop snapshot every 30s
sed -i 's/INTERVAL=600.*/INTERVAL=30/g' /etc/periodic/daily/atop

# cron will only kick in at the end of the day, start now
/etc/periodic/daily/atop &

echo 'Starting cron. You can view atop data via docker exec -it <NAME> atop -r'

# cron manages atop
exec crond -f -d 8
