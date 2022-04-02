#!/bin/bash
figlet Restic-Restore
apt install restic -y
cp -r $PREFIX/bin/restic $HOME/restic
cd $HOME
unset LD_PRELOAD
rm -rf $PREFIX
cd $HOME
restic restore -r /sdcard/restic-backup -tag termux -target/latest
