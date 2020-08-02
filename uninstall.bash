#!/bin/bash

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

uninstall_file "${HOME}/.local/share/gtksourceview-4/language-specs" oberon-7.lang 
uninstall_file "${HOME}/.local/share/mime/packages" overrides.xml 
uninstall_file "${HOME}/.local/share/gtksourceview-4/styles" oberon-7-colors.xml
