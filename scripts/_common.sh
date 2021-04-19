#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

pkg_dependencies="acl"

YNH_PHP_VERSION="7.3"

extra_php_dependencies="php${YNH_PHP_VERSION}-gd php${YNH_PHP_VERSION}-zip php${YNH_PHP_VERSION}-dom php${YNH_PHP_VERSION}-mbstring php${YNH_PHP_VERSION}-gmp php${YNH_PHP_VERSION}-mysql php${YNH_PHP_VERSION}-sqlite3 php${YNH_PHP_VERSION}-curl php${YNH_PHP_VERSION}-intl php${YNH_PHP_VERSION}-xml"

#=================================================
# PERSONAL HELPERS
#=================================================

function set_permissions {
	chown -R root:$app $final_path
	chmod -R g=u,g-w,o-rwx $final_path
	chown -R $app:$app $final_path/{data,extensions}
	setfacl -n -R -m u:www-data:rx -m d:u:www-data:rx $final_path
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
