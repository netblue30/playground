# Firejail profile for start-tor-browser
# This file is overwritten after every install/update
# Persistent local customizations
include start-tor-browser.local
# Persistent global definitions
include globals.local

private-etc Trolltech.conf,X11,alsa,alternatives,asound.conf,bumblebee,ca-certificates,crypto-policies,dconf,drirc,fonts,gconf,glvnd,gtk-2.0,gtk-3.0,hosts,host.conf,hostname,ld.so.cache,ld.so.preload,ld.so.conf,ld.so.conf.d,locale,locale.alias,locale.conf,localtime,machine-id,mime.types,nsswitch.conf,pango,passwd,pki,protocols,pulse,resolv.conf,rpc,services,ssl,xdg
ignore noexec ${HOME}

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
nodbus
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp !chroot
shell none
# tracelog may cause issues, see github issue #1930
#tracelog

disable-mnt
private-bin bash,cat,cp,cut,dirname,env,getconf,gpg,grep,gxmessage,id,kdialog,ln,mkdir,pwd,readlink,realpath,rm,sed,sh,tail,test,update-desktop-database,xmessage,zenity
private-dev
private-tmp
