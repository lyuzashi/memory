#!/usr/bin/env bash
KEYDIR=/var/www/certificates
LEKEYDIR=/etc/letsencrypt/live/memory.grid.robotjamie.com
certbot renew
cat $LEKEYDIR/privkey.pem $LEKEYDIR/cert.pem > $KEYDIR/merged.pem
cp $LEKEYDIR/chain.pem $KEYDIR/chain.pem
chown -R :www-data $KEYDIR
chmod -R g+x $KEYDIR

/etc/init.d/lighttpd restart