#!/bin/bash
##pax: functions to set pax flags
##@copyright GPL-2.0+

# abpaxctl flags files

abpaxctl(){
	local paxflags
	echo "if [ -x /usr/bin/paxctl-ng ]; then"
	paxflags="$1"
	shift
	for i
	do
		echo "	/usr/bin/paxctl-ng -v -$paxflags \"$i\""
	done
	echo "fi"
}

if [ -e autobuild/pax ]
then
	echo '# pax' >> abscripts/postinst
	. autobuild/pax
fi

unset -f abpaxctl
