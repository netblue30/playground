#!/bin/bash
# This file is part of Firejail project
# Copyright (C) 2014-2021 Firejail Authors
# License GPL v2

export MALLOC_CHECK_=3
export MALLOC_PERTURB_=$(($RANDOM % 255 + 1))
export LC_ALL=C

echo "TESTING: profile comments (test/profiles/profilecomment.exp)"
./profile_comment.exp

echo "TESTING: profile conditional (test/profiles/conditional.exp)"
./conditional.exp

echo "TESTING: profile recursivity (test/profiles/profile_recursivity.exp)"
./profile_recursivity.exp

echo "TESTING: profile application name (test/profiles/profile_appname.exp)"
./profile_appname.exp

echo "TESTING: profile syntax (test/profiles/profile_syntax.exp)"
./profile_syntax.exp

echo "TESTING: profile syntax 2 (test/profiles/profile_syntax2.exp)"
./profile_syntax2.exp

echo "TESTING: ignore command (test/profiles/ignore.exp)"
./ignore.exp

echo "TESTING: profile read-only (test/profiles/profile_readonly.exp)"
./profile_readonly.exp

echo "TESTING: profile read-only links (test/profiles/profile_readonly.exp)"
./profile_followlnk.exp

echo "TESTING: profile no permissions (test/profiles/profile_noperm.exp)"
./profile_noperm.exp

# GitHub CI doesn't have a /run/user/$UID directory. Using it to test a small number of profiles.
UID=`id -u`
if [ -d "/run/user/$UID" ]; then
	PROFILES=`ls /etc/firejail/*.profile`
	echo "TESTING: default profiles installed in /etc"
else
	PROFILES=`ls /etc/firejail/transmission*.profile /etc/firejail/fi*.profile /etc/firejail/fl*.profile /etc/firejail/free*.profile`
	echo "TESTING: small number of default profiles installed in /etc"
fi

for PROFILE in $PROFILES
do
	echo "TESTING: $PROFILE"
	./test-profile.exp $PROFILE
done
