#
# Common variables
#

# FreshRss version
VERSION="1.5.0"

# Roundcube complete tarball checksum
FRESHRSS_SOURCE_SHA256="72c3dcb3e58f4cf7d7e6a06ffec0cad8540ee5aeee9024e785b56e8d55656746"

# Remote URL to fetch Roundcube source tarball
FRESHRSS_SOURCE_URL="https://github.com/FreshRSS/FreshRSS/archive/1.5.0.tar.gz"

PKGDIR=$(cd ../; pwd)

FINAL_PATH="/var/www/freshrss"
#
# Common helpers
#
# Download and extract FreshRss sources to the given directory
# usage: extract_freshrss DESTDIR
extract_freshrss() {
  local DESTDIR=$1

  # retrieve and extract FreshRss tarball
  rc_tarball="${DESTDIR}/freshrss.tar.gz"
  wget -q -O "$rc_tarball" "$FRESHRSS_SOURCE_URL" \
    || ynh_die "Unable to download FreshRss tarball"
  echo "$FRESHRSS_SOURCE_SHA256 $rc_tarball" | sha256sum -c >/dev/null \
    || ynh_die "Invalid checksum of downloaded tarball"
  tar xf "$rc_tarball" -C "$DESTDIR" --strip-components 1 \
    || ynh_die "Unable to extract FreshRss tarball"
  rm "$rc_tarball"
}
