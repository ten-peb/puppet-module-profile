# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::docker::host
class profile::docker::host {
  include docker
  include docker::machine 
}
