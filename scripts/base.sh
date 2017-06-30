#!/bin/bash

set -e
set -x

export http_proxy="http://web-proxy.austin.hpecorp.net:8080"
export https_proxy="http://web-proxy.austin.hpecorp.net:8080"

apt-get update
apt-get -y install linux-headers-$(uname -r)

sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=sudo' /etc/sudoers
sed -i -e 's/%sudo  ALL=(ALL:ALL) ALL/%sudo  ALL=NOPASSWD:ALL/g' /etc/sudoers

echo "UseDNS no" >> /etc/ssh/sshd_config

apt-get -y autoremove
apt-get -y clean

apt-get install apt-utils
apt-get install bash-completion
apt-get install ntp
apt-get install coreutils
apt-get install open-vm-tools
