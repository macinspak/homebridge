#!/bin/bash

cd /root/automationbackup

# homebridge
cp -R /var/lib/homebridge homebridge/var/lib
cp -R /etc/default/homebridge homebridge/etc/default
cp -R /etc/systemd/system/homebridge.service homebridge/etc/systemd/system

# system
cp -R /etc/dhcp/dhcpd.conf system/etc/dhcp

# commit any changes to git
git add -A
git commit -m "full backup $(date +%F_%R)"

# push
git push
