#!/bin/bash

MIME_PACKAGES=".local/share/mime/packages"
GTKSOURCEVIEW=".local/share/gtksourceview-4"

#
# This is the installation file for Oberon-7 syntax highlighting
# for Gedit.
#
# See: git clone git@github.com:rsdoiel/gedit-oberon
#

function uninstall_file() {
	DNAME="${1}"
	FNAME="${2}"
	if [[ -f "${DNAME}/${FNAME}" ]]; then
		rm "${DNAME}/${FNAME}"
	fi
}

uninstall_file "${HOME}/${MIME_PACKAGES}" overrides.xml 
uninstall_file "${HOME}/${GTKSOURCEVIEW}/language-specs" oberon-7.lang 
uninstall_file "${HOME}/${GTKSOURCEVIEW}/styles" socal.xml
