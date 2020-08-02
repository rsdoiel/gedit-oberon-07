#!/bin/bash

MIME_PACKAGES=".local/share/mime/packages"
GTKSOURCEVIEW=".local/share/gtksourceview-4"

#
# This is the installation file for Oberon-7 syntax highlighting
# for Gedit.
#
# See: git clone git@github.com:rsdoiel/gedit-oberon
#

function install_file() {
	DNAME="${1}"
	FNAME="${2}"
	if [[ ! -d "${DNAME}" ]]; then
		mkdir -p "${DNAME}"
	fi
	if [[ ! -f "${DNAME}/${FNAME}" ]]; then
		cp -v "${FNAME}" "${DNAME}/"
	else
		echo "WARNING: ${DNAME}/${FNAME} already exists, skipping"
	fi
}

install_file "${HOME}/${MIME_PACKAGES}" overrides.xml 
install_file "${HOME}/${GTKSOURCEVIEW}/language-specs" oberon-7.lang 
# This is Mike Spicy's color file
install_file "${HOME}/${GTKSOURCEVIEW}/styles" sober.xml

