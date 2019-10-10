# Docker Image for Cloudflare Certbot

This is a docker image that runs Let's Encrypt Cerbot to generate an SSL Certificate using DNS validation in Cloudflare.

## Usage 

```
docker run -d \
  --name cloudflare-certbot-cron \
  --restart unless-stopped \
  -v "$(pwd)/tls-config:/config" \
  -v "$(pwd)/tls-config:/etc/letsencrypt" \
  cloudflare-certbot-cron:latest
 ```
