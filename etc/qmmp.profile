# Firejail profile for qmmp
# Description: Feature-rich audio player with support of many formats
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/qmmp.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.qmmp
noblacklist ${MUSIC}

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-xdg.inc

caps.drop all
netfilter
# no3d
nodbus
nogroups
nonewprivs
noroot
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none
tracelog

private-bin qmmp,tar,unzip,bzip2,gzip
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
