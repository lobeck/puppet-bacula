# == Class: bacula::packages::console
#
# Basic class to manage the package installation of the bacula console
#
# This class is for internal use, but feel free to use it.
#
# Note: Unless otherwise noticed, it is recommended to use hiera for configuration
#
# === Parameters
#
# [*package_name*]
#   Name of the bacula console package.
#
#   <tt>bacula::packages::console::package_name: bacula-console</tt>
#
# [*package_ensure*]
#   Package version to install (default: $::bacula::packages::director::package_ensure)
#
#   <tt>bacula::packages::console::package_ensure: 5.2.13-1.el6</tt>
#
# === Variables
#
# === Examples
#
# Just include the class and configure everything in hiera:
#
#   include bacula::packages::console
#
# Additonally you can call the class manually:
#
#   class { 'bacula::packages::console':
#     package_name   => 'bacula-console',
#     package_ensure => 'installed',
#   }
#
# === Copyright
#
# This Code is part of puppet-bacula (https://github.com/lobeck/puppet-bacula)
# See LICENSE.md
#
class bacula::packages::console ($package_name='bacula-console', $package_ensure = $::bacula::packages::director::package_ensure) {

    include bacula::packages::client

    package { 'bacula-console':
        ensure => $package_ensure,
        name   => $package_name,
    }

}
