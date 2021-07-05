#!/bin/bash

# Configuration page - https://docker-mailserver.github.io/docker-mailserver/edge/config/security/ssl/

#docker run --rm -it \
#  -v $PWD/log/:/var/log/letsencrypt/ \
#  -v $PWD/letsencrypt:/etc/letsencrypt/ \
#  -p 80:80 \
#  certbot/certbot certonly --standalone -d e.domain.com


docker run --rm -it \
  -v /opt/mailserver/log/:/var/log/letsencrypt/ \
  -v /opt/mailserver/letsencrypt/:/etc/letsencrypt/ \
  -p 80:80 \
  -p 443:443 \
  certbot/certbot renew
