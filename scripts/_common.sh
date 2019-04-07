#
# Common variables
#
APPNAME="freshrss"
# FreshRSS version
VERSION="1.14.1"

# FreshRSS complete tarball checksum
FRESHRSS_SOURCE_SHA256="fd5ce6906021282e12cd6346844d21b82b70ac12d08834079a46b8722bfb0cce"

# Remote URL to fetch FreshRSS source tarball
FRESHRSS_SOURCE_URL="https://github.com/FreshRSS/FreshRSS/archive/${VERSION}.tar.gz"

PKGDIR=$(cd ../; pwd)

if [ "$(lsb_release --codename --short)" == "jessie" ]; then
	pkg_dependencies="php5-gd"
else
	pkg_dependencies="php-gd php-zip php-dom php-mbstring"
fi

#
# Common helpers
#
# Download and extract FreshRSS sources to the given directory
# usage: extract_freshrss DESTDIR
extract_freshrss() {
  local DESTDIR=$1

  # retrieve and extract FreshRSS tarball
  rc_tarball="${DESTDIR}/freshrss.tar.gz"
  wget -q -O "$rc_tarball" "$FRESHRSS_SOURCE_URL" \
    || ynh_die "Unable to download FreshRSS tarball"
  echo "$FRESHRSS_SOURCE_SHA256 $rc_tarball" | sha256sum -c >/dev/null \
    || ynh_die "Invalid checksum of downloaded tarball"
  tar xf "$rc_tarball" -C "$DESTDIR" --strip-components 1 \
    || ynh_die "Unable to extract FreshRss tarball"
  sudo rm "$rc_tarball"
}

install_freshrss_dependencies() {
    ynh_install_app_dependencies $pkg_dependencies
}
