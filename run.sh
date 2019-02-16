#! /bin/bash

docker run -d \
  --name cloudflare-certbot-cron \
  --restart unless-stopped \
  -v "$(pwd)/tls-config:/config" \
  -v "$(pwd)/tls-config:/etc/letsencrypt" \
  cloudflare-certbot-cron:latest
