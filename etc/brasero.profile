# Firejail profile for brasero
# Description: CD/DVD burning application for GNOME
# This file is overwritten after every install/update
# Persistent local customizations
include brasero.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/brasero

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
net none
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix
seccomp
shell none
tracelog

# private-bin brasero
private-cache
# private-dev
#private-etc X11,alternatives,bumblebee,dbus-1,dconf,drirc,fonts,gconf,glvnd,gtk-2.0,gtk-3.0,ld.so.cache,ld.so.preload,ld.so.conf,ld.so.conf.d,locale,locale.alias,locale.conf,localtime,machine-id,mime.types,pango,passwd,xdg
# private-tmp
