# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::base
class profile::base {
  case $::osfamily  {
    'Debian' : {
      include profile::base::deb
    }
    default : {
      notify { 'osfamily message':
        message => "tell that lazy Puppet guy to support your OS (${::osfamily}})"
      }
    }
  }
}
