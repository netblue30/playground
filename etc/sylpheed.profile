# Firejail profile for sylpheed
# Description: Light weight e-mail client with GTK+
# This file is overwritten after every install/update
# Persistent local customizations
include sylpheed.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.sylpheed-2.0

mkdir ${HOME}/.sylpheed-2.0
whitelist ${HOME}/.sylpheed-2.0

whitelist /usr/share/sylpheed

# Redirect
include email-common.profile
