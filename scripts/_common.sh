#
# Common variables
#
APPNAME="freshrss"
# FreshRSS version
VERSION="1.11.0"

# FreshRSS complete tarball checksum
FRESHRSS_SOURCE_SHA256="1915f09b45654291d1a42574770cc680ea4edf87d1278cb9cd007c0d942d77cc"

# Remote URL to fetch FreshRSS source tarball
FRESHRSS_SOURCE_URL="https://github.com/FreshRSS/FreshRSS/archive/1.11.0.tar.gz"

PKGDIR=$(cd ../; pwd)

#apt dependencies
DEPS_PKG_NAME="freshrss-deps"

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
    ynh_install_app_dependencies php-cli php-gmp
}
