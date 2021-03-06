# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/bitlbee.local

# BitlBee instant messaging profile
noblacklist /sbin
noblacklist /usr/sbin
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc

netfilter
nonewprivs
private
private-dev
protocol unix,inet,inet6
seccomp
nosound
read-write /var/lib/bitlbee
