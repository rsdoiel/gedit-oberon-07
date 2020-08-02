#!/bin/bash

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

install_file "${HOME}/.local/share/mime/packages" overrides.xml 
install_file "${HOME}/.local/share/gtksourceview-4/language-specs" oberon-7.lang 
install_file "${HOME}/.local/share/gtksourceview-4/styles" oberon-7-colors.xml
