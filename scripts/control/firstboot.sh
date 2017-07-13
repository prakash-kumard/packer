#!/bin/bash

exec > /var/log/firstboot.log 2>&1

echo "FIRST BOOT"

service networking stop
service networking start
service networking restart

ls -ltr /opt/hcoe/startup