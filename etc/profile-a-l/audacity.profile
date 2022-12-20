# Firejail profile for audacity
# Description: Fast, cross-platform audio editor
# This file is overwritten after every install/update
# Persistent local customizations
include audacity.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.audacity-data
noblacklist ${DOCUMENTS}
noblacklist ${MUSIC}

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-programs.inc
include disable-shell.inc
include disable-xdg.inc

include whitelist-var-common.inc

# Silence blacklist violation. See #5539.
allow-debuggers
## Enabling App Armor appears to break some Fedora / Arch installs
#apparmor
caps.drop all
# Add the below lines to your audacity.local if you need online plugins.
#ignore net none
#netfilter
#protocol inet,inet6
net none
no3d
nodvd
nogroups
noinput
nonewprivs
noroot
notv
nou2f
novideo
protocol unix
seccomp
tracelog

private-bin audacity
private-dev
private-tmp

# problems on Fedora 27
# dbus-user none
# dbus-system none

restrict-namespaces
