# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::developer::puppet
class profile::developer::puppet inherits profile::developer {
  package{'pdk':
    ensure => latest
  }
  package{'ruby':
    ensure => latest
  }
  package{'ruby-dev':
    ensure => latest
  }
  package{'bundler':
    ensure => latest,
    provider => 'gem'
  }
  package{'ruby-bundler':
    ensure => latest
  }
  
}
