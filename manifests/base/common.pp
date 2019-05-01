# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::base::common
class profile::base::common {
  include ntp

  service {'puppet':
    ensure => running,
    enable => true
  }
  class {'timezone':
    timezone => 'EST5EDT'
  }
}
