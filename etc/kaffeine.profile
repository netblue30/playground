# Firejail profile for kaffeine
# Description: Versatile media player for KDE
# This file is overwritten after every install/update
# Persistent local customizations
include kaffeine.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/kaffeinerc
noblacklist ${HOME}/.kde/share/apps/kaffeine
noblacklist ${HOME}/.kde/share/config/kaffeinerc
noblacklist ${HOME}/.kde4/share/apps/kaffeine
noblacklist ${HOME}/.kde4/share/config/kaffeinerc
noblacklist ${HOME}/.local/share/kaffeine
noblacklist ${MUSIC}
noblacklist ${VIDEOS}

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none

# private-bin kaffeine
private-dev
#private-etc Trolltech.conf,X11,alsa,alternatives,asound.conf,bumblebee,ca-certificates,crypto-policies,dbus-1,drirc,fonts,glvnd,hosts,host.conf,hostname,kde4rc,kde5rc,ld.so.cache,ld.so.preload,ld.so.conf,ld.so.conf.d,locale,locale.alias,locale.conf,localtime,machine-id,mime.types,nsswitch.conf,pango,passwd,pki,protocols,pulse,resolv.conf,rpc,services,ssl,xdg
private-tmp

