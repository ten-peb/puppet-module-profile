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

  include tenna::deps::nodejs
  include tenna::deps::npm
  include tenna::users::kellyh
  include tenna::users::adityas
  
  
}
