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
# EXPERIMENTAL HELPERS
#=================================================

# Create a dedicated fail2ban config (jail and filter conf files)
#
# usage: ynh_add_fail2ban_config log_file filter [max_retry [ports]]
# | arg: log_file - Log file to be checked by fail2ban
# | arg: failregex - Failregex to be looked for by fail2ban
# | arg: max_retry - Maximum number of retries allowed before banning IP address - default: 3
# | arg: ports - Ports blocked for a banned IP address - default: http,https
ynh_add_fail2ban_config_temp () {
   # Process parameters
   logpath=$1
   failregex=$2
   max_retry=${3:-3}
   ports=${4:-http,https}
   
  test -n "$logpath" || ynh_die "ynh_add_fail2ban_config expects a logfile path as first argument and received nothing."
  test -n "$failregex" || ynh_die "ynh_add_fail2ban_config expects a failure regex as second argument and received nothing."
  
  finalfail2banjailconf="/etc/fail2ban/jail.d/$app.conf"
  finalfail2banfilterconf="/etc/fail2ban/filter.d/$app.conf"
  ynh_backup_if_checksum_is_different "$finalfail2banjailconf" 1
  ynh_backup_if_checksum_is_different "$finalfail2banfilterconf" 1
  
  sudo tee $finalfail2banjailconf <<EOF
[$app]
enabled = true
port = $ports
filter = $app
logpath = $logpath
maxretry = $max_retry
EOF

  sudo tee $finalfail2banfilterconf <<EOF
[INCLUDES]
before = common.conf
[Definition]
failregex = $failregex
ignoreregex =
EOF

  ynh_store_file_checksum "$finalfail2banjailconf"
  ynh_store_file_checksum "$finalfail2banfilterconf"
  
  service fail2ban restart
  local fail2ban_error="$(journalctl -u fail2ban | tail -n50 | grep "WARNING.*$app.*")"
  if [ -n "$fail2ban_error" ]
  then
    echo "[ERR] Fail2ban failed to load the jail for $app" >&2
    echo "WARNING${fail2ban_error#*WARNING}" >&2
  fi
}

# Remove the dedicated fail2ban config (jail and filter conf files)
#
# usage: ynh_remove_fail2ban_config
ynh_remove_fail2ban_config () {
  ynh_secure_remove "/etc/fail2ban/jail.d/$app.conf"
  ynh_secure_remove "/etc/fail2ban/filter.d/$app.conf"
  sudo systemctl restart fail2ban
}

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
