# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::jenkins::master
class profile::jenkins::master {
  include tenna::users::peter
  include tenna::users::jenkins

  file{'/etc/apt/sources.list.d/jenkins.list':
    ensure  => present,
    content => template('profile/jenkins/jenkins.list.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }
  exec{'refresh aptcache for jenkins':
    command => 'apt-cache update',
    path    => '/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin',
    require => File['/etc/apt/sources.list.d/jenkins.list'],
  }
  package{'jenkins':
    ensure  => latest,
    require => Exec['refresh aptcache for jenkins'],
    notify  => Service['jenkins']
  }

  service{'jenkins':
    ensure  => running,
    enable  => true,
    require => Package['jenkins']
  }
}
