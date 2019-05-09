#!/usr/bin/env bash
cd /var/www/html/keeweb
git fetch origin gh-pages
git reset origin/gh-pages
git checkout -t origin/gh-pages
