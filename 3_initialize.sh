#!/bin/bash
rm -rf data/var/run/*
rm -rf data/ncbo_logs/*
docker-compose up -d --force-recreate
echo "Startup in progress, showing logs:"
timeout 120s docker-compose logs -f;



echo "Forcing annotatior dictionary generation, this will take a while..."
admin/init-ncbo-cron
admin/populate
admin/regenerate-dictionary


exit 0