#!/usr/bin/env bash
certbot renew
cat /etc/letsencrypt/live/memory.grid.robotjamie.com/privkey.pem /etc/letsencrypt/live/memory.grid.robotjamie.comcert.pem > /etc/letsencrypt/live/memory.grid.robotjamie.com/merged.pem
