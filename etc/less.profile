quiet
# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/less.local

# less profile
ignore noroot
include /etc/firejail/default.profile

net none
nosound
no3d
shell none
tracelog

blacklist /tmp/.X11-unix

private-dev
