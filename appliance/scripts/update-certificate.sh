#!/usr/bin/env bash
certbot renew
tar zcvf /media/backup/letsencrypt_backup.tar.gz /etc/letsencrypt