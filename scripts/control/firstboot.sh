#!/bin/bash

exec > /var/log/firstboot.log 2>&1

echo "FIRST BOOT"

ls -ltr /opt/hcoe/startup
