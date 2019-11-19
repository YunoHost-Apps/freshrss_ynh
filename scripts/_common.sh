#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

if [ "$(lsb_release --codename --short)" == "jessie" ]; then
	pkg_dependencies="php5-gd"
else
	pkg_dependencies="php-gd php-zip php-dom php-mbstring php-gmp php-sqlite3 php-curl php-intl php-xml"
fi

#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
