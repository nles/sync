#!/bin/bash
crontab -l > /tmp/crons.txt
echo "*/5 * * * * bash /app/root/gsync.sh >> /app/cron-log 2>&1" >> /tmp/crons.txt
cron /tmp/crons.txt
rm /tmp/crons.txt
