#!/usr/bin/env bash
sleep 5
if [ -f /boot/pi-delete.waiting ] ; then
  deluser -f -remove-home pi
  if [ $? -eq 0 ]; then
    rm /boot/pi-delete.waiting
  fi
fi
