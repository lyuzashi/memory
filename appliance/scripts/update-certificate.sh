#!/usr/bin/env bash
certbot renew
cat /etc/letsencrypt/live/example.com/privkey.pem /etc/letsencrypt/live/example.com/cert.pem     > /etc/letsencrypt/live/example.com/merged.pem
