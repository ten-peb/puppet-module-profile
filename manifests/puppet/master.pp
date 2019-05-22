# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::puppet::master
class profile::puppet::master {
  package{'puppetserver':
    ensure => latest
  }

  include puppetdb
  include puppetdb::master::config
  
  service{'puppetserver':
    ensure => running,
    enable => true
  }

}
