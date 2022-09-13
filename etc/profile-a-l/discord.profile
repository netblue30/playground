# Firejail profile for discord
# This file is overwritten after every install/update
# Persistent local customizations
include discord.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/discord

mkdir ${HOME}/.config/discord
whitelist ${HOME}/.config/discord

private-bin discord,Discord
private-opt discord,Discord

# Redirect
include discord-common.profile
