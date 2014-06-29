# == Class: bacula::packages::client
#
# Basic class to manage the package installation of the bacula client (bacula-fd / FileDaemon)
#
# Note: Unless otherwise noticed, it is recommended to use hiera for configuration
#
# === Parameters
#
# [*package_name*]
#   Name of the bacula client package (default: bacula-client)
#
#   <tt>bacula::packages::client::package_name: bacula-client</tt>
#
# [*package_ensure*]
#   Package version to install (default: installed)
#
#   <tt>bacula::packages::client::package_ensure: 5.2.13-1.el6</tt>
#
# === Variables
#
# === Examples
#
#  class { 'bacula::packages::client':
#      package_name   => 'bacula-client',
#      package_ensure => 'installed',
#  }
#
# === Copyright
#
# This Code is part of puppet-bacula (https://github.com/lobeck/puppet-bacula)
# See LICENSE.md
#
class bacula::packages::client ($package_name='bacula-client', $package_ensure='installed') {

    package { 'bacula-client':
        ensure => $package_ensure,
        name   => $package_name,
    }

}

#:vim set ts=4 et
