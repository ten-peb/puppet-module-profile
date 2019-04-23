# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::jenkins::master
class profile::jenkins::master {
  include tenna::users::peter
  include tenna::users::jenkins

  class{'java':
    distribution=>'jdk8'
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
  
}
