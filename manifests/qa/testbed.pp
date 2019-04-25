# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::qa::testbed
class profile::qa::testbed {
  include profile::jenkins::master
  include docker
  include docker::machine
  include docker::compose

  class {'apache':
  }

  $server_name = $::ipaddress
  
  file {'/etc/apache2/sites-available':
    ensure  => present,
    content => template('profile/jenkins/apache-default-vhost.conf.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => Class['apache']
  }
  include tenna::deps::nodejs
  include tenna::deps::npn
    
  
}
