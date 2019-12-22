# Firejail profile for gnome-recipes
# Description: Recipe application for GNOME
# This file is overwritten after every install/update
# Persistent local customizations
include gnome-recipes.local
# Persistent global definitions
include globals.local


noblacklist ${HOME}/.cache/gnome-recipes
noblacklist ${HOME}/.local/share/gnome-recipes

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.cache/gnome-recipes
mkdir ${HOME}/.local/share/gnome-recipes
whitelist ${HOME}/.cache/gnome-recipes
whitelist ${HOME}/.local/share/gnome-recipes
whitelist /usr/share/gnome-recipes
include whitelist-common.inc
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

caps.drop all
ipc-namespace
machine-id
netfilter
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none

disable-mnt
private-bin gnome-recipes,tar
private-dev
private-etc X11,alternatives,bumblebee,ca-certificates,crypto-policies,dbus-1,dconf,drirc,fonts,gconf,glvnd,gtk-2.0,gtk-3.0,hosts,host.conf,hostname,ld.so.cache,ld.so.preload,ld.so.conf,ld.so.conf.d,locale,locale.alias,locale.conf,localtime,machine-id,mime.types,nsswitch.conf,pango,passwd,pki,protocols,resolv.conf,rpc,services,ssl,xdg
private-lib gdk-pixbuf-2.0,gio,gvfs/libgvfscommon.so,libgconf-2.so.*,libgnutls.so.*,libjpeg.so.*,libp11-kit.so.*,libproxy.so.*,librsvg-2.so.*
private-tmp

