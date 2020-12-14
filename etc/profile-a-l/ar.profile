# Firejail profile for ar
# Description: Create, modify, and extract from archives
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include ar.local
# Persistent global definitions
include globals.local

include archiver-common.inc

private-bin ar
