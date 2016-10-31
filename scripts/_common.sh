#
# Common variables
#

# FreshRSS version
VERSION="1.6.0"

# FreshRSS complete tarball checksum
FRESHRSS_SOURCE_SHA256="358f2789a9459cd91cc3348c8e3f4c18cbd1c64d8635f6719cca8e9ddde46e7a"

# Remote URL to fetch FreshRSS source tarball
FRESHRSS_SOURCE_URL="https://github.com/FreshRSS/FreshRSS/archive/1.6.0.tar.gz"

PKGDIR=$(cd ../; pwd)

FINAL_PATH="/var/www/freshrss"
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
  rm "$rc_tarball"
}
