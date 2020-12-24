#!/bin/bash

# Defaults, works on Ubuntu 20.04 LTS
MIME_PACKAGES=".local/share/mime/packages"
GTKSOURCEVIEW=".local/share/gtksourceview-4"
LSB_RELEASE=$(which lsb_release)
if [ "${LSB_RELEASE}" ]; then
   DIST_ID=$("${LSB_RELEASE}" --id |cut -d : -f 2 | sed -E 's/\t|\ //g')
   if [ "${DIST_ID}" = "Raspbian" ]; then
       GTKSOURCEVIEW=".local/share/gtksourceview-3"
   fi
fi

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
install_file "${HOME}/${GTKSOURCEVIEW}/language-specs" oberon.lang 
#install_file "${HOME}/${GTKSOURCEVIEW}/styles" socal.xml

