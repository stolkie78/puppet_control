# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::packages
class profile::packages {
  $::packages.each |String $package| {
    package { $package:
      ensure => present,
    }
  }
}
