#!/bin/bash

rm -rf .repo/local_manifests/

# Local TimeZone
sudo rm -rf /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/India /etc/localtime

# Rom source repo
repo init -u https://github.com/VoltageOS/manifest.git -b 15-qpr2 --git-lfs
echo "=================="
echo "Repo init success"
echo "=================="

# Clone local_manifests repository
git clone -b Volt-15-QPR2 https://github.com/Sachinpawar86/local_manifests .repo/local_manifests
echo "============================"
echo "Local manifest clone success"
echo "============================"

# Sync the repositories
repo sync
echo "============================"
