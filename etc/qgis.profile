# Firejail profile for qgis
# Description: GIS application
# This file is overwritten after every install/update
# Persistent local customizations
include qgis.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/QGIS
noblacklist ${HOME}/.local/share/QGIS
noblacklist ${HOME}/.qgis2
noblacklist ${DOCUMENTS}

# Allow python (blacklisted by disable-interpreters.inc)
include allow-python3.inc

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/.local/share/QGIS
mkdir ${HOME}/.qgis2
mkdir ${HOME}/.config/QGIS
whitelist ${HOME}/.local/share/QGIS
whitelist ${HOME}/.qgis2
whitelist ${HOME}/.config/QGIS
whitelist ${DOCUMENTS}
include whitelist-common.inc
include whitelist-var-common.inc

caps.drop all
netfilter
machine-id
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
# blacklisting of mbind system calls breaks old version
seccomp !mbind
protocol unix,inet,inet6,netlink
shell none
tracelog

disable-mnt
private-cache
private-dev
private-etc Trolltech.conf,X11,alternatives,bumblebee,ca-certificates,crypto-policies,dconf,drirc,fonts,gconf,glvnd,gtk-2.0,gtk-3.0,hosts,host.conf,hostname,ld.so.cache,ld.so.preload,ld.so.conf,ld.so.conf.d,locale,locale.alias,locale.conf,localtime,mime.types,nsswitch.conf,pango,passwd,pki,protocols,resolv.conf,rpc,services,ssl,xdg
private-tmp
