# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/hedgewars.local

# whitelist profile for Hedgewars (game)
noblacklist ${HOME}/.hedgewars

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
seccomp
tracelog

private-dev
private-tmp

mkdir     ~/.hedgewars
whitelist ~/.hedgewars
include /etc/firejail/whitelist-common.inc
