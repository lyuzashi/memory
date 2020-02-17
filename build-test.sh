#!/usr/bin/env bash

hdiutil makehybrid -o init.iso -hfs -joliet -iso -default-volume-name cidata next/
