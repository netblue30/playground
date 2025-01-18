# Firejail profile for device-flasher.linux
# Description: CalyxOS' device flasher
# This file is overwritten after every install/update

# Usage: run firejail ./device-flasher.linux in the folder with it and your factory image.

# Warning!
# ADB does not work under this sandbox, this is not a problem however, it just means you need to
# reboot the device into bootloader mode first. To do this, hold Volume Down + Power until you get
# into a screen with an Android robot being repaired. You'll need OEM Unlocking beforehand.

# Fedora: you may need to manually install a third-party resource for udev rules, as Fedora ships broken ones on android-tools.

quiet
include device-flasher.linux.local
# Persistent local customizations
include globals.local
# Persistent global definitions

ignore noexec ${HOME}

include allow-bin-sh.inc

blacklist /opt
blacklist /srv
blacklist ${RUNUSER}
blacklist /usr/libexec

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-proc.inc
include disable-programs.inc
include disable-shell.inc
include disable-x11.inc
include disable-xdg.inc

whitelist ${DOWNLOADS}
# The Downloads folder is the only folder available to the flasher, use it or manually whitelist another.
# Preferably use a sub-folder such as Downloads/CalyxOS/ to prevent issues.

include whitelist-run-common.inc
include whitelist-runuser-common.inc
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

include landlock-common.inc

apparmor
caps.drop all
ipc-namespace
machine-id
netfilter
no3d
nodvd
nogroups
noinput
nonewprivs
noprinters
noroot
nosound
notpm
notv
nou2f
novideo
protocol inet,inet6
seccomp
seccomp.block-secondary

disable-mnt
private-bin bash,cut,grep,ls,sed,sh,sleep,which
private-cache
private-etc alternatives,ca-certificates,crypto-policies,host.conf,hostname,hosts,ld.so.cache,ld.so.conf,ld.so.conf.d,ld.so.preload,locale,locale.alias,locale.conf,localtime,mime.types,nsswitch.conf,pki,protocols,resolv.conf,rpc,services,ssl,xdg
private-tmp

dbus-system none
dbus-user none

deterministic-shutdown
memory-deny-write-execute
restrict-namespaces
