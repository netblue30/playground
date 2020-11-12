# Firejail profile for gtk-straw-viewer
# Description: Gtk front-end to straw-viewer
# This file is overwritten after every install/update
# Persistent local customizations
include gtk-straw-viewer.local
# Persistent global definitions
# include globals.local

ignore quiet

noblacklist /tmp/.X11-unix
noblacklist ${RUNUSER}/wayland-*
noblacklist ${RUNUSER}

include whitelist-runuser-common.inc

# Redirect
include straw-viewer.profile
