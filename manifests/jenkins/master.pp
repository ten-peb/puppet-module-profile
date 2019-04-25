# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::jenkins::master
class profile::jenkins::master {
  include tenna::users::peter


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
}
