#!/bin/bash
##proc/deps: We want to install the dependencies
##@copyright GPL-2.0+
abrequire pm

# FIXME: The flat stuff gets stupid with 'foo | bar' packs. Guess why.
if bool $ABBUILDDEPONLY; then
	if ! bool $VER_NONE; then
		abdie "ABBUILDDEPONLY must be used with VER_NONE=1 (dependency version-agnostic). Aborting."
	fi
	FLATDEP="$(pm_deflat $BUILDDEP)"
else
	FLATDEP="$(pm_deflat $PKGDEP $BUILDDEP $PKGPRDEP $TESTDEP)"
fi

if ! pm_exists $FLATDEP; then
	abinfo "Build or runtime dependencies not satisfied, now fetching needed packages."
	pm_repoupdate
	pm_repoinstall $FLATDEP || abdie "Cannot install needed dependencies."
fi
unset FLATDEP
