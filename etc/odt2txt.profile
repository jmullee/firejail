# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/odt2txt.local

# odt2txt profile
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc

caps.drop all
nogroups
nonewprivs
noroot
nosound
protocol unix
seccomp
netfilter
net none
no3d
shell none
tracelog

blacklist /tmp/.X11-unix

private-bin odt2txt
private-tmp
private-dev
private-etc none

read-only ${HOME}
