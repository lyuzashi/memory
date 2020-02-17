#!/usr/bin/env bash

SDBOOT=/Volumes/boot
ARM_VERSION=6 # ARM version may vary by target device

FILES="cmdline.txt pi-init2 appliance"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

if [ ! -f $SDBOOT/cmdline.original.txt ] ; then
  cp $SDBOOT/cmdline.txt $SDBOOT/cmdline.original.txt
fi

touch $SDBOOT/ssh

export GOPATH=$DIR
export GOOS=linux
export GOARCH=arm
export GOARM=$ARM_VERSION 
go get -u golang.org/x/sys/unix
go build -o pi-init2 pi-init2 

cp -a $FILES /Volumes/boot

echo "Appliance installed on boot partition."
echo "To complete setup, wait for reboot then ssh pi@memory.local"
echo "use default Raspberry Pi password."
