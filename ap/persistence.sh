#!/bin/sh
# This is just a sample script that can be used as a crontab job to keep the sysctl.conf file updated, placing this script and the sysctl tuned script under /etc/persistent will prevent these files to be deleted too
cp /etc/persistent/sysctl.conf /etc/sysctl.conf
sleep 1
sysctl -p /etc/sysctl.conf
logger "SYSCTL CHANGES APPLIED"
