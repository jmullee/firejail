# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/opera-beta.local

# Opera-beta browser profile
noblacklist ~/.config/opera-beta
noblacklist ~/.pki
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc

netfilter

whitelist ${DOWNLOADS}
mkdir ~/.config/opera-beta
whitelist ~/.config/opera-beta
mkdir ~/.cache/opera
whitelist ~/.cache/opera
mkdir ~/.pki
whitelist ~/.pki
include /etc/firejail/whitelist-common.inc
