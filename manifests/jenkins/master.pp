# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::jenkins::master
class profile::jenkins::master {


  class{'java':
    package=>'openjdk-8-jdk'
  }
  
  class{'jenkins':
    require => Class['java']
  }

  class{'docker':
    require => Package['jenkins']
  }
  class{'docker::machine':
    require=> Package['jenkins']
  }

  class{'docker::compose':
    require => Package['jenkins']
  }
  file{'/usr/local/bin/install_plugin.sh':
    ensure  => present,
    content => template('tenna/jenkins/install_plugin.sh.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0755'
  }
  file{'/usr/local/bin/jenkins-support':
    ensure  => present,
    content => template('tenna/jenkins/jenkins-support.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0755'
  }
}
