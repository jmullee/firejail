# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/vivaldi.local

# Vivaldi browser profile
noblacklist ~/.cache/vivaldi

# Vivaldi browser profile
noblacklist ~/.config/vivaldi
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc

netfilter

whitelist ${DOWNLOADS}
mkdir ~/.config/vivaldi
whitelist ~/.config/vivaldi
mkdir ~/.cache/vivaldi
whitelist ~/.cache/vivaldi
include /etc/firejail/whitelist-common.inc
