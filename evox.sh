#!/bin/bash
set -e 

# Clean old local_manifests
rm -rf .repo/local_manifests/

# Local TimeZone
sudo rm -rf /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Kolkata /etc/localtime

# Rom source repo
repo init -u https://github.com/Evolution-X/manifest -b bka --git-lfs
echo "=================="
echo "Repo init success"
echo "=================="

# Clone local_manifests repository
git clone -b Evo-16 https://github.com/Sachinpawar86/local_manifests .repo/local_manifests
echo "============================"
echo "Local manifest clone success"
echo "============================"

# Sync the repositories
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
echo "============================"
echo "Repo sync success"
echo "============================"
