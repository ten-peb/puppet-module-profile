# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::base::deb
class profile::base::deb {
  include apt
  package{'awscli':
    ensure => present
  }
}
