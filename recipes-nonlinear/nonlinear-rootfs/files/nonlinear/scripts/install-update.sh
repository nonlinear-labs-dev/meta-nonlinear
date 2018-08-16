#!/bin/sh

mkdir /update

if [ -e /mnt/usb-stick/nonlinear-c15-update.tar ]
then
	cp /mnt/usb-stick/nonlinear-c15-update.tar /update
	mv /mnt/usb-stick/nonlinear-c15-update.tar /mnt/usb-stick/nonlinear-c15-update.tar-copied
	cd /update
	tar xvf nonlinear-c15-update.tar
	chmod +x /update/run.sh
	/bin/sh /update/run.sh
fi

