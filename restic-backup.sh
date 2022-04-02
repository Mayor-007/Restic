#!/bin/bash
apt update && apt upgrade -y
apt install figlet -y
figlet Restic-Backup
mkdir -p /sdcard/restic-backup
restic init -r /sdcard/restic-backup
restic backup -r /sdcard/restic-backup -tag termux $PREFIX
