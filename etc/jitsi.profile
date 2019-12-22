# Firejail profile for jitsi
# This file is overwritten after every install/update
# Persistent local customizations
include jitsi.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.jitsi

# Allow java (blacklisted by disable-devel.inc)
include allow-java.inc

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
private-cache
#private-etc Trolltech.conf,X11,alsa,alternatives,asound.conf,bumblebee,ca-certificates,crypto-policies,dbus-1,dconf,drirc,fonts,gconf,glvnd,gtk-2.0,gtk-3.0,hosts,host.conf,hostname,ld.so.cache,ld.so.preload,ld.so.conf,ld.so.conf.d,locale,locale.alias,locale.conf,localtime,machine-id,mime.types,nsswitch.conf,pango,passwd,pki,protocols,pulse,resolv.conf,rpc,services,ssl,xdg
private-tmp
