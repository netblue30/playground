# Firejail profile for imagej
# Description: Image processing program with a focus on microscopy images
# This file is overwritten after every install/update
# Persistent local customizations
include imagej.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.imagej

# Allow access to java
include allow-java.inc

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
ipc-namespace
net none
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none

private-bin imagej,bash,grep,sort,tail,tr,cut,whoami,hostname,uname,mkdir,ls,touch,free,awk,update-java-alternatives,basename,xprop,rm,ln
private-dev
private-tmp

