#!/bin/bash
##30-path_issues: Check for incorrectly installed paths.
##@copyright GPL-2.0+

for i in bin sbin lib lib64 run usr/sbin usr/lib64 \
         usr/local usr/man usr/doc usr/etc usr/var; do
	[ -e "$PKGDIR"/${i} ] && \
		abdie "QA: Found \$PKGDIR/$i."
done