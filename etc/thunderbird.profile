# Firejail profile for thunderbird
# Description: Email, RSS and newsgroup client with integrated spam filter
# This file is overwritten after every install/update
# Persistent local customizations
include thunderbird.local
# Persistent global definitions
include globals.local

# Allow enigmail by default
ignore nodbus
writable-run-user

# If you want to read local mail stored in /var/mail, add the following to thunderbird.local:
# noblacklist /var/mail
# noblacklist /var/spool/mail
# TODO: we have whitelist-var-common.inc sure that here is no whitelsit requiered
# writable-var

# Allow Firefox
#noblacklist ${HOME}/.cache/mozilla
#noblacklist ${HOME}/.mozilla
#whitelist ${HOME}/.cache/mozilla/firefox
#whitelist ${HOME}/.mozilla
#seccomp !chroot
#ignore tracelog

# TODO: allow chromium

noblacklist ${HOME}/.pki
noblacklist ${HOME}/.local/share/pki
noblacklist ${HOME}/.cache/thunderbird
noblacklist ${HOME}/.gnupg
# noblacklist ${HOME}/.icedove
noblacklist ${HOME}/.thunderbird

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

# If you have setup Thunderbird to archive emails to a local folder,
# make sure you add the path to that folder to the mkdir and whitelist
# rules below. Otherwise they will be deleted when you close Thunderbird.
# See https://github.com/netblue30/firejail/issues/2357
mkdir ${HOME}/.pki
mkdir ${HOME}/.local/share/pki
mkdir ${HOME}/.cache/thunderbird
mkdir ${HOME}/.gnupg
# mkdir ${HOME}/.icedove
mkdir ${HOME}/.thunderbird
whitelist ${DOWNLOADS}
whitelist ${HOME}/.pki
whitelist ${HOME}/.local/share/pki
whitelist ${HOME}/.cache/thunderbird
whitelist ${HOME}/.gnupg
# whitelist ${HOME}/.icedove
whitelist ${HOME}/.thunderbird
include whitelist-common.inc

include whitelist-var-common.inc

whitelist /usr/share/gnupg
whitelist /usr/share/mozilla
include whitelist-usr-share-common.inc

apparmor
caps.drop all
# machine-id breaks audio in browsers; enable or put it in your thunderbird.local when sound is not required
#machine-id
netfilter
nodbus
nodvd
nogroups
nonewprivs
noroot
notv
?BROWSER_DISABLE_U2F: nou2f
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
# private-bin
private-cache
private-dev
# private-etc
# We need the real /tmp for data exchange when xdg-open handles email attachments on KDE
#private-tmp

read-only ${HOME}/.config/mimeapps.list
