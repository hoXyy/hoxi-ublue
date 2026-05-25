#!/usr/bin/env bash

set -oue pipefail

echo 'Downgrading GRUB...'

mkdir /tmp/downgrade-grub
cd /tmp/downgrade-grub

dnf5 install -y koji
koji download-build --arch=x86_64 --arch=noarch grub2-2.12-55.fc44
dnf5 install -y ./*.rpm --allow-downgrade
dnf5 remove -y koji

cd /
rm -rf /tmp/downgrade-grub
